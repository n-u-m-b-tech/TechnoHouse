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
        List<ProductD> search_by_price(Decimal Low, Decimal high, String cat);
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
        List<ProductD> RangePrice(int min, int max);

        [OperationContract]
        List<ProductD> FiltCatPrice(String Category, Double price);



        //transaction and cart
        [OperationContract]
        Boolean Add_to_Cart(ProductD product, int userID, int Qty);
        [OperationContract]
        bool clearCart(int id);
        [OperationContract]
        bool deleteOrder(int OrderNumber);
        [OperationContract]
        bool deletepay(int payID);
        [OperationContract]
        bool deleteInvoice(int OrderNumber);

        [OperationContract]
        List<CartClass> getUser_Cart(int userID);

        [OperationContract]
        bool removeItem(int userId, int productId);
        [OperationContract]
        Boolean addToInvoice(transactionClass trans);
        [OperationContract]
        Boolean addToOrder(transactionClass trans);
        [OperationContract]
        Boolean payment(transactionClass trans);
        [OperationContract]
        Boolean delivery(transactionClass trans);

        [OperationContract]
        Boolean AddToWallet(int userId,WalletClass myWallet);

        [OperationContract]
        List<WalletClass> getUserWallet(int userID);

        [OperationContract]
        List<transactionClass> getInvoice(int userId);
        [OperationContract]
        transactionClass getOrder(int orderNumber);
        [OperationContract]
        transactionClass getpayement(int userId);
        [OperationContract]
        transactionClass getDelivertDetails(String Companyname);



        [OperationContract]
        bool increaseQue(int productId, int UserId,int num);


        //product management
        [OperationContract]
        int AddProduct(ProductD addP);
        [OperationContract]
        int EditProduct(ProductD pr, int ID);
        [OperationContract]
        ProductD productinfor(int ID);

        [OperationContract]
        int CountProduct();
        [OperationContract]
        int CountUser();
        [OperationContract]
        int CountSales();


    }
}
