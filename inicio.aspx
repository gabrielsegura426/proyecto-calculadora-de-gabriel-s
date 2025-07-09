<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="ProyectoHtml.inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora Basica</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Calculadora Web</h2>

        <label>Ingrese número 1:</label><br />
        <asp:TextBox ID="valor1" runat="server" /><br /><br />

        <label>Ingrese número 2:</label><br />
        <asp:TextBox ID="valor2" runat="server" /><br /><br />

        <p>Operaciones:</p>
        <asp:RadioButton ID="suma" Text="Suma" GroupName="op" runat="server" />
        <asp:RadioButton ID="resta" Text="Resta" GroupName="op" runat="server" />
        <asp:RadioButton ID="multi" Text="Multiplicación" GroupName="op" runat="server" />
        <asp:RadioButton ID="div" Text="División" GroupName="op" runat="server" />
        <asp:RadioButton ID="cuadrado" Text="Potencia al Cuadrado" GroupName="op" runat="server" />
        <asp:RadioButton ID="cubo" Text="Potencia al Cubo" GroupName="op" runat="server" />
        <asp:RadioButton ID="raiz" Text="Raíz Cuadrada" GroupName="op" runat="server" />
        <asp:RadioButton ID="fact" Text="Factorial" GroupName="op" runat="server" />
        <asp:RadioButton ID="fibo" Text="Fibonacci" GroupName="op" runat="server" /><br /><br />

        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" /><br /><br />

        <asp:Label ID="resultado" runat="server" ForeColor="Blue" />
    </form>
</body>
</html>
