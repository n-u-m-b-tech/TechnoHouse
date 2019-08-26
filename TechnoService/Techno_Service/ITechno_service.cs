﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Techno_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ITechno_service" in both code and config file together.
    [ServiceContract]
    public interface ITechno_service
    {
        //Client 
        [OperationContract]
        Boolean UserRegister(User user);
        [OperationContract]
        Boolean Login(string email, string password);
        [OperationContract]
        User userinfor_Retrieval(string email);
        [OperationContract]
        Boolean resetPass(int email, string password);
        [OperationContract]
        Boolean updateuser(User user, int Id);

        //product
        [OperationContract]
        List<ProductD> search_by_cat(string category);
        [OperationContract]
        List<ProductD> search_by_price(string value);
        [OperationContract]
        ProductD productinfor_retrieval(int ID);
        [OperationContract]
        List<ProductD> price_by_ASC();
        [OperationContract]
        List<ProductD> price_by_DESC();

        //transaction
        [OperationContract]
        Boolean Add_to_Cart(ProductD product,int userID);



        //shushan code
        [OperationContract]
        int AddProduct(Product addP);
        [OperationContract]
        int EditProduct(int ID);
        [OperationContract]
        Product productinfor(int ID);


    }
}
