unit uMunicipioModel;

interface

uses
  System.SysUtils, FireDAC.Comp.Client,
  uClassConexaoSingleton, uMunicipioDTO;


type
  TMunicipioModel = class
  public
    function Update(const AMunicipio: TMunicipioDTO): Boolean;
    function BuscarID: Integer;
    function Insert(const AMunicipio: TMunicipioDTO): Boolean;
    function Selecionar(var AMunicipio: TMunicipioDTO): Boolean;
    function Deletar(const AMunicipio: Integer): Boolean;
  end;

implementation

{ TMunicipioModel }
{ TMunicipioModel }

function TMunicipioModel.BuscarID: Integer;
var
  oQuery: TFDQuery;
begin
  Result := 1;
  oQuery := TFDQuery.Create(nil);
  try
    oQuery.Connection := TConexaoSongleton.GetConexao;
    oQuery.Open('select MAX(idMunicipio) as id from Municipio');
    Result := oQuery.FieldByName('id').AsInteger +1;
  finally
    if (Assigned(oQuery)) then
      FreeandNil(oQuery);
  end;
end;

function TMunicipioModel.Deletar(const AMunicipio: Integer): Boolean;
var
  sSql: String;
begin
  sSql := 'delete from Municipio where idMunicipio = '+ IntToStr(AMunicipio);
  Result := TConexaoSongleton.GetConexao.ExecSQL(sSql) > 0;
end;

function TMunicipioModel.Insert(const AMunicipio: TMunicipioDTO): Boolean;
var
  sSql: String;
begin
  sSql := 'insert into Municipio('+
          'idMunicipio, Nome, CodigoIBGE, CEP, DDD,IDEstado) Values('+
          IntToStr(AMunicipio.idMunicipio)+', '+
          QuotedStr(AMunicipio.Nome)      +', '+
          IntToStr(AMunicipio.CodigoIBGE) +', '+
          CurrToStr(AMunicipio.CEP)       +', '+
          IntToStr(AMunicipio.DDD)        +', '+
          IntToStr(AMunicipio.Estado)     +')';
  Result := TConexaoSongleton.GetConexao.ExecSQL(sSql) > 0;
end;

function TMunicipioModel.Selecionar(var AMunicipio: TMunicipioDTO): Boolean;
var
  oQuery: TFDQuery;
begin
  Result := false;
  oQuery := TFDQuery.Create(nil);
  try
    oQuery.Connection := TConexaoSongleton.GetConexao;
    oQuery.Open('select Nome, CodigoIBGE, CEP, DDD, IDEstado from Municipio');
    if (not(oQuery.IsEmpty)) then
    begin
      AMunicipio.Nome := oQuery.FieldByName('Nome').AsString;
      AMunicipio.CodigoIBGE := oQuery.FieldByName('CodigoIBGE').AsInteger;
      AMunicipio.CEP := oQuery.FieldByName('CEP').AsCurrency;
      AMunicipio.DDD := oQuery.FieldByName('DDD').AsInteger;
      AMunicipio.Estado := oQuery.FieldByName('IDEstado').AsInteger;
      Result := true;
    end;
  finally
    if (Assigned(oQuery)) then
      FreeandNil(oQuery);
  end;

end;

function TMunicipioModel.Update(const AMunicipio: TMunicipioDTO): Boolean;
var
  sSql: string;
begin
  sSql := 'update Municipio set'+
          '  CodigoIBGE = '+ IntToStr(AMunicipio.CodigoIBGE)+
          ', Nome =       '+ QuotedStr(AMunicipio.Nome)+
          ', CEP =        '+ CurrToStr(AMunicipio.CEP)+
          ', DDD =        '+ IntToStr(AMunicipio.DDD)+
          ', IDEstado =   '+ IntToStr(AMunicipio.Estado)+
          '  where idMunicipio = '+ IntToStr(AMunicipio.idMunicipio);
  Result := TConexaoSongleton.GetConexao.ExecSQL(sSql) > 0;
end;

end.
