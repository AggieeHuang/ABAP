//@AbapCatalog.sqlViewName: 'Data model for online shop'
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK //#NOT_REQUIRED
@EndUserText.label: 'Data model for online shop'
define root view entity ZAGI_ONLINESHOP
  as select from zag_onlineshop
  association [1..1] to zag_shop_as as _Shop on $projection.Order_Uuid = _Shop.order_uuid
{
  key order_uuid       as Order_Uuid,
      order_id         as Order_Id,
      ordereditem as Ordereditem,
      deliverydate as Deliverydate,
      creationdate as Creationdate,
      pkgid            as PackageId,
      _Shop.costcenter as CostCenter,

      /*Association*/
      _Shop

}
