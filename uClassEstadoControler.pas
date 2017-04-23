unit uClassEstadoControler;

interface

uses
  System.sysUtils, Vcl.Dialogs, Vcl.ExtCtrls, System.UITypes,
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
  Result := false;
  if idEstado <> 0 then
   begin
     if(MessageDlg('Deseja realmente excluir?', mtConfirmation, mbYesNo, 0) <> 0) then
     begin
       Result := oEstadoModel.Excluir(idEstado);
     end;
   end;
end;

function TEstadoControler.Salvar(const AEstado: TEstadoDTO): Boolean;
begin
  if (Length(AEstado.UF) = 2) AND (Length(AEstado.Nome) > 4 ) then
  begin
    if (AEstado.IdEstado > 0) then
    begin
      if (not(oEstadoModel.Update(AEstado))) then
        raise Exception.Create('Erro na altera��o do Estado!');
      Result := true;
    end
    else
    begin
      AEstado.IdEstado := oEstadoModel.BuscarID;
      if (not(oEstadoModel.Insert(AEstado))) then
        raise Exception.Create('Erro no cadastrado do Estado!');
      Result := true;
    end;
  end
  else
    raise Exception.Create('Preencha os campos corretamente!');
end;

end.
