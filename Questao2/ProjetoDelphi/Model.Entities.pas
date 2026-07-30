unit Model.Entities;

interface

type
  TCliente = class
  private
    FIdCliente: Integer;
    FNome: string;
    FCpf: string;
  public
    property IdCliente: Integer read FIdCliente write FIdCliente;
    property Nome: string read FNome write FNome;
    property Cpf: string read FCpf write FCpf;
    constructor Create(AId: Integer; ANome, ACpf: string);
  end;

  TCarro = class
  private
    FIdCarro: Integer;
    FModelo: string;
    FAnoLancamento: Integer;
  public
    property IdCarro: Integer read FIdCarro write FIdCarro;
    property Modelo: string read FModelo write FModelo;
    property AnoLancamento: Integer read FAnoLancamento write FAnoLancamento;
    constructor Create(AId: Integer; AModelo: string; AAno: Integer);
  end;

  TVenda = class
  private
    FIdVenda: Integer;
    FIdCliente: Integer;
    FIdCarro: Integer;
    FDataVenda: TDateTime;
  public
    property IdVenda: Integer read FIdVenda write FIdVenda;
    property IdCliente: Integer read FIdCliente write FIdCliente;
    property IdCarro: Integer read FIdCarro write FIdCarro;
    property DataVenda: TDateTime read FDataVenda write FDataVenda;
    constructor Create(AId, AIdCliente, AIdCarro: Integer; AData: TDateTime);
  end;

implementation

{ TCliente }
constructor TCliente.Create(AId: Integer; ANome, ACpf: string);
begin
  FIdCliente := AId;
  FNome := ANome;
  FCpf := ACpf;
end;

{ TCarro }
constructor TCarro.Create(AId: Integer; AModelo: string; AAno: Integer);
begin
  FIdCarro := AId;
  FModelo := AModelo;
  FAnoLancamento := AAno;
end;

{ TVenda }
constructor TVenda.Create(AId, AIdCliente, AIdCarro: Integer; AData: TDateTime);
begin
  FIdVenda := AId;
  FIdCliente := AIdCliente;
  FIdCarro := AIdCarro;
  FDataVenda := AData;
end;

end.
