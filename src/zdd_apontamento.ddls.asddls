@AbapCatalog.sqlViewName: 'ZCDS_APONTAMENTO'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - CDS apontamento'
@Metadata.ignorePropagatedAnnotations: true
define view zdd_apontamento as select from ztbl_apontamento
{
    key matricula as Matricula,
    key dia as Dia,
    key seq as Seq,
    duracao as Duracao,
    tipo as Tipo,
    id as Id
}
