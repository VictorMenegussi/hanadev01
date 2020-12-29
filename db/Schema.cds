entity BOM {
    tipoInstalacao : String;
    idTipoOS: String;
    codMaterialSAP: String;
    qtdMin: Decimal;
    qtdMax: Decimal;
    unidadeConsumo: String;
}

entity RegraDeCalculo {
    momento : Integer;
    tipoDeErro: Integer;
    Mensagem: String;
}

entity Parametros {
    parametros : Integer;
    labelParametro: String;
    valor: String;
}

entity TecnicoPorEPO {
    loginTecnico : String;
    CodFornecedorSAP: String;
}