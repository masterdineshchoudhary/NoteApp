<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hello, world!</title>
<%@ include file="all_js_css.jsp"%>
<style>
body {
    font-family: 'Montserrat', sans-serif;
}
</style>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		
		<div class="card  shadow bg-white py-5">
			<img alt="" class="img-fluid mx-auto" style="max-width: 400px;" src="img/pinnednote.png">
			<h1 class="text text-center mt-3">Let's Go</h1>
			<div class="container text-center">
				<a href="add_notes.jsp" class="btn btn-info text-center mb-10">Start
					here</a>
			</div>

		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>