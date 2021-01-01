function getUserFromServer() {
	$.get("./users", function(data, status){
		console.log(data);		
		createUserTable(data);
	});
}

function createUserTable(data) {
	var t = $("<table class='users table'></table>");
	var users = data.users;
	for (var i=0; i<users.length; i++) {
		var user = users[i];
		var tr = $("<tr></tr>");
		tr.append("<td>" + user.id + "</td>");
		tr.append("<td>" + user.name + "</td>");
		tr.append("<td>" + user.user + "</td>");
		tr.append("<td>" + user.role + "</td>");		
		t.append(tr);
	}	
	
	$("#userTable").empty().append(t);
}
