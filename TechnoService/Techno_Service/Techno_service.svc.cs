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
                        discount = (Decimal)prop.Discount,
                        image_url = prop.Image_url,
                        active = (Char)prop.ACTIVE
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
            client.Username = user.username;
            client.Address1 = user.address1;
            client.Address2 = user.address2;
            client.Contacts = user.contacs;
            client.City = user.city;
            client.Province = user.province;
            client.ZipCode = user.ZipCode;
            client.User_type = user.type;
            client.Active = (Char)user.active;

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

        public User userinfor_Retrieval(int ID)
        {
            var userinfor = (from p in db.Clients
                             where p.Client_Id.Equals(ID)
                             select p).FirstOrDefault();

            if (userinfor != null)
            {
                User user = new User
                {

                    Title = userinfor.Title,
                    Id = userinfor.Client_Id,
                    name = userinfor.Name,
                    surname = userinfor.Surname,
                    username = userinfor.Username,
                    contacs = userinfor.Contacts,
                    email = userinfor.Email,
                    address1 = userinfor.Address1,
                    address2 = userinfor.Address2,
                    city = userinfor.City,
                    ZipCode = userinfor.ZipCode,
                    province = userinfor.Province,
                    active = (Char)userinfor.Active,
                    type = userinfor.User_type



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
                Username = user.username,
                Password = Secrecy.HashPassword(user.password),
                Address1 = user.address1,
                Address2 = user.address2,
                City = user.city,
                ZipCode = user.ZipCode,
                Province = user.province,
                Active = user.active,
                User_type = user.type
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
                    brand = prop.Brand,
                    manufacture = prop.manufacture,
                    discount = (Decimal)prop.Discount,
                    active = (Char)prop.ACTIVE,
                    image_url = prop.Image_url


                };
                priceP.Add(fprp);
            }
            return priceP;
        }

        //line divider added
        //*************************************************************************************************************

        //should also pass the instance you want to add
        //noted changes made

        //line divider added
        //*************************************************************************************************************


        public int EditProduct(ProductD pr, int ID)
        {

            var item = (from p in db.Products
                        where p.Product_Id.Equals(ID)
                        select p).FirstOrDefault();

            item.Name = pr.name;
            item.Description = pr.description;
            item.Price = Convert.ToDecimal(pr.price);
            item.Quantity = pr.quantity;
            item.Category = pr.category;
            item.ACTIVE = pr.active;
            item.Brand = pr.brand;
            item.manufacture = pr.manufacture;
            item.Discount = pr.discount;
            item.Image_url = pr.image_url;

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

        public ProductD productinfor_retrieval_ID(int ID)
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
                    discount = (Decimal)prod.Discount,
                    image_url = prod.Image_url,
                    active = (Char)prod.ACTIVE
                };
                return product;
            }
            else
            {
                return null;
            }
        }

        public bool Add_to_Cart(ProductD product, int userID,int Qty)
        {
           
            var existpro = (from e in db.Carts
                                where e.Product_Name.Equals(product.name) && 
                                e.user_Id.Equals(userID)
                                select e).FirstOrDefault();
            if (existpro == null)
            {
                Cart cart = new Cart
                {
                    user_Id = userID,
                    product_Id = product.ID,  
                    Quantity = Qty,
                    Product_Name = product.name,
                    Product_Description = product.description,
                    img_url = product.image_url,
                    Total = Convert.ToDecimal(product.price) * Qty,
                    Unit_Price = Convert.ToDecimal(product.price),

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
            else
            {
                existpro.Quantity += Qty;
                existpro.Total = Convert.ToDecimal(product.price * existpro.Quantity);
                try
                {
                    db.SubmitChanges();
                    return true;
                }catch(Exception e)
                {
                    e.GetBaseException();
                    return false;
                }
            }

        }

        public List<ProductD> price_by_ASC(String category)
        {
            dynamic Product = (from p in db.Products
                               where p.Category.Equals(category) && p.ACTIVE.Equals("T")
                               orderby p.Price ascending
                               select p);
            List<ProductD> pro = new List<ProductD>();

            foreach (Product prop in Product)
            {
                ProductD asc = new ProductD
                {
                    ID = prop.Product_Id,
                    name = prop.Name,
                    description = prop.Description,
                    price = (Double)prop.Price,
                    quantity = prop.Quantity,
                    category = prop.Category,
                    brand = prop.Brand,
                    manufacture = prop.manufacture,
                    discount = (Decimal)prop.Discount,
                    active = (Char)prop.ACTIVE,
                    image_url = prop.Image_url
                };
                pro.Add(asc);
            }

            return pro;

        }

        public List<ProductD> price_by_DESC(String category)
        {
            dynamic Product = (from p in db.Products
                               where p.Category.Equals(category) && p.ACTIVE.Equals("T")
                               orderby p.Price descending
                               select p);
            List<ProductD> pro = new List<ProductD>();

            foreach (Product prop in Product)
            {
                ProductD desc = new ProductD
                {
                    ID = prop.Product_Id,
                    name = prop.Name,
                    description = prop.Description,
                    price = (Double)prop.Price,
                    quantity = prop.Quantity,
                    category = prop.Category,
                    brand = prop.Brand,
                    manufacture = prop.manufacture,
                    discount = (Decimal)prop.Discount,
                    active = (Char)prop.ACTIVE,
                    image_url = prop.Image_url
                };
                pro.Add(desc);
            }

            return pro;

        }

        public ProductD productinfor(int ID)
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
                    price = Convert.ToDouble(prod.Price),
                    quantity = prod.Quantity,
                    category = prod.Category,
                    active = (Char)prod.ACTIVE,
                    brand = prod.Brand,
                    manufacture = prod.manufacture,
                    discount = Convert.ToDecimal(prod.Discount),
                    image_url = prod.Image_url
                };
                return product;
            }
            else
            {
                return null;
            }
        }



        public int AddProduct(ProductD addP)
        {
            Product pro = new Product
            {
                Name = addP.name,
                Description = addP.description,
                Price = (Decimal)addP.price,
                Quantity = addP.quantity,
                Category = addP.category,
                ACTIVE = addP.active,
                Brand = addP.brand,
                manufacture = addP.manufacture,
                Discount = (Decimal)addP.discount,
                Image_url = addP.image_url

            };

            db.Products.InsertOnSubmit(pro);
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

        public List<ProductD> allProducts()
        {
            var product = (from p in db.Products
                           where p.ACTIVE.Equals("T")
                           select p);
            if (product != null)
            {
                List<ProductD> pro = new List<ProductD>();

                foreach (Product prop in product)
                {
                    ProductD prod = new ProductD
                    {

                        ID = prop.Product_Id,
                        name = prop.Name,
                        description = prop.Description,
                        price = (Double)prop.Price,
                        quantity = prop.Quantity,
                        category = prop.Category,
                        brand = prop.Brand,
                        manufacture = prop.manufacture,
                        discount = (Decimal)prop.Discount,
                        image_url = prop.Image_url,
                        active = (Char)prop.ACTIVE


                    };
                    pro.Add(prod);
                }
                return pro;
            }
            else
            {
                return null;
            }
        }

        public User userinfor_Retrieval_Email(string email)
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
                    province = userinfor.Province,
                    active = (Char)userinfor.Active,
                    type = userinfor.User_type



                };
                return user;

            }
            else
            {
                return null;
            }
        }

        public ProductD productinfor_retrieval_Name(string name)
        {


            dynamic prod = (from p in db.Products
                            where p.Name.Equals(name)
                            select p).FirstOrDefault();
            if (prod != null)
            {
                ProductD product = new ProductD
                {
                    ID = prod.Product_Id,
                    name = prod.Name,
                    description = prod.Description,
                    price = Convert.ToDouble(prod.Price),
                    quantity = prod.Quantity,
                    category = prod.Category,
                    active = prod.ACTIVE,
                    brand = prod.Brand,
                    manufacture = prod.manufacture,
                    discount = Convert.ToDecimal(prod.Discount),
                    image_url = prod.Image_url
                };
                return product;
            }
            else
            {
                return null;
            }


        }

        public List<CartClass> getUser_Cart(int userID)
        {
            dynamic cart = (from c in db.Carts
                            where c.user_Id.Equals(userID)
                            select c);
            if (cart != null)
            {
                List<CartClass> list = new List<CartClass>();

                foreach(Cart c in cart)
                {
                    CartClass usercart = new CartClass
                    {
                        CartId = c.Cart_Id,
                        userId = c.user_Id,
                        productId = c.product_Id,
                        image_url =c.img_url,
                        productName = c.Product_Name,
                        productDescription = c.Product_Description,
                        Qty = c.Quantity,
                        unit = Convert.ToDouble(c.Unit_Price),
                        Total = Convert.ToDouble(c.Total)
                    };
                    list.Add(usercart);
                }
                return list;

            }
            else
            {
                return null;
            }
        }

        public bool payment(string type, DateTime date, decimal amount,int userID)
        {
            Payment pay = new Payment
            {
                User_Id = userID,
                Payment_Type = type,
                Payment_Date = date,
                Amount = amount
            };
            db.Payments.InsertOnSubmit(pay);

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch(Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }

        public bool removeItem(int userId, int productId)
        {
            var item = (from i in db.Carts
                        where i.product_Id.Equals(productId) && i.user_Id.Equals(userId)
                        select i).FirstOrDefault();
            if (item != null)
            {
                db.Carts.DeleteOnSubmit(item);
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
            else
            {
                return false;
            }
        }

        public bool increaseQue(int productId, int UserId,int num)
        {
            var item = (from i in db.Carts
                        where i.product_Id.Equals(productId) && i.user_Id.Equals(UserId)
                        select i).FirstOrDefault();
            if (item != null)
            {
                item.Quantity += num;
                try
                {
                    db.SubmitChanges();
                    return true;
                }catch(Exception ex)
                {
                    ex.GetBaseException();
                    return false;
                }
            }
            else
            {
                return false;
            }
               
        }

        public List<ProductD> RangePrice(int min, int max)
        {
            var product = (from p in db.Products
                           where p.ACTIVE.Equals("T") && (p.Price> min) && (p.Price<max)
                           orderby p.Category ascending
                           select p);
            if (product != null)
            {
                List<ProductD> pro = new List<ProductD>();

                foreach (Product prop in product)
                {
                    ProductD prod = new ProductD
                    {

                        ID = prop.Product_Id,
                        name = prop.Name,
                        description = prop.Description,
                        price = (Double)prop.Price,
                        quantity = prop.Quantity,
                        category = prop.Category,
                        brand = prop.Brand,
                        manufacture = prop.manufacture,
                        discount = (Decimal)prop.Discount,
                        image_url = prop.Image_url,
                        active = (Char)prop.ACTIVE


                    };
                    pro.Add(prod);
                }
                return pro;
            }
            else
            {
                return null;
            }
        }

        public List<ProductD> FiltCatPrice(string Category, double price)
        {
            var product = (from p in db.Products
                           where p.ACTIVE.Equals("T") && p.Price.Equals(price)
                           orderby p.Category ascending
                           select p);
            if (product != null)
            {
                List<ProductD> pro = new List<ProductD>();

                foreach (Product prop in product)
                {
                    ProductD prod = new ProductD
                    {

                        ID = prop.Product_Id,
                        name = prop.Name,
                        description = prop.Description,
                        price = (Double)prop.Price,
                        quantity = prop.Quantity,
                        category = prop.Category,
                        brand = prop.Brand,
                        manufacture = prop.manufacture,
                        discount = (Decimal)prop.Discount,
                        image_url = prop.Image_url,
                        active = (Char)prop.ACTIVE


                    };
                    pro.Add(prod);
                }
                return pro;
            }
            else
            {
                return null;
            }
        }
    }
}
        
