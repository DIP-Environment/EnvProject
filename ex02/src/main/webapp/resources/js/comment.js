/**
 *  간단히 동작하는 코드만을 넣어서 확인하는 용도로 사용
 */

console.log("comment Module....");

var commentService = (function(){
	
	function add(comment_content, callback, error) {
		console.log("comment..................");
		
		$.ajax({
			type : 'post',
			url  : '/comm/new',
			data : JSON.stringify(comment_content),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}
	
	/* param이라는 객체를 통하여 필요한 파라미터를 전달받아 JSON 목록을 호출 */
	function getList(param, callback, error) {
		var article_no = param.article_no;
		var page = param.page || 1;
		
		$.getJSON("/comm/pages/" + article_no + "/" + page + ".json",
				function(data) {
					if (callback) {
						callback(data);
					}
				}).fail(function(xhr, status, err) {
					if(error) {
						error();
					}
				});
	}
	
	function remove(comment_no, callback, error) {
		$.ajax({
			type : 'delete',
			url  : '/comm/' + comment_no,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if(error) {
					error(er);
				}
			}
		});
	}
	
	function update(comment, callback, error) {
		console.log("Comment_no : " + comment.comment_no);
		
		$.ajax({
			type : 'put',
			url : '/comm/' + comment.comment_no,
			data : JSON.stringify(comment),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
				
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		
		});
	}
	
	function get(comment_no, callback, error) {
		$.get("/comm/" + comment_no + ".json", function(result) {
			if(callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if(error) {
				error();
			}
		});
	}
	
	function displayTime(timeValue) {
		var today = new Date();
		var gap = today.getTime() - timeValue;
		
		var dateObj = new Date(timeValue);
		var str="";
		
		if (gap < (1000*60*60*24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
			
			return [yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd].join('');
		}
	}
	
	return {
		add:add,
		getList : getList,
		remove : remove,
		update : update,
		get : get,
		displayTime : displayTime
		};
})();