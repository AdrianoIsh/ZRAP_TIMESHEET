@AbapCatalog.sqlViewName: 'ZCDS_FUNCIONARIO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - CDS Funcionarios'
@Metadata.ignorePropagatedAnnotations: true
define view zdd_funcionario as select from ztbl_funcionario
{
    key matricula as Matricula,
    nome as Nome,
    sobrenome as Sobrenome
}
