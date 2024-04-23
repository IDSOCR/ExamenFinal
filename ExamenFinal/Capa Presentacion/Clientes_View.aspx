<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes_View.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Clientes_View" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestión de Clientes</title>
    <!--  ruta al archivo CSS -->
    <link href="../CSS/Clientes.css" rel="stylesheet" />
    <!--  ruta al archivo CSS -->
   
   
</head>
<body>
    <form id="form1" runat="server">
        <h1>Gestión de Clientes</h1>

        <div>
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" runat="server" />
            <label for="email">Email:</label>
            <input type="email" id="email" runat="server" />
            <label for="telefono">Teléfono:</label>
            <input type="tel" id="telefono" runat="server" />
            <button type="button" runat="server" onserverclick="AgregarCliente_Click">Agregar Cliente</button>
        </div>
        <br>
        <div>
            <label for="idBorrar">ID del Cliente:</label>
            <input type="number" id="idBorrar" runat="server" />
            <button type="button" runat="server" onserverclick="BorrarCliente_Click">Borrar Cliente</button>
        </div>
        <br>
        <div>
            <label for="idModificar">ID del Cliente:</label>
            <input type="number" id="idModificar" runat="server" />
            <label for="nombreModificar">Nuevo Nombre:</label>
            <input type="text" id="nombreModificar" runat="server" />
            <label for="emailModificar">Nuevo Email:</label>
            <input type="email" id="emailModificar" runat="server" />
            <label for="telefonoModificar">Nuevo Teléfono:</label>
            <input type="tel" id="telefonoModificar" runat="server" />
            <button type="button" runat="server" onserverclick="ModificarCliente_Click">Modificar Cliente</button>
        </div>
              <div>
   
  <asp:GridView ID="GridView1" runat="server"></asp:GridView>

  </div>

    </form>

</body>
</html>


