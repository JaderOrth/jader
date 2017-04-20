unit uMunicipioDTO;

interface



type
  TMunicipioDTO = class
  private
    FidMunicipio: Integer;
    FNome: String;
    FDDD: Integer;
    FCodigoIBGE: Integer;
    FCEP: Currency;
    FEstado: Integer;

    procedure SetCEP(const Value: Currency);
    procedure SetNome(const Value: String);
    procedure SetCodigoIBGE(const Value: Integer);
    procedure SetDDD(const Value: Integer);
    procedure SetEstado(const Value: Integer);
    procedure SetidMunicipio(const Value: Integer);
  public
    property idMunicipio: Integer read FidMunicipio write SetidMunicipio;
    property Nome: string read FNome write SetNome;
    property CodigoIBGE: Integer read FCodigoIBGE write SetCodigoIBGE;
    property CEP: Currency read FCEP write SetCEP;
    property DDD: Integer read FDDD write SetDDD;
    property Estado: Integer read FEstado write SetEstado;
  end;
implementation

{ TMunicipioDTO }

procedure TMunicipioDTO.SetCEP(const Value: Currency);
begin
  FCEP := Value;
end;

procedure TMunicipioDTO.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TMunicipioDTO.SetCodigoIBGE(const Value: Integer);
begin
  FCodigoIBGE := Value;
end;

procedure TMunicipioDTO.SetDDD(const Value: Integer);
begin
  FDDD := Value;
end;

procedure TMunicipioDTO.SetEstado(const Value: Integer);
begin
  FEstado := Value;
end;

procedure TMunicipioDTO.SetidMunicipio(const Value: Integer);
begin
  FidMunicipio := Value;
end;

end.
