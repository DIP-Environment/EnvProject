select article_no, 
	       article_title, 
	       article_content, 
	       member_id, 
	       article_regdate, 
	       article_moddate, 
	       article_link
	  from (select rownum rn, 
	               article_no, 
	               article_title, 
	               article_content, 
	               member_id, 
	               article_regdate, 
	               article_moddate,
	               article_link
			  from tbl_article
			 where bbs_type = 'tip')

			 select article_no,		    
	       article_title, 
	       article_content, 
	       article_link,
	       article_regdate, 
	       article_moddate,
  		   member_id
	  from (select rownum rn, 
	               article_no,	               
	               article_title, 
	               article_content, 
	               article_link,
	               article_regdate, 
	               article_moddate,
	               member_id	               
			  from tbl_article
			 where bbs_type = 'say' 
	        order by article_no desc
	)
	where rn > (2 -1) * 13 and rn <= 1 * 6

	select * from tbl_article where bbs_type = 'say'order by article_no desc
	
select article_no, article_title, article_content, article_link, article_regdate, article_moddate, member_id 
from (select rownum rn, article_no, article_title, article_content, article_link, article_regdate, article_moddate, member_id 
from tbl_article 
where bbs_type = 'say'  order by article_no desc  )
where rownum <= 2 * 6 and rn > (2 -1) * 6 

 검색 데이터의 개수 처리
 <sql id="criteria">
 	<trim prefix="(" suffix=") AND " prefixOverrides="OR" >
		<foreach item='type' collection="typeArr">
			<trim prefix="OR">
				<choose>
					<when test="type == 'T'.toString()">
						article_title like '%' ||#{keyword}||'%'
					</when>
					<when test="type == 'C'.toString()">
						article_content like '%' ||#{keyword}||'%'
					</when>
				</choose>
			</trim>
		</foreach>
	</trim>
 </sql>
 
 <select id="tip_getListWithPaging" resultType="org.zerock.domain.BoardVO" resultMap="clobToStr">
	<![CDATA[
	select article_no, article_title, article_content, member_id, article_regdate, article_moddate
	from (select /*+INDEX_DESC(tip_article_notice pk_tip) */
			rownum rn, article_no, article_title, article_content, member_id, article_regdate, article_moddate
			from tip_article_notice
			where 
	]]>
	
	<include refid="criteria"></include>
	
	<![CDATA[rownum <= #{pageNum} * #{amount})
	where rn > (#{pageNum} -1) * #{amount}
	]]>
</select>

