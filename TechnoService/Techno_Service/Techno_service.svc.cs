using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Techno_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Techno_service" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Techno_service.svc or Techno_service.svc.cs at the Solution Explorer and start debugging.
    public class Techno_service : ITechno_service
    {
        NUMBDBDataContext db = new NUMBDBDataContext();


        public bool Login(string email, string password)
        {
            var login = (from p in db.Clients
                         where p.Email.Equals(email) && p.Password.Equals(Secrecy.HashPassword(password))
                         select p).FirstOrDefault();

            if (login != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //line divider added
        //*************************************************************************************************************

        public List<ProductD> search_by_cat(string category)
        {
            var product = (from p in db.Products
                           where p.Category.Equals(category)
                           select p);

            List<ProductD> catProducts = new List<ProductD>();
            if (product != null)
            {

                foreach (Product prop in product)
                {
                    ProductD Fproduct = new ProductD
                    {
                        ID = prop.Product_Id,
                        name = prop.Name,
                        description = prop.Description,
                        price = (Double)prop.Price,
                        quantity = prop.Quantity,
                        category = prop.Category,
                        brand = prop.Brand,
                        manufacture = prop.manufacture,
                        discount = (Decimal)prop.Discount
                    };
                    catProducts.Add(Fproduct);
                }

                return catProducts;

            }
            else
            {
                return null;
            }
        }

        //line divider added
        //*************************************************************************************************************

        public bool resetPass(int email, string password)
        {
            var user = (from p in db.Clients
                        where p.Email.Equals(email)
                        select p).FirstOrDefault();

            if (Secrecy.HashPassword(password).Equals(user.Password))
            {
                return false;
            }
            else
            {
                user.Password = Secrecy.HashPassword(password);
                try
                {
                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {
                    ex.GetBaseException();
                    return false;
                }

            }
        }

        //line divider added
        //*************************************************************************************************************

        public bool updateuser(User user, int Id)
        {
            var client = (from p in db.Clients
                          where p.Client_Id.Equals(Id)
                          select p).FirstOrDefault();

            client.Title = user.Title;
            client.Name = user.name;
            client.Surname = user.surname;
            client.Email = user.email;
            client.Address1 = user.address1;
            client.Address2 = user.address2;
            client.Contacts = user.contacs;
            client.City = user.city;
            client.Province = user.province;
            client.ZipCode = client.Province;

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }

        }
        //line divider added
        //*************************************************************************************************************

        public User userinfor_Retrieval(string email)
        {
            var userinfor = (from p in db.Clients
                             where p.Email.Equals(email)
                             select p).FirstOrDefault();

            if (userinfor != null)
            {
                User user = new User
                {

                    Title = userinfor.Title,
                    Id = userinfor.Client_Id,
                    name = userinfor.Name,
                    surname = userinfor.Surname,
                    contacs = userinfor.Contacts,
                    email = userinfor.Email,
                    address1 = userinfor.Address1,
                    address2 = userinfor.Address2,
                    city = userinfor.City,
                    ZipCode = userinfor.ZipCode,
                    province = userinfor.Province

                };
                return user;

            }
            else
            {
                return null;
            }
        }
        //line divider added
        //*************************************************************************************************************

        public bool UserRegister(User user)
        {
            var addUser = new Client
            {
                Title = user.Title,
                Name = user.name,
                Surname = user.surname,
                Contacts = user.contacs,
                Email = user.email,
                Password = Secrecy.HashPassword(user.password),
                Address1 = user.address1,
                Address2 = user.address2,
                City = user.city,
                ZipCode = user.ZipCode,
                Province = user.province
            };

            db.Clients.InsertOnSubmit(addUser);
            try
            {
                db.SubmitChanges();
                return true;

            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }
        //line divider added
        //*************************************************************************************************************

        public List<ProductD> search_by_price(string value)
        {
            var productlist = (from p in db.Products
                               where p.Price.Equals(value)
                               select p);
            List<ProductD> priceP = new List<ProductD>();

            foreach (Product prop in productlist)
            {
                ProductD fprp = new ProductD
                {
                    ID = prop.Product_Id,
                    name = prop.Name,
                    description = prop.Description,
                    price = (Double)prop.Price,
                    quantity = prop.Quantity,
                    category = prop.Category,
                    brand= prop.Brand,
                    manufacture = prop.manufacture,
                    discount = (Decimal)prop.Discount

                };
                priceP.Add(fprp);
            }
            return priceP;
        }

        //line divider added
        //*************************************************************************************************************

        //should also pass the instance you want to add
        //noted changes made
        public int AddProduct(Product addP)
        {
            ProductD pro = new ProductD();


            dynamic item = from p in db.Products
                           select p;

            bool productExists = false;

            foreach (Product p in item)
            {
                if (p.Product_Id == addP.Product_Id)
                {
                    productExists = true;
                    return 1;
                }

            }

            if (productExists == false)
            {
                var newProduct = new Product
                {
                    Name = pro.name,
                    Category = pro.category,
                    Description = pro.description,
                    Price = Convert.ToInt64(pro.price),
                    Quantity = pro.quantity,
                    Brand=pro.brand,
                    manufacture = pro.manufacture,
                    Discount = pro.discount
                    // IMG_URL = pro.url 
                };

                db.Products.InsertOnSubmit(newProduct);

                //exception handling
                try
                {
                    db.SubmitChanges();
                    return 0;
                }
                catch (Exception ex)
                {
                    ex.GetBaseException();
                    return -1;
                }
            }
            else
            {
                return -1;
            }


        }
        //line divider added
        //*************************************************************************************************************


        public int EditProduct(int ID)
        {

            //!!!!maisha fix this code how will you know if the product has been edited if this function is void? !!!!!!
            ProductD pro = new ProductD();

            //which product are you trying to edited or mybe you editing all the products
            dynamic item = from p in db.Products
                           where p.Product_Id.Equals(ID)
                           select p;

            bool codeExists = false;

            foreach (Product p in item)
            {

                if (p.Product_Id == ID)
                {
                    codeExists = true;
                    Product editP = productinfor(ID);

                    editP = new Product
                    {
                        Name = pro.name,
                        Category = pro.category,
                        Description = pro.description,
                        Price = Convert.ToInt64(pro.price),
                        Quantity = pro.quantity,
                    };

                    return 1;
                }

            }

            if (codeExists == false)
            {
                var newProduct = new Product
                {

                    Name = pro.name,
                    Category = pro.category,
                    Description = pro.description,
                    Price = Convert.ToInt64(pro.price),
                    Quantity = pro.quantity,
                    
                };
                //exception handling
                try
                {
                    db.SubmitChanges();
                    return 1;
                }
                catch (Exception ex)
                {
                    ex.GetBaseException();
                    // pro.ErrorMsg();
                }
            }
            else
            {
                return 0;
            }
            return -1;
        }

        public ProductD productinfor_retrieval(int ID)
        {
            var prod = (from p in db.Products
                        where p.Product_Id.Equals(ID)
                        select p).FirstOrDefault();
            if (prod != null)
            {
                ProductD product = new ProductD
                {
                    ID = prod.Product_Id,
                    name = prod.Name,
                    description = prod.Description,
                    price = (Double)prod.Price,
                    quantity = prod.Quantity,
                    category = prod.Category,
                    manufacture = prod.manufacture,
                    brand = prod.Brand,
                    discount = (Decimal)prod.Discount
                };
                return product;
            }
            else
            {
                return null;
            }
        }

        public bool Add_to_Cart(ProductD product, int userID)
        {
            Cart cart = new Cart
            {
                user_Id = userID,
                product_Id = product.ID,
                Total = Convert.ToDecimal(product.price)

            };

            db.Carts.InsertOnSubmit(cart);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }

        }

        public List<ProductD> price_by_ASC()
        {
            
                return null;
        }

        public List<ProductD> price_by_DESC()
        {
            throw new NotImplementedException();
        }

        public Product productinfor(int ID)
        {
            var prod = (from p in db.Products
                        where p.Product_Id.Equals(ID)
                        select p).FirstOrDefault();
            if (prod != null)
            {
                Product product = new Product
                {
                    //ID = prod.Product_Id,
                    Name = prod.Name,
                    Description = prod.Description,
                    Price = prod.Price,
                    Quantity = prod.Quantity,
                    Category = prod.Category
                };
                return product;
            }
            else
            {
                return null;
            }
        }
    }
}
        
