<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Catalogo_clientes.aspx.cs" Inherits="ExamenFinal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

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
    </form>
</body>