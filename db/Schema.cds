namespace regrasNamespace;

entity BOM {
    key tipoInstalacao : String(1);
    key idTipoOS       : String(200);
    key codMaterialSAP : String(40);
        qtdMin         : Decimal;
        qtdMax         : Decimal;
        unidadeConsumo : String(3);
}

entity RegraDeCalculo {
    key momento    : Integer;
    key tipoDeErro : Integer;
    Mensagem   : Integer;
}

entity Parametros {
    key parametros     : Integer;
    labelParametro : String;
    valor          : String;
}

entity TecnicoPorEPO {
    key loginTecnico     : String(120);
    CodFornecedorSAP : String(50);
}

entity BOM2ODATA as SELECT from BOM{
    tipoInstalacao,
    idTipoOS,
    '' as descTipoOs: String(50),
    codMaterialSAP,
    '' as descMaterial: String(50),
    qtdMin        ,
    qtdMax        ,
    unidadeConsumo
};

@cds.persistence.exists
entity TipoOs{
    key mandt: String(3);
    key tipo_Os: String(4);
    desc_os: String(50);
    aplicacao: String(1);
}

entity TipoOsHelpOdata as select from TipoOs{
    tipo_Os as tipoOs,
    desc_os as descricaoOs
};