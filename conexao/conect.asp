<% @ LANGUAGE="VBSCRIPT" %>
<%
Session.lcId = 1033

Dim ConDB

' Abre conexao com o banco de dados
Set conDB = server.createobject("ADODB.connection")

' Define a string de conexão
conDB.ConnectionString = "dsn=odbc;uid=usuario;pwd=senha;database=dblogin"

' Abre a conexão
conDB.Open

%>