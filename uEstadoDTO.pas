unit uEstadoDTO;

interface
type
  TEstadoDTO = class
  private
    FUF: String;
    FIdEstado: Integer;
    FNome: String;

    procedure SetIdEstado(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetUF(const Value: String);

  public
    property IdEstado: Integer read FIdEstado write SetIdEstado;
    property UF: String read FUF write SetUF;
    property Nome: String read FNome write SetNome;
  end;
implementation

{ TEstadoDTO }

procedure TEstadoDTO.SetIdEstado(const Value: Integer);
begin
  FIdEstado := Value;
end;

procedure TEstadoDTO.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TEstadoDTO.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
