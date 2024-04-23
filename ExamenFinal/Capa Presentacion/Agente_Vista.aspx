<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agente_Vista.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Agente_Vista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--  ruta al archivo CSS -->
<link href="../CSS/Agente.css" rel="stylesheet" />
    <!--  ruta al archivo CSS -->
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <h1>Gestión de Agentes</h1>

        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <label for="telefono">Teléfono:</label>
        <input type="tel" id="telefono" name="telefono" required><br>
        <button type="submit">Agregar Agente</button>
        <label for="idBorrar">ID del Agente:</label>
        <input type="number" id="idBorrar" name="idBorrar" required><br>
        <button type="submit">Borrar Agente</button>
        <label for="idModificar">ID del Agente:</label>
        <input type="number" id="idModificar" name="idModificar" required><br>
        <label for="nombreModificar">Nuevo Nombre:</label>
        <input type="text" id="nombreModificar" name="nombreModificar"><br>
        <label for="emailModificar">Nuevo Email:</label>
        <input type="email" id="emailModificar" name="emailModificar"><br>
        <label for="telefonoModificar">Nuevo Teléfono:</label>
        <input type="tel" id="telefonoModificar" name="telefonoModificar"><br>
        <button type="submit">Modificar Agente</button>
        <br />
        <br />

    <script>
        function agregarAgente() {
            var nombre = document.getElementById("nombre").value;
            var email = document.getElementById("email").value;
            var telefono = document.getElementById("telefono").value;

            // Aquí enviar la información del nuevo agente al servidor para agregarlo a la base de datos
            console.log("Nuevo agente:");
            console.log("Nombre: " + nombre);
            console.log("Email: " + email);
            console.log("Teléfono: " + telefono);

            // Limpiar el formulario después de agregar el agente
            document.getElementById("formAgregarAgente").reset();
        }

        function borrarAgente() {
            var idBorrar = document.getElementById("idBorrar").value;

            // Aquí enviar la solicitud al servidor para borrar el agente con el ID proporcionado
            console.log("Borrar agente con ID: " + idBorrar);

            // Limpiar el formulario después de borrar el agente
            document.getElementById("formBorrarAgente").reset();
        }

        function modificarAgente() {
            var idModificar = document.getElementById("idModificar").value;
            var nombre = document.getElementById("nombreModificar").value;
            var email = document.getElementById("emailModificar").value;
            var telefono = document.getElementById("telefonoModificar").value;

            // Aquí enviar la información actualizada del agente al servidor para modificarlo en la base de datos
            console.log("Modificar agente con ID: " + idModificar);
            console.log("Nuevo nombre: " + nombre);
            console.log("Nuevo email: " + email);
            console.log("Nuevo teléfono: " + telefono);

            // Limpiar el formulario después de modificar el agente
            document.getElementById("formModificarAgente").reset();
        }
    </script>

    <div>
     
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </div>
       
    </form>

    </body>
</html>
