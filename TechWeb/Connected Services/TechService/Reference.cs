﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TechWeb.TechService {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="User", Namespace="http://schemas.datacontract.org/2004/07/Techno_Service")]
    [System.SerializableAttribute()]
    public partial class User : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string TitleField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ZipCodeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string address1Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string address2Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string cityField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string contacsField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string emailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string passwordField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string provinceField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string surnameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string usernameField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Id {
            get {
                return this.IdField;
            }
            set {
                if ((this.IdField.Equals(value) != true)) {
                    this.IdField = value;
                    this.RaisePropertyChanged("Id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Title {
            get {
                return this.TitleField;
            }
            set {
                if ((object.ReferenceEquals(this.TitleField, value) != true)) {
                    this.TitleField = value;
                    this.RaisePropertyChanged("Title");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string ZipCode {
            get {
                return this.ZipCodeField;
            }
            set {
                if ((object.ReferenceEquals(this.ZipCodeField, value) != true)) {
                    this.ZipCodeField = value;
                    this.RaisePropertyChanged("ZipCode");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string address1 {
            get {
                return this.address1Field;
            }
            set {
                if ((object.ReferenceEquals(this.address1Field, value) != true)) {
                    this.address1Field = value;
                    this.RaisePropertyChanged("address1");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string address2 {
            get {
                return this.address2Field;
            }
            set {
                if ((object.ReferenceEquals(this.address2Field, value) != true)) {
                    this.address2Field = value;
                    this.RaisePropertyChanged("address2");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string city {
            get {
                return this.cityField;
            }
            set {
                if ((object.ReferenceEquals(this.cityField, value) != true)) {
                    this.cityField = value;
                    this.RaisePropertyChanged("city");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string contacs {
            get {
                return this.contacsField;
            }
            set {
                if ((object.ReferenceEquals(this.contacsField, value) != true)) {
                    this.contacsField = value;
                    this.RaisePropertyChanged("contacs");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string email {
            get {
                return this.emailField;
            }
            set {
                if ((object.ReferenceEquals(this.emailField, value) != true)) {
                    this.emailField = value;
                    this.RaisePropertyChanged("email");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string name {
            get {
                return this.nameField;
            }
            set {
                if ((object.ReferenceEquals(this.nameField, value) != true)) {
                    this.nameField = value;
                    this.RaisePropertyChanged("name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string password {
            get {
                return this.passwordField;
            }
            set {
                if ((object.ReferenceEquals(this.passwordField, value) != true)) {
                    this.passwordField = value;
                    this.RaisePropertyChanged("password");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string province {
            get {
                return this.provinceField;
            }
            set {
                if ((object.ReferenceEquals(this.provinceField, value) != true)) {
                    this.provinceField = value;
                    this.RaisePropertyChanged("province");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string surname {
            get {
                return this.surnameField;
            }
            set {
                if ((object.ReferenceEquals(this.surnameField, value) != true)) {
                    this.surnameField = value;
                    this.RaisePropertyChanged("surname");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string username {
            get {
                return this.usernameField;
            }
            set {
                if ((object.ReferenceEquals(this.usernameField, value) != true)) {
                    this.usernameField = value;
                    this.RaisePropertyChanged("username");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ProductD", Namespace="http://schemas.datacontract.org/2004/07/Techno_Service")]
    [System.SerializableAttribute()]
    public partial class ProductD : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string categoryField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string descriptionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private double priceField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int quantityField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int ID {
            get {
                return this.IDField;
            }
            set {
                if ((this.IDField.Equals(value) != true)) {
                    this.IDField = value;
                    this.RaisePropertyChanged("ID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string category {
            get {
                return this.categoryField;
            }
            set {
                if ((object.ReferenceEquals(this.categoryField, value) != true)) {
                    this.categoryField = value;
                    this.RaisePropertyChanged("category");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string description {
            get {
                return this.descriptionField;
            }
            set {
                if ((object.ReferenceEquals(this.descriptionField, value) != true)) {
                    this.descriptionField = value;
                    this.RaisePropertyChanged("description");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string name {
            get {
                return this.nameField;
            }
            set {
                if ((object.ReferenceEquals(this.nameField, value) != true)) {
                    this.nameField = value;
                    this.RaisePropertyChanged("name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public double price {
            get {
                return this.priceField;
            }
            set {
                if ((this.priceField.Equals(value) != true)) {
                    this.priceField = value;
                    this.RaisePropertyChanged("price");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int quantity {
            get {
                return this.quantityField;
            }
            set {
                if ((this.quantityField.Equals(value) != true)) {
                    this.quantityField = value;
                    this.RaisePropertyChanged("quantity");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="TechService.ITechno_service")]
    public interface ITechno_service {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/UserRegister", ReplyAction="http://tempuri.org/ITechno_service/UserRegisterResponse")]
        bool UserRegister(TechWeb.TechService.User user);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/UserRegister", ReplyAction="http://tempuri.org/ITechno_service/UserRegisterResponse")]
        System.Threading.Tasks.Task<bool> UserRegisterAsync(TechWeb.TechService.User user);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/Login", ReplyAction="http://tempuri.org/ITechno_service/LoginResponse")]
        bool Login(string email, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/Login", ReplyAction="http://tempuri.org/ITechno_service/LoginResponse")]
        System.Threading.Tasks.Task<bool> LoginAsync(string email, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/userinfor_Retrieval", ReplyAction="http://tempuri.org/ITechno_service/userinfor_RetrievalResponse")]
        TechWeb.TechService.User userinfor_Retrieval(string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/userinfor_Retrieval", ReplyAction="http://tempuri.org/ITechno_service/userinfor_RetrievalResponse")]
        System.Threading.Tasks.Task<TechWeb.TechService.User> userinfor_RetrievalAsync(string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/resetPass", ReplyAction="http://tempuri.org/ITechno_service/resetPassResponse")]
        bool resetPass(int email, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/resetPass", ReplyAction="http://tempuri.org/ITechno_service/resetPassResponse")]
        System.Threading.Tasks.Task<bool> resetPassAsync(int email, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/updateuser", ReplyAction="http://tempuri.org/ITechno_service/updateuserResponse")]
        bool updateuser(TechWeb.TechService.User user, int Id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/updateuser", ReplyAction="http://tempuri.org/ITechno_service/updateuserResponse")]
        System.Threading.Tasks.Task<bool> updateuserAsync(TechWeb.TechService.User user, int Id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/search_by_cat", ReplyAction="http://tempuri.org/ITechno_service/search_by_catResponse")]
        TechWeb.TechService.ProductD[] search_by_cat(string category);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/search_by_cat", ReplyAction="http://tempuri.org/ITechno_service/search_by_catResponse")]
        System.Threading.Tasks.Task<TechWeb.TechService.ProductD[]> search_by_catAsync(string category);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/search_by_price", ReplyAction="http://tempuri.org/ITechno_service/search_by_priceResponse")]
        TechWeb.TechService.ProductD[] search_by_price(string value);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/search_by_price", ReplyAction="http://tempuri.org/ITechno_service/search_by_priceResponse")]
        System.Threading.Tasks.Task<TechWeb.TechService.ProductD[]> search_by_priceAsync(string value);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/AddProduct", ReplyAction="http://tempuri.org/ITechno_service/AddProductResponse")]
        int AddProduct(int ID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/AddProduct", ReplyAction="http://tempuri.org/ITechno_service/AddProductResponse")]
        System.Threading.Tasks.Task<int> AddProductAsync(int ID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/EditProduct", ReplyAction="http://tempuri.org/ITechno_service/EditProductResponse")]
        int EditProduct(int ID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ITechno_service/EditProduct", ReplyAction="http://tempuri.org/ITechno_service/EditProductResponse")]
        System.Threading.Tasks.Task<int> EditProductAsync(int ID);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ITechno_serviceChannel : TechWeb.TechService.ITechno_service, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Techno_serviceClient : System.ServiceModel.ClientBase<TechWeb.TechService.ITechno_service>, TechWeb.TechService.ITechno_service {
        
        public Techno_serviceClient() {
        }
        
        public Techno_serviceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Techno_serviceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Techno_serviceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Techno_serviceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool UserRegister(TechWeb.TechService.User user) {
            return base.Channel.UserRegister(user);
        }
        
        public System.Threading.Tasks.Task<bool> UserRegisterAsync(TechWeb.TechService.User user) {
            return base.Channel.UserRegisterAsync(user);
        }
        
        public bool Login(string email, string password) {
            return base.Channel.Login(email, password);
        }
        
        public System.Threading.Tasks.Task<bool> LoginAsync(string email, string password) {
            return base.Channel.LoginAsync(email, password);
        }
        
        public TechWeb.TechService.User userinfor_Retrieval(string email) {
            return base.Channel.userinfor_Retrieval(email);
        }
        
        public System.Threading.Tasks.Task<TechWeb.TechService.User> userinfor_RetrievalAsync(string email) {
            return base.Channel.userinfor_RetrievalAsync(email);
        }
        
        public bool resetPass(int email, string password) {
            return base.Channel.resetPass(email, password);
        }
        
        public System.Threading.Tasks.Task<bool> resetPassAsync(int email, string password) {
            return base.Channel.resetPassAsync(email, password);
        }
        
        public bool updateuser(TechWeb.TechService.User user, int Id) {
            return base.Channel.updateuser(user, Id);
        }
        
        public System.Threading.Tasks.Task<bool> updateuserAsync(TechWeb.TechService.User user, int Id) {
            return base.Channel.updateuserAsync(user, Id);
        }
        
        public TechWeb.TechService.ProductD[] search_by_cat(string category) {
            return base.Channel.search_by_cat(category);
        }
        
        public System.Threading.Tasks.Task<TechWeb.TechService.ProductD[]> search_by_catAsync(string category) {
            return base.Channel.search_by_catAsync(category);
        }
        
        public TechWeb.TechService.ProductD[] search_by_price(string value) {
            return base.Channel.search_by_price(value);
        }
        
        public System.Threading.Tasks.Task<TechWeb.TechService.ProductD[]> search_by_priceAsync(string value) {
            return base.Channel.search_by_priceAsync(value);
        }
        
        public int AddProduct(int ID) {
            return base.Channel.AddProduct(ID);
        }
        
        public System.Threading.Tasks.Task<int> AddProductAsync(int ID) {
            return base.Channel.AddProductAsync(ID);
        }
        
        public int EditProduct(int ID) {
            return base.Channel.EditProduct(ID);
        }
        
        public System.Threading.Tasks.Task<int> EditProductAsync(int ID) {
            return base.Channel.EditProductAsync(ID);
        }
    }
}
