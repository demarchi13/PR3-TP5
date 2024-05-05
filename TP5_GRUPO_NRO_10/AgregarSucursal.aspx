<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_NRO_10.AgregarSucursal" %>

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
        .auto-style5 {
            width: 247px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 247px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            width: 247px;
            font-size: xx-large;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style13 {
            width: 247px;
        }
        .auto-style15 {
            height: 29px;
            width: 168px;
        }
        .auto-style16 {
            height: 26px;
            width: 168px;
        }
        .auto-style18 {
            width: 168px;
        }
        .auto-style19 {
            color: #FF0000;
        }
    </style>
</head>
<body style="width: 1378px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:HyperLink ID="hyplAgreregarSucursal" runat="server" style="margin-right:100px" NavigateUrl="~/AgregarSucursal.aspx" >Agreregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hypListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="hypEliminarSucursal" runat="server" style="margin-left:100px" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
        </div>
        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style9"><strong>GRUPO Nº 10</strong></td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <br />
                        <span class="auto-style11"><strong>Agregar Sucursal<br />
                        </strong></span><br />
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Nombre Sucursal:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtNombreSucursal" runat="server" ValidationGroup="GrupoSucursal"></asp:TextBox>
                    </td>
                    <td>
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ValidationGroup="GrupoSucursal" CssClass="auto-style19">* Debe ingresar un nombre</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Descripcion:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtDescripcion" runat="server" ValidationGroup="GrupoSucursal"></asp:TextBox>
                    </td>
                    <td>
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ValidationGroup="GrupoSucursal" CssClass="auto-style19">* Debe ingresar una descripcion</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Provincia:</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddlProvincia" runat="server" ValidationGroup="GrupoSucursal">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" InitialValue="0" ValidationGroup="GrupoSucursal" CssClass="auto-style19">* Seleccione una Provincia</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Direccion:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtDireccion" runat="server" ValidationGroup="GrupoSucursal"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ValidationGroup="GrupoSucursal" CssClass="auto-style19">* Debe ingresar una direccion</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style18">
                        <br />
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" ValidationGroup="GrupoSucursal" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
