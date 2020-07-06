﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Microsoft.SqlServer.Management.Sdk.Sfc;
using QuanLyCLBVoThuat.DTO;

namespace QuanLyCLBVoThuat.DAO
{
    public class VoSinhDAO
    {
        private static VoSinhDAO instance;

        public static VoSinhDAO Instance
        {
            get { if (instance == null) instance = new VoSinhDAO(); return instance; }
            private set { instance = value; }
        }

        public bool InsertInfo(string stt, string tenvosinh, string truong, string sinhnhat, string capbac, string ngaythamgia)
        {
            //string query = "INSERT INTO dbo.Information ( STT , TenVoSinh , Truong ) VALUES  ( N'{0}' , {1} , {2})" , stt , tenvosinh , truong )";
            string query = "INSERT INTO dbo.VoSinh (STT, TenVoSinh, Truong, SinhNhat, CapBac, NgayThamGia)  VALUES(' " + stt + " ', ' " + tenvosinh + " ', '  " + truong + " ', '" + sinhnhat + "', '" + capbac + "', '" + ngaythamgia + "')";
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

        public bool UpdateInfo(string stt, string tenvosinh, string truong)
        {
            string query = string.Format("UPDATE dbo.Information SET TenVoSinh = N'{0}', Truong = {1}, WHERE STT = {3}", stt, tenvosinh, truong);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }
        
        public DataTable TimKiem(string hoTen, string capBac)
        {
            string query = string.Format("SELECT * dbo.Information");
            return DataProvider.Instance.ExecuteQuery(query);
        }
        /*
        public bool DeleteInfo(int idInfo)
        {
            BillInfoDAO.Instance.DeleteBillInfoByInfoID(idInfo);

            string query = string.Format("Delete Info where id = {0}", idInfo);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }
        
        public List<VoSinh> GetListVoSinh()
        {
            List<VoSinh> list = new List<VoSinh>();

            string query = "select * from VoSinh";

            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                VoSinh food = new VoSinh(item);
                list.Add(food);
            }

            return list;
        }
        */
    }
}
