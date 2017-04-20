unit uClassEstadoControler;

interface

uses
  System.sysUtils,
  uClassEstadoModel, uEstadoDTO;

type
  TEstadoControler = class
  private
    oEstadoModel: TEstadoModel;
  public
    function Salvar(const AEstado: TEstadoDTO): Boolean;
    function BuscarValor(var AEstado: TEstadoDTO): Boolean;
    function Excluir(const idEstado: Integer): Boolean;

    constructor Create;
    destructor Destroy; override;
  end;
implementation

{ TEstadoControler }

function TEstadoControler.BuscarValor(var AEstado: TEstadoDTO): Boolean;
begin
  Result := oEstadoModel.BuscarValor(AEstado);
end;

constructor TEstadoControler.Create;
begin
  if (not(Assigned(oEstadoModel))) then
    oEstadoModel := TEstadoModel.Create;
end;

destructor TEstadoControler.Destroy;
begin
  if (Assigned(oEstadoModel)) then
    FreeAndNil(oEstadoModel);
  inherited;
end;

function TEstadoControler.Excluir(const idEstado: Integer): Boolean;
begin
  Result := oEstadoModel.Excluir(idEstado);
end;

function TEstadoControler.Salvar(const AEstado: TEstadoDTO): Boolean;
begin
  if (AEstado.IdEstado > 0) then
  begin
    Result := oEstadoModel.Update(AEstado);
  end
  else
  begin
    AEstado.IdEstado := oEstadoModel.BuscarID;
    Result := oEstadoModel.Insert(AEstado);
  end;
end;

end.
