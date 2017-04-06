unit uClassEstadoControler;

interface

uses
  System.SysUtils,
  uEstadoDTO, uClassEstadoModel;

type
  TEstadoControler = class
  private
    oEstadoDTO: TEstadoTDO;
    oEstadoModel: TEstadoModel;
  public
    function Salvar(const AEstado: TEstadoTDO): Boolean;
    function Selecionar(var AEstado: TEstadoTDO): Boolean;
    function Limpar(var AEstado: TEstadoTDO): Boolean;
    function Excluir(const AEstado: TEstadoTDO): Boolean;


    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TEstadoControler }

constructor TEstadoControler.Create;
begin
  oEstadoDTO := TEstadoTDO.Create;

  oEstadoModel := TEstadoModel.Create;
end;

destructor TEstadoControler.Destroy;
begin
  if (Assigned(oEstadoDTO)) then
    FreeAndNil(oEstadoDTO);

  if (Assigned(oEstadoModel)) then
    FreeAndNil(oEstadoModel);
  inherited;
end;

function TEstadoControler.Excluir(const AEstado: TEstadoTDO): Boolean;
begin
  Result := oEstadoModel.Delet(AEstado);
end;

function TEstadoControler.Limpar(var AEstado: TEstadoTDO): Boolean;
begin
  AEstado.IdEstado := 0;
  AEstado.UF := EmptyStr;
  AEstado.Nome := EmptyStr;
end;

function TEstadoControler.Salvar(const AEstado: TEstadoTDO): Boolean;
begin
  if (AEstado.IdEstado > 0) then
  begin
    Result := oEstadoModel.Update(AEstado);
  end
  else
  begin
    AEstado.IdEstado := oEstadoModel.BuscarID;
    Result := oEstadoModel.Inserir(AEstado);
  end;
end;

function TEstadoControler.Selecionar(var AEstado: TEstadoTDO): Boolean;
begin
  Result := oEstadoModel.select(AEstado);
end;

end.