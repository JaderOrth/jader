{aqui vou escrever um texto para testar como funciona os commit e brach}
unit uUsuarioControler;

interface

uses
  System.SysUtils, Vcl.StdCtrls, System.Generics.Collections,
  uUsuarioModel, uEstadoDTO, uUsuarioDTO, uClassEstadoModel, uMunicipioModel,
  uListaEstado, uListaMunicipio, uMunicipioDTO;

type
  TUsuarioControler = class
  private
    oUsuarioModel: TUsuarioModel;
  public
    procedure SelectMunicipio(cbMunicpio: TComboBox; iId: Integer);
    procedure SelectEstado(cbEstado: TComboBox);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TUsuarioControler }

constructor TUsuarioControler.Create;
begin
  oUsuarioModel := TUsuarioModel.Create;
end;

destructor TUsuarioControler.Destroy;
begin
  if (Assigned(oUsuarioModel)) then
    FreeAndNil(oUsuarioModel);
  inherited;
end;

procedure TUsuarioControler.SelectEstado(cbEstado: TComboBox);
var
  oListaEstado: TListaEstado;
  oEstadoDTO: TEstadoDTO;
  oEstadoModel: TEstadoModel;
begin
  cbEstado.Items.Clear;
  oEstadoModel := TEstadoModel.Create;
  try
    oListaEstado := TListaEstado.Create([doOwnsValues]);

    if (oEstadoModel.SelectEstado(oListaEstado)) then
    begin
      for oEstadoDTO in oListaEstado.Values do
      begin
        // adiciona ao comboBox o nome do estado e junto com ele vai ter o id.
        cbEstado.Items.AddObject(oEstadoDTO.Nome, TObject(oEstadoDTO.IdEstado));
      end;
    end;

  finally
    if (Assigned(oEstadoModel)) then
      FreeAndNil(oEstadoModel);

    if (Assigned(oListaEstado)) then
      FreeAndNil(oListaEstado);
  end;
end;


procedure TUsuarioControler.SelectMunicipio(cbMunicpio: TComboBox;
  iId: Integer);
var
  oListaMunicipio: TListaMunicipio;
  oMunicipioDTO: TMunicipioDTO;
  oMunicipioModel: TMunicipioModel;
begin

  cbMunicpio.Items.Clear;
  oMunicipioModel := TMunicipioModel.Create;

  try
    oListaMunicipio := TListaMunicipio.Create([doOwnsValues]);
    if (oMunicipioModel.SelectMunicipio(oListaMunicipio, iId)) then
    begin
      for oMunicipioDTO in oListaMunicipio.Values do
      begin
        cbMunicpio.Items.AddObject(oMunicipioDTO.Nome,
          TObject(oMunicipioDTO.idMunicipio));
      end;
    end;

  finally
    if (Assigned(oMunicipioModel)) then
      FreeAndNil(oMunicipioModel);

    if (Assigned(oListaMunicipio)) then
      FreeAndNil(oListaMunicipio);

  end;
end;

end.
