<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaProveedores.aspx.cs" Inherits="SiklemTest.Views.Proveedores.ListaProveedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../Content/EstiloSiklum/alertas.css" rel="stylesheet" />
    <link href="../../Content/EstiloSiklum/estatus.css" rel="stylesheet" />
    <link href="../../Content/EstiloSiklum/valoraciones.css" rel="stylesheet" />
    <link href="../../Content/EstiloSiklum/Proveedores.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title>Lista Proveedores</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="w-100 my-5">
        <div runat="server" id="divHeader">
            <div runat="server" id="divLogo">
                <asp:Image runat="server" Height="40" ID="imgLogo" src="../../Images/Logos/logo_siklum.png" />
            </div>
            <div class="datosContact">

            <div class="contentInput">

            <asp:Label runat="server">Nombre</asp:Label>
            
            <asp:TextBox runat="server" ID="txtNombre" MaxLength="60" Enable="false"></asp:TextBox>
            </div>
            <div class="contentInput" style="width: 280px;">
                <asp:Label runat="server">Correo Electrónico</asp:Label>  
                <asp:TextBox runat="server" ID="txtCorreo" MaxLength="100" CssClass="correo"  Enable="false"></asp:TextBox>
            </div>
           <div class="contentInput">
            <asp:Label runat="server">Constancias</asp:Label>
            
            <asp:TextBox runat="server" ID="txtConstancias" MaxLength="3" Enable="false"></asp:TextBox>
            </div>

            <div class="contentInput">
                <asp:Label runat="server">Apellidos</asp:Label>
                <asp:TextBox runat="server" ID="txtApellidos" MaxLength="60" Enable="false"></asp:TextBox>
            </div>
            <div class="contentInput">
            
            <asp:Label runat="server">Teléfono</asp:Label>
            
            <asp:TextBox runat="server" ID="txtTelefono" MaxLength="10" Enable="false"></asp:TextBox>
            </div>
            <div class="contentInput">
            <asp:Label runat="server">KAM Siklum</asp:Label>
            
            <asp:TextBox runat="server" ID="txtKamSiklum" MaxLength="120" Enable="false"></asp:TextBox>
            </div>
            <div class="contentInput">
            <asp:Label runat="server">Fecha de Creación</asp:Label>
           
            <asp:TextBox runat="server" ID="txtFechaCreacion" MaxLength="30" Enable="false"></asp:TextBox>
            </div>
            </div>
            <asp:Button runat="server" ID="btnEditar" CssClass="buttonEdit" Text="Editar" />

        </div>

        <br />

        <div class="divGrid">
            <p class="bolder">Proveedores</p>
            <asp:GridView ID="grvProveedores" name="grvProveedores" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" EmptyDataText="No hay registros.">
                <Columns>
                    <asp:TemplateField HeaderText="" Visible="false">
                        <ItemTemplate>
                            <label id="idProveedor"><%# Eval("idProveedor") %> </label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="nombreGeneral" HeaderText="Proveedor A-Z" HeaderStyle-CssClass="grvTextoN" />
                    <asp:BoundField DataField="tipoproveedor" HeaderText="Tipo De Proveedor" HeaderStyle-CssClass="grvTexto" />
                    <asp:BoundField DataField="RFC" HeaderText="RFC" HeaderStyle-CssClass="grvTexto" />
                    <asp:TemplateField HeaderText="Estado" HeaderStyle-CssClass="grvTexto">
                        <ItemTemplate>
                            <label id="lblEstatus" class="<%# Eval("clase") %>"><%# Eval("estatus") %> </label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Alertas" HeaderStyle-CssClass="grvTexto">
                        <ItemTemplate>
                            <label id="lblAlertas" class="<%# Eval("alertas") %>"></label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Valoraciones" HeaderStyle-CssClass="grvTexto">
                        <ItemTemplate>
                            <label id="lblAlertas" class="<%# Eval("valoraciones") %>"></label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Detalle" HeaderStyle-CssClass="grvTexto">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ToolTip="Detalle proveedor" src="../../Images/Iconos/flecha_siguiente.png" class="fi-ss-angle-right"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="#F4F4F4" CssClass="renglon" />
                <AlternatingRowStyle CssClass="renglon" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </div>
       </div>
    </form>
</body>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        window.addEventListener("DOMContentLoaded", (event) => {
            let dosmedioStar = document.querySelectorAll('.dosestrellasymedia')
            dosmedioStar.forEach(element => {
                for (i = 0; i < 3; i++) {
                    let icon = document.createElement('i')
                    icon.classList.add('fa')
                    icon.classList.add('fa-star')
                    element.appendChild(icon)
                }

            })
            let tresStar = document.querySelectorAll('.tresestrellas')
            tresStar.forEach(element => {
                for (i = 0; i < 3; i++) {
                    let icon = document.createElement('i')
                    icon.classList.add('fa')
                    icon.classList.add('fa-star')
                    element.appendChild(icon)
                }

            })
            let cuatroStar = document.querySelectorAll('.cuatroestrellas')
            cuatroStar.forEach(element => {
                for (i = 0; i < 4; i++) {
                    let icon = document.createElement('i')
                    icon.classList.add('fa')
                    icon.classList.add('fa-star')
                    element.appendChild(icon)
                }

            })
            let cincoStar = document.querySelectorAll('.cincoestrellas')
            cincoStar.forEach(element => {
                for (i = 0; i < 5; i++) {
                    let icon = document.createElement('i')
                    icon.classList.add('fa')
                    icon.classList.add('fa-star')
                    element.appendChild(icon)
                }

            })
            let cuatromediaStar = document.querySelectorAll('.cuatroestrellasymedia')
            cuatromediaStar.forEach(element => {
                for (i = 0; i < 3; i++) {
                    let icon = document.createElement('i')
                    icon.classList.add('fa')
                    icon.classList.add('fa-star')
                    element.appendChild(icon)
                }

                let halficon = document.createElement('i')
                halficon.classList.add('fa')
                halficon.classList.add('fa-star-half')
                element.appendChild(halficon)

            })


        });
    </script>
    
</html>