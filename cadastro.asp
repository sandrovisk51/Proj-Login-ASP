<!-- #include file="conexao/conect.asp" -->

<%

' pegando dados do formulario'
usuario = request.form("usuario")  
email   = request.form("email")  
senha   = request.form("senha")  

' Cria uma nova instância da classe formando o objeto
Set ObjRst = CreateObject("ADODB.RecordSet")

' Seleciona as informações a serem importadas
strSQL = "SELECT id, usuario FROM tbusuarios WHERE email = '" & email & "';"

' Executa o comando SQL
Set ObjRst = conDB.Execute(strSQL)

'Verificação de retorno'
if not ObjRst.EOF then
	response.redirect "index.asp?tp=mgs2&av= Usuario já está cadastrado!"
else
    
	strSQL = "INSERT INTO tbusuarios (usuario, email, senha, data) VALUES('" & usuario & "','" & email & "','" & senha & "',NOW());"
    conDB.Execute(strSQL)

	response.redirect "index.asp?tp=mgs1&av= Usuario cadastrado com sucesso!"
end if

%>