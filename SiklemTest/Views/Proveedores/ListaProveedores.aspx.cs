using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiklemTest.Views.Proveedores
{
    public partial class ListaProveedores : System.Web.UI.Page
    {
        DataTable dt = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                CrearDT();
                CargarGridProveedores();
                CargarDatosGenerales();
            }
        }

        protected void CargarDatosGenerales()
        {
            txtNombre.Text = "Román";
            txtApellidos.Text = "Pareja Munguia";
            txtCorreo.Text = "grupobimbooficial@grupobimbo.com";
            txtTelefono.Text = "+52 55 555 5555";
            txtKamSiklum.Text = "Barbara Romero";
            txtConstancias.Text = "10";
            txtFechaCreacion.Text = "Junio 11, 2022";
        }

        protected void CrearDT()
        {
            dt = new DataTable();
            dt.Columns.Add("idCliente");
            dt.Columns.Add("idProveedor");
            dt.Columns.Add("nombreGeneral");
            dt.Columns.Add("tipoproveedor");
            dt.Columns.Add("rfc");
            dt.Columns.Add("estatus"); //estatus
            dt.Columns.Add("clase"); //nombre de la clase para estatus
            dt.Columns.Add("alertas"); //nombre de la clase para alertas
            dt.Columns.Add("valoraciones"); //nombre de la clase que se asignará para cargar el diseño de las estrellas
        }

        protected void CargarListaProveedores(string idCliente, string idProveedor, string nombreGeneral, string tipoProveedor, string rfc, string estatus, string clase, string alertas, string valoraciones)
        {
            DataRow dr = dt.NewRow();
            dr["idCliente"] = idCliente;
            dr["idProveedor"] = idProveedor;
            dr["nombreGeneral"] = nombreGeneral;
            dr["tipoproveedor"] = tipoProveedor;
            dr["rfc"] = rfc;
            dr["estatus"] = estatus;
            dr["clase"] = clase;
            dr["alertas"] = alertas;
            dr["valoraciones"] = valoraciones;
            dt.Rows.Add(dr);
        }

        protected void CargarGridProveedores()
        {
            try
            {
                CargarListaProveedores("145", "1", "Román Pareja", "REPSE", "SESAS411890U2", "Activo", "activo", "error", "cincoestrellas");
                CargarListaProveedores("146", "2", "Román Pareja", "IMPUESTOS", "SESAS411890U2", "Bloqueado", "bloqueado", "revisar", "cuatroestrellas");
                CargarListaProveedores("147", "2", "Román Pareja", "REPSE", "SESAS411890U2", "Pendiente", "pendiente", "revisar", "cuatroestrellasymedia");
                CargarListaProveedores("148", "1", "Román Pareja", "SERVICIOS", "SESAS411890U2", "Activo", "activo", "revisar", "tresestrellas");
                CargarListaProveedores("149", "1", "Román Pareja", "SERVICIOS", "SESAS411890U2", "Activo", "activo", "aceptado", " dosestrellasymedia");
                CargarListaProveedores("150", "1", "Román Pareja", "SERVICIOS", "SESAS411890U2", "Activo", "activo", "aceptado", " dosestrellasymedia");
                CargarListaProveedores("151", "1", "Román Pareja", "SERVICIOS", "SESAS411890U2", "Activo", "activo", "aceptado", " dosestrellasymedia");
                CargarListaProveedores("152", "1", "Román Pareja", "SERVICIOS", "SESAS411890U2", "Activo", "activo", "aceptado", " dosestrellasymedia");

                grvProveedores.DataSource = dt;
                grvProveedores.DataBind();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}