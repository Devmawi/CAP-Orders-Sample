using { sap.capire.orders as my } from '../db/schema';
service CatalogService @(path:'/catalog') { 
  
  //@readonly entity Orders as SELECT from my.Order {*, Items };

  @requires: 'authenticated-user'
  entity Orders as projection on my.Order;
  @requires: 'authenticated-user'
  entity OrderItems as projection on my.OrderItem;
  @requires: 'Admin'
  entity Products as projection on my.Product;

  type Request : many { text: String; }

  function add (x:Integer, to:Integer) returns Integer; 
  action doSomething(r: Request) returns String;
}

annotate CatalogService.Orders with @odata.draft.enabled;
//annotate CatalogService.Orders with @(requires: 'any');
