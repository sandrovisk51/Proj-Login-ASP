
<!-- #include file="conexao/conect.asp" -->

<%

' pegando dados do formulario'
email = request.form("email")  
senha = request.form("senha")  

' Cria uma nova instância da classe formando o objeto
Set ObjRst = CreateObject("ADODB.RecordSet")

' Seleciona as informações  da tabela
strSQL = "SELECT id, usuario FROM tbusuarios WHERE email = '" & email & "' AND senha = '" & senha & "';"

' Executa o comando SQL
Set ObjRst = conDB.Execute(strSQL)

'Verificação de retorno'
if not ObjRst.EOF then
	response.redirect "index.asp?tp=mgs1&av= Acesso Permitido!"
else
	response.redirect "index.asp?tp=mgs2&av= Acesso Negado!"
end if

%>