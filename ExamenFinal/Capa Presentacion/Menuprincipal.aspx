<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menuprincipal.aspx.cs" Inherits="ExamenFinal.Presentacion.Menuprincipal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menú Principal</title>
    <!--  ruta al archivo CSS -->
    <link href="../CSS/MenuPrincipalEstilos.css" rel="stylesheet" />
    <!-- Incluir FontAwesome para los íconos -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Incluir jQuery para la funcionalidad del menú -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $('.toggleMenu').click(function(){
            $('#mainMenu').toggleClass('open');
        });
    });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainMenu" class="mainMenuOverlay floating2">
            <div class="navire floating3"></div>
            <!--<div class="itemMenuBox bills"><a href="Venta_View.aspx" class="itemMenu"><i class="fa fa-file-text-o" aria-hidden="true"></i></a></div>-->
            <!--<div class="itemMenuBox tarsheed"><a href="Agente_Vista.aspx" class="itemMenu"><i class="fa fa-diamond" aria-hidden="true"></i></a></div>-->
            <div class="itemMenuBox employees"><a href="Clientes_View.aspx" class="itemMenu"><i class="fa fa-users" aria-hidden="true"></i></a></div>
            <div class="itemMenuBox location"><a href="Agente_Vista.aspx" class="itemMenu"><i class="fa fa-location-arrow" aria-hidden="true"></i></a></div>
            <div class="itemMenuBox eservices"><a href="Login.aspx" class="itemMenu"><i class="fa fa-key" aria-hidden="true"></i></a></div>
            <div class="itemMenuBox contact"><a href="Venta_View.aspx" class="itemMenu"><i class="fa fa-phone" aria-hidden="true"></i></a></div>-->
            <a href="javascript:void(0)" class="toggleMenu floating"><i class="fa fa-bars" aria-hidden="true"></i></a>
        </div>
        <!-- Signature -->
        <div class="signatureBox fixed">Written and coded by <a href="https://codepen.io/mahmoud-nb/" target="_blank">Mahmoud NB</a></div>
    </form>
</body>
</html>

