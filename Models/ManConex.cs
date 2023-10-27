﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace Curso3_FirstApp
{
    class ManConex
    {

        public string cadenaConexion
        {
            set; get;
        }

        MySqlConnection con;

        public void abrirConexion()
        {
            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();
            }
            catch
            {
                return;
            }
        }

        public void cerrarConexion(MySqlConnection con)
        {
            try
            {
                if (con != null)
                {
                    con.Close();
                    con = null;
                }
            }
            catch (System.Exception ex) { }
        }

        public MySqlConnection getConexion()
        {
            if (con == null)
            {
                con = new MySqlConnection(cadenaConexion);
            }

            try
            {
                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();
            }
            catch (System.Exception ex)
            {
                cerrarConexion(con);
            }
            return con;
        }

        public System.Data.DataTable ejecutarSelect(string sql)
        {
            //MySqlConnection con = null;
            System.Data.DataTable dt = new System.Data.DataTable();
            //MySqlDataReader dr = null;
            try
            {
                con = getConexion();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                MySqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                if (dt == null || dt.Rows.Count == 0) dt = null;
                dr.Close();
            }
            catch (System.Exception ex)
            {
              dt = null;
            }
            
            return dt;
        }



    }
}
