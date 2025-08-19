CLASS zcl_carga_tbl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_tbl IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_apontamento TYPE TABLE OF ztbl_apontamento,
          lt_funcionario TYPE TABLE of ztbl_funcionario.

    DELETE FROM ztbl_apontamento.
    lt_apontamento = VALUE #( ( matricula = '1' dia = '20250202' seq = '1' duracao = '090000' tipo = '1' id = '1' )
                              ( matricula = '2' dia = '20250202' seq = '1' duracao = '040000' tipo = '1' id = '1' )
                              ( matricula = '2' dia = '20250202' seq = '2' duracao = '050000' tipo = '1' id = '1' )
                              ( matricula = '3' dia = '20250202' seq = '1' duracao = '090000' tipo = '2' id = '1' )
                              ( matricula = '4' dia = '20250202' seq = '1' duracao = '090000' tipo = '2' id = '1' )
    ).

    MODIFY ztbl_apontamento FROM TABLE @lt_apontamento.

    if sy-subrc = 0.
     out->write( 'Registros Inseridos para tabela ZTBL_APONTAMENTO' ).
    ENDIF.

       DELETE FROM ztbl_funcionario.
    lt_funcionario = VALUE #( ( matricula = '1' nome = 'Funcionario1'  )
                              ( matricula = '2' nome = 'Funcionario2'  )
                              ( matricula = '3' nome = 'Funcionario3'  )
                              ( matricula = '4' nome = 'Funcionario4' )
    ).

    MODIFY ztbl_funcionario FROM TABLE @lt_funcionario.

    if sy-subrc = 0.
     out->write( 'Registros Inseridos para tabela ZTBL_FUNCIONARIO' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
