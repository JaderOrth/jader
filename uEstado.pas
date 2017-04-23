unit uEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Vcl.ComCtrls, System.UITypes,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uEstadoDTO, uClassEstadoControler;

type
  TfrmEstado = class(TfrmBase)
    edtIdEstado: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtUF: TLabeledEdit;
    edtEstadoNome: TLabeledEdit;
    edtEstadoUF: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtIdEstadoExit(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    oEstado: TEstadoDTO;
    oEstadoControler: TEstadoControler;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstado: TfrmEstado;

implementation

{$R *.dfm}

procedure TfrmEstado.btnAlterarClick(Sender: TObject);
begin
  if oEstado.IdEstado <> 0 then
  begin
    edtEstadoNome.Text := oEstado.Nome;
    edtEstadoUF.Text   := oEstado.UF;
  end
  else
    raise Exception.Create('Selecione o que deseja Alterar!');
  inherited;
end;

procedure TfrmEstado.btnExcluirClick(Sender: TObject);
begin
  oEstado.IdEstado := StrToIntDef(edtIdEstado.Text, 0);
  oEstadoControler.Excluir(oEstado.IdEstado);
  inherited;
end;

procedure TfrmEstado.btnSalvarClick(Sender: TObject);
begin
  oEstado.UF := edtEstadoUF.Text;
  oEstado.Nome := edtEstadoNome.Text;
  oEstadoControler.Salvar(oEstado);
  inherited;
end;

procedure TfrmEstado.edtIdEstadoExit(Sender: TObject);
begin
  oEstado.IdEstado := StrToIntDef(edtIdEstado.Text, 0);
  if oEstado.IdEstado <> 0 then
  begin
    if (not(oEstadoControler.BuscarValor(oEstado))) then
      raise Exception.Create('Este ID N�o esta cadastrado');
  end;
  edtNome.Text := oEstado.Nome;
  edtUF.Text := oEstado.UF;
  inherited;
end;

procedure TfrmEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(oEstado)) then
    FreeAndNil(oEstado);

  if (Assigned(oEstadoControler)) then
    FreeAndNil(oEstadoControler);

  inherited;
  frmEstado := nil;
end;

procedure TfrmEstado.FormCreate(Sender: TObject);
begin
  inherited;

  oEstado := TEstadoDTO.Create;

  oEstadoControler := TEstadoControler.Create;
end;

end.
