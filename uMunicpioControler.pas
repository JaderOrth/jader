unit uMunicpioControler;

interface

uses
  System.SysUtils, Vcl.StdCtrls, System.Generics.Collections,
  uMunicipioModel, uClassEstadoModel, uEstadoDTO, uListaEstado, uMunicipioDTO;

type
  TMunicipioControler = class
  private
    oMunicipioModel: TMunicipioModel;
  public
    procedure SelecionarEstado(cmbEstado: TComboBox);
    function Salvar(const AMunicipio: TMunicipioDTO): Boolean;
    function Selecionar(var AMunicipio: TMunicipioDTO): Boolean;
    function Deletar(const AMunicipio: Integer): Boolean;

    constructor Create;
    destructor Destroy; override;
  end;
implementation

{ TMunicipiocontroler }

constructor TMunicipioControler.Create;
begin
  oMunicipioModel := TMunicipioModel.Create;
end;

function TMunicipioControler.Deletar(const AMunicipio: Integer): Boolean;
begin
  Result := oMunicipioModel.Deletar(AMunicipio);
end;

destructor TMunicipioControler.Destroy;
begin
  if (Assigned(oMunicipioModel)) then
    FreeAndNil(oMunicipioModel);
  inherited;
end;

function TMunicipioControler.Salvar(const AMunicipio: TMunicipioDTO): Boolean;
begin
  if AMunicipio.idMunicipio > 0 then
  begin
     Result := oMunicipioModel.Update(AMunicipio);
  end
  else
  begin
    AMunicipio.idMunicipio := oMunicipioModel.BuscarID;
    Result := oMunicipioModel.Insert(AMunicipio);
  end;
end;

function TMunicipioControler.Selecionar(var AMunicipio: TMunicipioDTO): Boolean;
begin
  Result := oMunicipioModel.Selecionar(AMunicipio);
end;

procedure TMunicipioControler.SelecionarEstado(cmbEstado: TComboBox);
var
  oEstadoModel: TEstadoModel;
  oEstadoDTO: TEstadoDTO;
  oListaEstado: TListaEstado;
begin
  cmbEstado.Items.Clear;
  oEstadoModel := TEstadoModel.Create;
  try
    oListaEstado := TListaEstado.Create([doOwnsValues]);

    if (oEstadoModel.SelecionarEstado(oListaEstado)) then
    begin
      for oEstadoDTO in oListaEstado.Values do
      begin
        cmbEstado.Items.AddObject(oEstadoDTO.Nome, TObject(oEstadoDTO.IdEstado));
      end;
    end;
  finally
   if (Assigned(oEstadoModel)) then
      FreeAndNil(oEstadoModel);

  // if (Assigned(oEstadoDTO)) then
    //  FreeAndNil(oEstadoDTO);

   if (Assigned(oListaEstado)) then
      FreeAndNil(oListaEstado);


  end;

end;
end.
