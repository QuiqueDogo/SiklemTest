<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SiklemTest.Views.Seguridad.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link href="../../Content/EstiloSiklum/Login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <section id="contenedor" class="flex-sm-column flex-md-row">

        <div class="contenedor_img">
             <div class="contentFirst">
                        <img class='img_fondo' alt="img_logo" src='../../Images/Logos/logo_siklum.png' />
             </div>  
        </div>
        <div class="contenedor_login">

            <div class="card">

            <h1 class="h1Bienvenida">¡Bienvenido!</h1>

                        <p runat="server" class="ptext2 bolder">Iniciar sesión</p>

                        <p runat="server" class="ptext">Correo electrónico</p>

                        <input runat="server" id="txtCorreo" type="email" placeholder="Escribe tu correo " class="inputlabel" />

                        <div class="tooltip">
                            

                            <span  style="display:none" class="tooltiptext">
                                <br /> <b style="font-size: 15px; line-height: 18px; font-family: 'Roboto';">Requisitos mínimos</b><br />
                                • Un caracter especial
                                <br />
                                • Una mayúscula 
                                   
                                <br />
                                • Una minúscula 
                               
                                <br />
                                • Sin espacios 
                                
                                <br />
                                • Un número
                            </span>
                            <div class="arrow-right"></div>
                        </div>
                       

                        <div class="text_pass">
                        <p runat="server" class="ptext3">Contraseña</p>
                        <div
                          data-toggle="tooltip" data-placement="right" data-html="true"  title="<p> <br /> <b style='font-size: 15px; line-height: 18px;'>Requisitos mínimos</b><br /> • Una mayúscula <br />• Una minúscula <br />• Sin espacios <br />• Un número</p>"   
                         >
                        <asp:LinkButton runat="server" href="#"> 
                            <p class ="iconExclama">  <img src="../../Images/Iconos/circle-info.png" class="iconExclama" /></p>
                        </asp:LinkButton>
                        </div>
                        </div>
                        <div class="input_container">
                        <input runat="server" id="txtPassword" type="password" placeholder="Escribe tu contraseña" class="inputlabel" />
                            <span id="imgContrasena" data-activo="false">
                                <img src="https://aheioqhobo.cloudimg.io/v7/_playground-bucket-v2.teleporthq.io_/3a90dab5-82d7-46c6-90a6-cf01dd118a81/6b0a9c5d-ecfc-4093-b3a5-05c611ce3c03?org_if_sml=12084" class="icon" />
                            </span>
                        </div>
                       
                         <div class="content-button">

                        <asp:LinkButton runat="server" href="Recuperarpassword" Text="¿Olvidaste tu contraseña?" CssClass="acontrasena"></asp:LinkButton>
                        
                        <asp:Button runat="server" ID="Ingresar" OnClick="Ingresar_Click" Text="Ingresar" Class="buttonbtn" />
                         </div>
            </div>
          </div>
        </section>

    </form>
</body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>
</html>