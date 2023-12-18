//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK //#NOT_REQUIRED
@EndUserText.label: 'shop projection'
@Metadata.allowExtensions: true
define root view entity ZAGC_ONLINESHOP
  as projection on ZAGI_ONLINESHOP
{
  key Order_Uuid,
      Order_Id,
      Ordereditem,
      Deliverydate,
      Creationdate,
      PackageId,
      CostCenter,
      _Shop.purchasereqn as Purchasereqn
}
