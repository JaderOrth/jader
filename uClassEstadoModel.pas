unit uClassEstadoModel;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, FireDAC.DApt, Data.DB,
  uEstadoDTO, uClassConexaoSingleton, uListaEstado;

type
  TEstadoModel = class
  public
    function Update(const AEstado: TEstadoDTO): Boolean;
    function BuscarID: Integer;
    function Insert(const AEstado: TEstadoDTO): Boolean;
    function BuscarValor(var AEstado: TEstadoDTO): Boolean;
    function Excluir(const idEstado: Integer): Boolean;

    function SelecionarEstado(out ALista: TListaEstado): Boolean;
  end;

implementation

{ TEstadoModel }

function TEstadoModel.BuscarID: Integer;
var
  oQuery: TFDQuery;
begin
  Result := 1;
  try
    oQuery := TFDQuery.Create(nil);
    oQuery.Connection := TConexaoSongleton.GetConexao;
    oQuery.Open('select MAX(idEstado) as ID from Estado');
    if (not(oQuery.IsEmpty)) then
      Result := oQuery.FieldByName('ID').AsInteger + 1;
  finally
    if (Assigned(oQuery)) then
      FreeAndNil(oQuery);
  end;
end;

function TEstadoModel.BuscarValor(var AEstado: TEstadoDTO): Boolean;
var
  oQuery: TFDQuery;
begin
  Result := False;
  try
    oQuery := TFDQuery.Create(nil);
    oQuery.Connection := TConexaoSongleton.GetConexao;
    oQuery.Open('select UF, Nome from Estado where idEstado = ' +
      IntToStr(AEstado.idEstado));
    if (not(oQuery.IsEmpty)) then
    begin
      AEstado.UF := oQuery.FieldByName('UF').AsString;
      AEstado.Nome := oQuery.FieldByName('Nome').AsString;
      Result := true;
    end;
  finally
    if (Assigned(oQuery)) then
      FreeAndNil(oQuery);
  end;

end;

function TEstadoModel.Excluir(const idEstado: Integer): Boolean;
var
  sSql: String;
begin
  sSql := 'delete from Estado where idEstado = ' + IntToStr(idEstado);
  Result := TConexaoSongleton.GetConexao.ExecSQL(sSql) > 0;
end;

function TEstadoModel.Insert(const AEstado: TEstadoDTO): Boolean;
var
  sSql: string;
begin
  sSql := 'insert into Estado(idEstado, UF, Nome) values(' +
    IntToStr(AEstado.idEstado) + ', ' + QuotedStr(AEstado.UF) + ', ' +
    QuotedStr(AEstado.Nome) + ')';
  Result := TConexaoSongleton.GetConexao.ExecSQL(sSql) > 0;
end;

function TEstadoModel.SelecionarEstado(out ALista: TListaEstado): Boolean;
var
  oQuery: TFDQuery;
  oEstadoDTO: TEstadoDTO;
begin
  Result := False;
  oQuery := TFDQuery.Create(nil);
  try
    oQuery.Connection := TConexaoSongleton.GetConexao;
    oQuery.Open('SELECT idEstado, UF, Nome FROM Estado');
    if (not(oQuery.IsEmpty)) then // verefica se a query não está vazia
    begin
      oQuery.First; // vai para o primeiro registro do banco
      while (not(oQuery.Eof)) do
      // vai parar quando estiver no ultimo registro EOF(ultimo registro do banco)
      begin
        oEstadoDTO := TEstadoDTO.Create;
        oEstadoDTO.idEstado := oQuery.FieldByName('idEstado').AsInteger;
        oEstadoDTO.UF := oQuery.FieldByName('UF').AsString;
        oEstadoDTO.Nome := oQuery.FieldByName('Nome').AsString;
        // incrementa o ComboBox a cada volta do loop.
        ALista.Add(oEstadoDTO.Nome, oEstadoDTO);
        // vai para o proximo registro do banco de dados
        oQuery.Next;
      end;
      Result := true;
    end;
  finally
    if (Assigned(oQuery)) then
      FreeAndNil(oQuery);
   // if (Assigned(oEstadoDTO)) then
   //   FreeAndNil(oEstadoDTO);
  end;

  
end;

function TEstadoModel.Update(const AEstado: TEstadoDTO): Boolean;
var
  sSql: string;
begin
  sSql := 'update Estado set' + ' UF = ' + QuotedStr(AEstado.UF) + ', ' +
    ' Nome = ' + QuotedStr(AEstado.Nome) + ' where idEstado = ' +
    IntToStr(AEstado.idEstado);
  Result := TConexaoSongleton.GetConexao.ExecSQL(sSql) > 0;
end;

end.
