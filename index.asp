<!DOCTYPE html>
<%
tipo = request.item("tp")
mg   = request.item("av")
%>
<html lang="pt-br">
<head>
	<title>Login ASP</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form class="login100-form validate-form" action="acesso.asp" method="post">
					<span class="login100-form-title p-b-33">
						Pagina de login em ASP
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Email invalido">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Senha obrigatoria">
						<input class="input100" type="password" name="senha" placeholder="Senha">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
						<button class="login100-form-btn">
							Acessar
						</button>
					</div>

					<div class="text-center" style="margin-top: 10%;">
						<span class="txt1">
							Criar Conta?
						</span>

						<a href="conta.asp" class="txt2 hov1">
							Aqui...
						</a>

						<p class="<%=tipo%>"><%=mg%></p>
					</div>
				</form>
			</div>
		</div>
	</div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>