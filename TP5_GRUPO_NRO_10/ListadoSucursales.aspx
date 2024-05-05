<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5_GRUPO_NRO_10.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>      
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 256px;
        }
        .auto-style7 {
            width: 256px;
            font-size: x-large;
        }
        .auto-style8 {
            width: 247px;
        }
        .auto-style11 {
            color: #FF0000;
        }
        .auto-style12 {
            width: 104px;
        }
        .auto-style13 {
            width: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div1" class="auto-style1">
            <asp:HyperLink ID="hypAgregarSucursal" runat="server" style="margin-right:100px" NavigateUrl="~/AgregarSucursal.aspx" >Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hypListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="hypEliminarSucursal" runat="server" style="margin-left:100px" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
        </div>
        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">
                        <br />
                        Listado de Sucursales<br />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Busqueda ingrese ID sucursal:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtIdSucursal" CssClass="auto-style11">* Ingrese ID</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" style="height: 29px" />
                    </td>
                    <td>
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar Todos" OnClick="btnMostrarTodos_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <div>

            <br />
            <asp:GridView ID="gvSucursales" runat="server">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
