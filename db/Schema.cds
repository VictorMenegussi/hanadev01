entity WorkOrder {
    key workOrderID : String;
    idTecnico: String;
    dataAtendimento: String;
    municipio: String;
    materiais: Association to many Material
        on materiais.workOrderID = $self;
    ordenDeServico: Association to many OrdemDeServico
        on ordenDeServico.workOrderID = $self;
}
entity Material {
    key workOrderID: Association to WorkOrder;
    key material: String;
    linha: Integer;
    quantidade: Decimal;
    unidade: String;
}
entity OrdemDeServico {
    key workOrderID: Association to WorkOrder;
    key ordemDeServicoID: String;
    tipo: String;
    tipoDescricao: String;
}