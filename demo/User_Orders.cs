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
    
    public partial class User_Orders
    {
        public int ID { get; set; }
        public int ID_User { get; set; }
        public int ID_Order { get; set; }
    
        public virtual Order_ Order_ { get; set; }
        public virtual User_ User_ { get; set; }
    }
}
