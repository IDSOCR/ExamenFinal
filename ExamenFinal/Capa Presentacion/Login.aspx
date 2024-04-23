<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenFinal.Presentacion.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <!--  ruta al archivo CSS -->
    <link href="../CSS/Login.css" rel="stylesheet" />
    <!--  ruta al archivo CSS -->
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Iniciar Sesión</h2>
            <div class="form-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required="required" />
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required="required" />
            </div>
            <input id="Button1" class="btn-submit" type="submit" value="Iniciar Sesión" runat="server" onclick="Button1_Click" />
            <!-- Control Label para mostrar mensajes de error -->
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html> 

