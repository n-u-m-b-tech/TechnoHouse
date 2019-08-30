﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Techno_Service
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="NUMBDATABASE")]
	public partial class NUMBDBDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertCart(Cart instance);
    partial void UpdateCart(Cart instance);
    partial void DeleteCart(Cart instance);
    partial void InsertClient(Client instance);
    partial void UpdateClient(Client instance);
    partial void DeleteClient(Client instance);
    partial void InsertInvoice(Invoice instance);
    partial void UpdateInvoice(Invoice instance);
    partial void DeleteInvoice(Invoice instance);
    partial void InsertProduct(Product instance);
    partial void UpdateProduct(Product instance);
    partial void DeleteProduct(Product instance);
    #endregion
		
		public NUMBDBDataContext() : 
				base(global::Techno_Service.Properties.Settings.Default.NUMBDATABASEConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public NUMBDBDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public NUMBDBDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public NUMBDBDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public NUMBDBDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Cart> Carts
		{
			get
			{
				return this.GetTable<Cart>();
			}
		}
		
		public System.Data.Linq.Table<Client> Clients
		{
			get
			{
				return this.GetTable<Client>();
			}
		}
		
		public System.Data.Linq.Table<Invoice> Invoices
		{
			get
			{
				return this.GetTable<Invoice>();
			}
		}
		
		public System.Data.Linq.Table<Product> Products
		{
			get
			{
				return this.GetTable<Product>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Cart")]
	public partial class Cart : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Cart_Id;
		
		private int _user_Id;
		
		private int _product_Id;
		
		private int _Quantity;
		
		private decimal _Total;
		
		private EntityRef<Client> _Client;
		
		private EntityRef<Product> _Product;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnCart_IdChanging(int value);
    partial void OnCart_IdChanged();
    partial void Onuser_IdChanging(int value);
    partial void Onuser_IdChanged();
    partial void Onproduct_IdChanging(int value);
    partial void Onproduct_IdChanged();
    partial void OnQuantityChanging(int value);
    partial void OnQuantityChanged();
    partial void OnTotalChanging(decimal value);
    partial void OnTotalChanged();
    #endregion
		
		public Cart()
		{
			this._Client = default(EntityRef<Client>);
			this._Product = default(EntityRef<Product>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Cart_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int Cart_Id
		{
			get
			{
				return this._Cart_Id;
			}
			set
			{
				if ((this._Cart_Id != value))
				{
					this.OnCart_IdChanging(value);
					this.SendPropertyChanging();
					this._Cart_Id = value;
					this.SendPropertyChanged("Cart_Id");
					this.OnCart_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_user_Id", DbType="Int NOT NULL")]
		public int user_Id
		{
			get
			{
				return this._user_Id;
			}
			set
			{
				if ((this._user_Id != value))
				{
					if (this._Client.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onuser_IdChanging(value);
					this.SendPropertyChanging();
					this._user_Id = value;
					this.SendPropertyChanged("user_Id");
					this.Onuser_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_product_Id", DbType="Int NOT NULL")]
		public int product_Id
		{
			get
			{
				return this._product_Id;
			}
			set
			{
				if ((this._product_Id != value))
				{
					if (this._Product.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onproduct_IdChanging(value);
					this.SendPropertyChanging();
					this._product_Id = value;
					this.SendPropertyChanged("product_Id");
					this.Onproduct_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Quantity", DbType="Int NOT NULL")]
		public int Quantity
		{
			get
			{
				return this._Quantity;
			}
			set
			{
				if ((this._Quantity != value))
				{
					this.OnQuantityChanging(value);
					this.SendPropertyChanging();
					this._Quantity = value;
					this.SendPropertyChanged("Quantity");
					this.OnQuantityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Total", DbType="Money NOT NULL")]
		public decimal Total
		{
			get
			{
				return this._Total;
			}
			set
			{
				if ((this._Total != value))
				{
					this.OnTotalChanging(value);
					this.SendPropertyChanging();
					this._Total = value;
					this.SendPropertyChanged("Total");
					this.OnTotalChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Client_Cart", Storage="_Client", ThisKey="user_Id", OtherKey="Client_Id", IsForeignKey=true)]
		public Client Client
		{
			get
			{
				return this._Client.Entity;
			}
			set
			{
				Client previousValue = this._Client.Entity;
				if (((previousValue != value) 
							|| (this._Client.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Client.Entity = null;
						previousValue.Carts.Remove(this);
					}
					this._Client.Entity = value;
					if ((value != null))
					{
						value.Carts.Add(this);
						this._user_Id = value.Client_Id;
					}
					else
					{
						this._user_Id = default(int);
					}
					this.SendPropertyChanged("Client");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Product_Cart", Storage="_Product", ThisKey="product_Id", OtherKey="Product_Id", IsForeignKey=true)]
		public Product Product
		{
			get
			{
				return this._Product.Entity;
			}
			set
			{
				Product previousValue = this._Product.Entity;
				if (((previousValue != value) 
							|| (this._Product.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Product.Entity = null;
						previousValue.Carts.Remove(this);
					}
					this._Product.Entity = value;
					if ((value != null))
					{
						value.Carts.Add(this);
						this._product_Id = value.Product_Id;
					}
					else
					{
						this._product_Id = default(int);
					}
					this.SendPropertyChanged("Product");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Client")]
	public partial class Client : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Client_Id;
		
		private string _Title;
		
		private string _Name;
		
		private string _Surname;
		
		private string _Contacts;
		
		private string _Email;
		
		private string _Username;
		
		private string _Password;
		
		private string _Address1;
		
		private string _Address2;
		
		private string _City;
		
		private string _Province;
		
		private string _ZipCode;
		
		private string _User_type;
		
		private System.Nullable<char> _Active;
		
		private EntitySet<Cart> _Carts;
		
		private EntitySet<Invoice> _Invoices;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnClient_IdChanging(int value);
    partial void OnClient_IdChanged();
    partial void OnTitleChanging(string value);
    partial void OnTitleChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnSurnameChanging(string value);
    partial void OnSurnameChanged();
    partial void OnContactsChanging(string value);
    partial void OnContactsChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnUsernameChanging(string value);
    partial void OnUsernameChanged();
    partial void OnPasswordChanging(string value);
    partial void OnPasswordChanged();
    partial void OnAddress1Changing(string value);
    partial void OnAddress1Changed();
    partial void OnAddress2Changing(string value);
    partial void OnAddress2Changed();
    partial void OnCityChanging(string value);
    partial void OnCityChanged();
    partial void OnProvinceChanging(string value);
    partial void OnProvinceChanged();
    partial void OnZipCodeChanging(string value);
    partial void OnZipCodeChanged();
    partial void OnUser_typeChanging(string value);
    partial void OnUser_typeChanged();
    partial void OnActiveChanging(System.Nullable<char> value);
    partial void OnActiveChanged();
    #endregion
		
		public Client()
		{
			this._Carts = new EntitySet<Cart>(new Action<Cart>(this.attach_Carts), new Action<Cart>(this.detach_Carts));
			this._Invoices = new EntitySet<Invoice>(new Action<Invoice>(this.attach_Invoices), new Action<Invoice>(this.detach_Invoices));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Client_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Client_Id
		{
			get
			{
				return this._Client_Id;
			}
			set
			{
				if ((this._Client_Id != value))
				{
					this.OnClient_IdChanging(value);
					this.SendPropertyChanging();
					this._Client_Id = value;
					this.SendPropertyChanged("Client_Id");
					this.OnClient_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Title", DbType="VarChar(MAX)")]
		public string Title
		{
			get
			{
				return this._Title;
			}
			set
			{
				if ((this._Title != value))
				{
					this.OnTitleChanging(value);
					this.SendPropertyChanging();
					this._Title = value;
					this.SendPropertyChanged("Title");
					this.OnTitleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="VarChar(MAX)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Surname", DbType="VarChar(MAX)")]
		public string Surname
		{
			get
			{
				return this._Surname;
			}
			set
			{
				if ((this._Surname != value))
				{
					this.OnSurnameChanging(value);
					this.SendPropertyChanging();
					this._Surname = value;
					this.SendPropertyChanged("Surname");
					this.OnSurnameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Contacts", DbType="VarChar(MAX)")]
		public string Contacts
		{
			get
			{
				return this._Contacts;
			}
			set
			{
				if ((this._Contacts != value))
				{
					this.OnContactsChanging(value);
					this.SendPropertyChanging();
					this._Contacts = value;
					this.SendPropertyChanged("Contacts");
					this.OnContactsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(MAX)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Username", DbType="VarChar(MAX)")]
		public string Username
		{
			get
			{
				return this._Username;
			}
			set
			{
				if ((this._Username != value))
				{
					this.OnUsernameChanging(value);
					this.SendPropertyChanging();
					this._Username = value;
					this.SendPropertyChanged("Username");
					this.OnUsernameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Password", DbType="VarChar(MAX)")]
		public string Password
		{
			get
			{
				return this._Password;
			}
			set
			{
				if ((this._Password != value))
				{
					this.OnPasswordChanging(value);
					this.SendPropertyChanging();
					this._Password = value;
					this.SendPropertyChanged("Password");
					this.OnPasswordChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Address1", DbType="VarChar(MAX)")]
		public string Address1
		{
			get
			{
				return this._Address1;
			}
			set
			{
				if ((this._Address1 != value))
				{
					this.OnAddress1Changing(value);
					this.SendPropertyChanging();
					this._Address1 = value;
					this.SendPropertyChanged("Address1");
					this.OnAddress1Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Address2", DbType="VarChar(MAX)")]
		public string Address2
		{
			get
			{
				return this._Address2;
			}
			set
			{
				if ((this._Address2 != value))
				{
					this.OnAddress2Changing(value);
					this.SendPropertyChanging();
					this._Address2 = value;
					this.SendPropertyChanged("Address2");
					this.OnAddress2Changed();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(MAX)")]
		public string City
		{
			get
			{
				return this._City;
			}
			set
			{
				if ((this._City != value))
				{
					this.OnCityChanging(value);
					this.SendPropertyChanging();
					this._City = value;
					this.SendPropertyChanged("City");
					this.OnCityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Province", DbType="VarChar(MAX)")]
		public string Province
		{
			get
			{
				return this._Province;
			}
			set
			{
				if ((this._Province != value))
				{
					this.OnProvinceChanging(value);
					this.SendPropertyChanging();
					this._Province = value;
					this.SendPropertyChanged("Province");
					this.OnProvinceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ZipCode", DbType="VarChar(MAX)")]
		public string ZipCode
		{
			get
			{
				return this._ZipCode;
			}
			set
			{
				if ((this._ZipCode != value))
				{
					this.OnZipCodeChanging(value);
					this.SendPropertyChanging();
					this._ZipCode = value;
					this.SendPropertyChanged("ZipCode");
					this.OnZipCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_User_type", DbType="VarChar(MAX)")]
		public string User_type
		{
			get
			{
				return this._User_type;
			}
			set
			{
				if ((this._User_type != value))
				{
					this.OnUser_typeChanging(value);
					this.SendPropertyChanging();
					this._User_type = value;
					this.SendPropertyChanged("User_type");
					this.OnUser_typeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Active", DbType="Char(1)")]
		public System.Nullable<char> Active
		{
			get
			{
				return this._Active;
			}
			set
			{
				if ((this._Active != value))
				{
					this.OnActiveChanging(value);
					this.SendPropertyChanging();
					this._Active = value;
					this.SendPropertyChanged("Active");
					this.OnActiveChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Client_Cart", Storage="_Carts", ThisKey="Client_Id", OtherKey="user_Id")]
		public EntitySet<Cart> Carts
		{
			get
			{
				return this._Carts;
			}
			set
			{
				this._Carts.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Client_Invoice", Storage="_Invoices", ThisKey="Client_Id", OtherKey="client_id")]
		public EntitySet<Invoice> Invoices
		{
			get
			{
				return this._Invoices;
			}
			set
			{
				this._Invoices.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Carts(Cart entity)
		{
			this.SendPropertyChanging();
			entity.Client = this;
		}
		
		private void detach_Carts(Cart entity)
		{
			this.SendPropertyChanging();
			entity.Client = null;
		}
		
		private void attach_Invoices(Invoice entity)
		{
			this.SendPropertyChanging();
			entity.Client = this;
		}
		
		private void detach_Invoices(Invoice entity)
		{
			this.SendPropertyChanging();
			entity.Client = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Invoice")]
	public partial class Invoice : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Invoice_Id;
		
		private int _client_id;
		
		private int _Product_Id;
		
		private System.Nullable<int> _quantity;
		
		private string _Description;
		
		private System.Nullable<decimal> _Unit_Price;
		
		private System.Nullable<decimal> _Tot_price;
		
		private System.Nullable<decimal> _Invoice_total;
		
		private EntityRef<Client> _Client;
		
		private EntityRef<Product> _Product;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnInvoice_IdChanging(int value);
    partial void OnInvoice_IdChanged();
    partial void Onclient_idChanging(int value);
    partial void Onclient_idChanged();
    partial void OnProduct_IdChanging(int value);
    partial void OnProduct_IdChanged();
    partial void OnquantityChanging(System.Nullable<int> value);
    partial void OnquantityChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnUnit_PriceChanging(System.Nullable<decimal> value);
    partial void OnUnit_PriceChanged();
    partial void OnTot_priceChanging(System.Nullable<decimal> value);
    partial void OnTot_priceChanged();
    partial void OnInvoice_totalChanging(System.Nullable<decimal> value);
    partial void OnInvoice_totalChanged();
    #endregion
		
		public Invoice()
		{
			this._Client = default(EntityRef<Client>);
			this._Product = default(EntityRef<Product>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Invoice_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int Invoice_Id
		{
			get
			{
				return this._Invoice_Id;
			}
			set
			{
				if ((this._Invoice_Id != value))
				{
					this.OnInvoice_IdChanging(value);
					this.SendPropertyChanging();
					this._Invoice_Id = value;
					this.SendPropertyChanged("Invoice_Id");
					this.OnInvoice_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_client_id", DbType="Int NOT NULL")]
		public int client_id
		{
			get
			{
				return this._client_id;
			}
			set
			{
				if ((this._client_id != value))
				{
					if (this._Client.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onclient_idChanging(value);
					this.SendPropertyChanging();
					this._client_id = value;
					this.SendPropertyChanged("client_id");
					this.Onclient_idChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Product_Id", DbType="Int NOT NULL")]
		public int Product_Id
		{
			get
			{
				return this._Product_Id;
			}
			set
			{
				if ((this._Product_Id != value))
				{
					if (this._Product.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnProduct_IdChanging(value);
					this.SendPropertyChanging();
					this._Product_Id = value;
					this.SendPropertyChanged("Product_Id");
					this.OnProduct_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_quantity", DbType="Int")]
		public System.Nullable<int> quantity
		{
			get
			{
				return this._quantity;
			}
			set
			{
				if ((this._quantity != value))
				{
					this.OnquantityChanging(value);
					this.SendPropertyChanging();
					this._quantity = value;
					this.SendPropertyChanged("quantity");
					this.OnquantityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="VarChar(MAX)")]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Unit_Price", DbType="Money")]
		public System.Nullable<decimal> Unit_Price
		{
			get
			{
				return this._Unit_Price;
			}
			set
			{
				if ((this._Unit_Price != value))
				{
					this.OnUnit_PriceChanging(value);
					this.SendPropertyChanging();
					this._Unit_Price = value;
					this.SendPropertyChanged("Unit_Price");
					this.OnUnit_PriceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Tot_price", DbType="Money")]
		public System.Nullable<decimal> Tot_price
		{
			get
			{
				return this._Tot_price;
			}
			set
			{
				if ((this._Tot_price != value))
				{
					this.OnTot_priceChanging(value);
					this.SendPropertyChanging();
					this._Tot_price = value;
					this.SendPropertyChanged("Tot_price");
					this.OnTot_priceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Invoice_total", DbType="Money")]
		public System.Nullable<decimal> Invoice_total
		{
			get
			{
				return this._Invoice_total;
			}
			set
			{
				if ((this._Invoice_total != value))
				{
					this.OnInvoice_totalChanging(value);
					this.SendPropertyChanging();
					this._Invoice_total = value;
					this.SendPropertyChanged("Invoice_total");
					this.OnInvoice_totalChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Client_Invoice", Storage="_Client", ThisKey="client_id", OtherKey="Client_Id", IsForeignKey=true)]
		public Client Client
		{
			get
			{
				return this._Client.Entity;
			}
			set
			{
				Client previousValue = this._Client.Entity;
				if (((previousValue != value) 
							|| (this._Client.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Client.Entity = null;
						previousValue.Invoices.Remove(this);
					}
					this._Client.Entity = value;
					if ((value != null))
					{
						value.Invoices.Add(this);
						this._client_id = value.Client_Id;
					}
					else
					{
						this._client_id = default(int);
					}
					this.SendPropertyChanged("Client");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Product_Invoice", Storage="_Product", ThisKey="Product_Id", OtherKey="Product_Id", IsForeignKey=true)]
		public Product Product
		{
			get
			{
				return this._Product.Entity;
			}
			set
			{
				Product previousValue = this._Product.Entity;
				if (((previousValue != value) 
							|| (this._Product.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Product.Entity = null;
						previousValue.Invoices.Remove(this);
					}
					this._Product.Entity = value;
					if ((value != null))
					{
						value.Invoices.Add(this);
						this._Product_Id = value.Product_Id;
					}
					else
					{
						this._Product_Id = default(int);
					}
					this.SendPropertyChanged("Product");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Product")]
	public partial class Product : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Product_Id;
		
		private string _Name;
		
		private string _Description;
		
		private decimal _Price;
		
		private int _Quantity;
		
		private string _Category;
		
		private System.Nullable<char> _ACTIVE;
		
		private string _Brand;
		
		private string _manufacture;
		
		private System.Nullable<decimal> _Discount;
		
		private string _Image_url;
		
		private EntitySet<Cart> _Carts;
		
		private EntitySet<Invoice> _Invoices;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnProduct_IdChanging(int value);
    partial void OnProduct_IdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnPriceChanging(decimal value);
    partial void OnPriceChanged();
    partial void OnQuantityChanging(int value);
    partial void OnQuantityChanged();
    partial void OnCategoryChanging(string value);
    partial void OnCategoryChanged();
    partial void OnACTIVEChanging(System.Nullable<char> value);
    partial void OnACTIVEChanged();
    partial void OnBrandChanging(string value);
    partial void OnBrandChanged();
    partial void OnmanufactureChanging(string value);
    partial void OnmanufactureChanged();
    partial void OnDiscountChanging(System.Nullable<decimal> value);
    partial void OnDiscountChanged();
    partial void OnImage_urlChanging(string value);
    partial void OnImage_urlChanged();
    #endregion
		
		public Product()
		{
			this._Carts = new EntitySet<Cart>(new Action<Cart>(this.attach_Carts), new Action<Cart>(this.detach_Carts));
			this._Invoices = new EntitySet<Invoice>(new Action<Invoice>(this.attach_Invoices), new Action<Invoice>(this.detach_Invoices));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Product_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Product_Id
		{
			get
			{
				return this._Product_Id;
			}
			set
			{
				if ((this._Product_Id != value))
				{
					this.OnProduct_IdChanging(value);
					this.SendPropertyChanging();
					this._Product_Id = value;
					this.SendPropertyChanged("Product_Id");
					this.OnProduct_IdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Price", DbType="Money NOT NULL")]
		public decimal Price
		{
			get
			{
				return this._Price;
			}
			set
			{
				if ((this._Price != value))
				{
					this.OnPriceChanging(value);
					this.SendPropertyChanging();
					this._Price = value;
					this.SendPropertyChanged("Price");
					this.OnPriceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Quantity", DbType="Int NOT NULL")]
		public int Quantity
		{
			get
			{
				return this._Quantity;
			}
			set
			{
				if ((this._Quantity != value))
				{
					this.OnQuantityChanging(value);
					this.SendPropertyChanging();
					this._Quantity = value;
					this.SendPropertyChanged("Quantity");
					this.OnQuantityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Category", DbType="VarChar(MAX)")]
		public string Category
		{
			get
			{
				return this._Category;
			}
			set
			{
				if ((this._Category != value))
				{
					this.OnCategoryChanging(value);
					this.SendPropertyChanging();
					this._Category = value;
					this.SendPropertyChanged("Category");
					this.OnCategoryChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ACTIVE", DbType="Char(1)")]
		public System.Nullable<char> ACTIVE
		{
			get
			{
				return this._ACTIVE;
			}
			set
			{
				if ((this._ACTIVE != value))
				{
					this.OnACTIVEChanging(value);
					this.SendPropertyChanging();
					this._ACTIVE = value;
					this.SendPropertyChanged("ACTIVE");
					this.OnACTIVEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Brand", DbType="VarChar(MAX)")]
		public string Brand
		{
			get
			{
				return this._Brand;
			}
			set
			{
				if ((this._Brand != value))
				{
					this.OnBrandChanging(value);
					this.SendPropertyChanging();
					this._Brand = value;
					this.SendPropertyChanged("Brand");
					this.OnBrandChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_manufacture", DbType="VarChar(MAX)")]
		public string manufacture
		{
			get
			{
				return this._manufacture;
			}
			set
			{
				if ((this._manufacture != value))
				{
					this.OnmanufactureChanging(value);
					this.SendPropertyChanging();
					this._manufacture = value;
					this.SendPropertyChanged("manufacture");
					this.OnmanufactureChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Discount", DbType="Decimal(18,0)")]
		public System.Nullable<decimal> Discount
		{
			get
			{
				return this._Discount;
			}
			set
			{
				if ((this._Discount != value))
				{
					this.OnDiscountChanging(value);
					this.SendPropertyChanging();
					this._Discount = value;
					this.SendPropertyChanged("Discount");
					this.OnDiscountChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Image_url", DbType="VarChar(MAX)")]
		public string Image_url
		{
			get
			{
				return this._Image_url;
			}
			set
			{
				if ((this._Image_url != value))
				{
					this.OnImage_urlChanging(value);
					this.SendPropertyChanging();
					this._Image_url = value;
					this.SendPropertyChanged("Image_url");
					this.OnImage_urlChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Product_Cart", Storage="_Carts", ThisKey="Product_Id", OtherKey="product_Id")]
		public EntitySet<Cart> Carts
		{
			get
			{
				return this._Carts;
			}
			set
			{
				this._Carts.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Product_Invoice", Storage="_Invoices", ThisKey="Product_Id", OtherKey="Product_Id")]
		public EntitySet<Invoice> Invoices
		{
			get
			{
				return this._Invoices;
			}
			set
			{
				this._Invoices.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Carts(Cart entity)
		{
			this.SendPropertyChanging();
			entity.Product = this;
		}
		
		private void detach_Carts(Cart entity)
		{
			this.SendPropertyChanging();
			entity.Product = null;
		}
		
		private void attach_Invoices(Invoice entity)
		{
			this.SendPropertyChanging();
			entity.Product = this;
		}
		
		private void detach_Invoices(Invoice entity)
		{
			this.SendPropertyChanging();
			entity.Product = null;
		}
	}
}
#pragma warning restore 1591
