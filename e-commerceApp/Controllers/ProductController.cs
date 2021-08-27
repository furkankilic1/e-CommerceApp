using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using e_commerceApp.Models;
using System.Web;

namespace e_commerceApp.Controllers
{
    public class ProductController : Controller
    {
        string connectionString = @"Data Source = KıLıÇ\SQLEXPRESS; Initial Catalog = ProductsDB; Integrated Security=True";

        [HttpGet]
        public ActionResult Products()
        {
            List<Product> productList = new List<Product> { };
            List<Category> categoryList = new List<Category> { };
            List<Language> languageList = new List<Language> { };

            string sqlCmd = "";

            //Get Products from db
            string languageCode = HttpUtility.ParseQueryString(Request.QueryString.ToString()).Get("LanguageCode");
            string categoryName = HttpUtility.ParseQueryString(Request.QueryString.ToString()).Get("CategoryName");
            if (languageCode == null)
            {
                sqlCmd = "SELECT * FROM Product Where LanguageCode = 'English'";
            } else 
            {
                Language.lang = languageCode;
                sqlCmd = "SELECT * FROM Product Where LanguageCode = '" + languageCode + "'";
            }

            if(categoryName != null)
            {
                sqlCmd = "SELECT * FROM Product Where ProductCategory = '" + categoryName + "'";
            }
     
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd, sqlCon);
                sqlDa.Fill(dtbl);
            }

            for (int i = 0; i < dtbl.Rows.Count; i++)
            {
                Product pro = new Product();
                pro.productName = dtbl.Rows[i][1].ToString();
                pro.productInfo = dtbl.Rows[i][2].ToString();
                pro.productCategory = dtbl.Rows[i][3].ToString();
                pro.productImgUrl = dtbl.Rows[i][4].ToString();
                pro.languageCode = dtbl.Rows[i][5].ToString();
                pro.productPrice = dtbl.Rows[i][6].ToString();

                productList.Add(pro);
            }

            //Get Categories from db
            if (Language.lang == null)
            {
                sqlCmd = "SELECT DISTINCT ProductCategory FROM Product Where LanguageCode = 'English'";
            }
            else
            {
                sqlCmd = "SELECT DISTINCT ProductCategory FROM Product Where LanguageCode = '" + Language.lang + "'";
            }

            dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd, sqlCon);
                sqlDa.Fill(dtbl);
            }

            for (int i = 0; i < dtbl.Rows.Count; i++)
            {
                Category cat = new Category();
                cat.CategoryName = dtbl.Rows[i][0].ToString();

                categoryList.Add(cat);
            }

            //Get Languages from db
            dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT DISTINCT LanguageCode FROM Product", sqlCon);
                sqlDa.Fill(dtbl);
            }

            for (int i = 0; i < dtbl.Rows.Count; i++)
            {
                Language lang = new Language();
                lang.LanguageCode = dtbl.Rows[i][0].ToString();

                languageList.Add(lang);
            }

            ProductCategoryLanguage model = new ProductCategoryLanguage();
            model.Product = productList;
            model.Categories = categoryList;
            model.Languages = languageList;

            return View(model);
        }

    }
}
