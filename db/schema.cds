using { Currency, managed, sap } from '@sap/cds/common';
namespace sap.capire.orders; 

entity Order : managed { 
  key ID : UUID;
  @Search.defaultSearchElement: true
  text  : localized String(1111);
  //Items  : Association to many OrderItem on Items.order = $self;
  Items  : Composition of many OrderItem on Items.order = $self; //! Important if you want to simulatanously create items
}

entity OrderItem : managed { 
  key ID : UUID;
  text   : String(1111);
  quantity : Integer;
  //product: Association to one Product;
  product: Association to one Product on product.ID = $self.product_ID;
  product_ID : type of Product:ID;
  order  : Association to Order; 

}

entity Product : managed {
    key ID : UUID;
    name: String(1111);
    @Semantics.amount.currencyCode: 'currency'
    amount    : Decimal(10,2);
    @Semantics.currencyCode
    currency  : String(3);
}
