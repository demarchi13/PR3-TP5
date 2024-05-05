<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_NRO_10.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style6 {
            width: 68px;
            text-align: center;
        }
        .auto-style7 {
            width: 68px;
        }
        .auto-style8 {
            color: #FF0000;
        }
        .auto-style9 {
            width: 295px;
            font-size: x-large;
        }
        .auto-style11 {
            width: 187px;
        }
        .auto-style12 {
            width: 295px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:HyperLink ID="hypAgregarSucursal" runat="server" style="margin-right: 100px" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hypListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="hypEliminarSucursal" runat="server" style="margin-left: 100px" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
        </div>
        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style9"><strong>
                        <br />
                        Eliminar Sucursal<br />
                        </strong></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Ingresar ID Sucursal:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtID" runat="server" ValidationGroup="gEliminar"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" ValidationGroup="gEliminar" />
                    </td>
                    <td><strong>
                        <asp:RegularExpressionValidator ID="revID" runat="server" ControlToValidate="txtID" CssClass="auto-style8" ValidationExpression="^\d+$" ValidationGroup="gEliminar">* Solamente se pueden ingresar numeros enteros</asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <br />
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td><strong>
                        <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" CssClass="auto-style8" ErrorMessage="RequiredFieldValidator" ValidationGroup="gEliminar">* Debe ingresar un valor</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
