using System;
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
        User userinfor_Retrieval(int ID);
        [OperationContract]
        User userinfor_Retrieval_Email(String email);
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
        ProductD productinfor_retrieval_ID(int ID);
        [OperationContract]
        ProductD productinfor_retrieval_Name(String name);
        [OperationContract]
        List<ProductD> price_by_ASC(String category);
        [OperationContract]
        List<ProductD> price_by_DESC(String category);
        [OperationContract]
        List<ProductD> allProducts();
        [OperationContract]
        List<CartClass> getUser_Cart(int userID);


        //transaction
        [OperationContract]
        Boolean Add_to_Cart(ProductD product,int userID,int Qty);



        //shushan code
        [OperationContract]
        int AddProduct(ProductD addP);
        [OperationContract]
        int EditProduct(ProductD pr, int ID);
        [OperationContract]
        ProductD productinfor(int ID);


    }
}
