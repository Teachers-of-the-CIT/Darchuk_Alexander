//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace demo
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order_
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order_()
        {
            this.Order_In_Points = new HashSet<Order_In_Points>();
            this.Product_In_Order = new HashSet<Product_In_Order>();
            this.User_Orders = new HashSet<User_Orders>();
        }
    
        public int ID { get; set; }
        public string CodeForSeparation { get; set; }
        public System.DateTime Current_Date_ { get; set; }
        public System.DateTime DateOfSeparation { get; set; }
        public string Status_ { get; set; }
        public string FIO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order_In_Points> Order_In_Points { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product_In_Order> Product_In_Order { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<User_Orders> User_Orders { get; set; }
    }
}
