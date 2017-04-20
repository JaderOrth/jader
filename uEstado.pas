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
  inherited;
  edtEstadoNome.Text := oEstado.Nome;
  edtEstadoUF.Text   := oEstado.UF;
end;

procedure TfrmEstado.btnExcluirClick(Sender: TObject);
begin
  inherited;
  oEstado.IdEstado := StrToIntDef(edtIdEstado.Text, 0);
  if(MessageDlg('Deseja realmente excluir?', mtConfirmation, mbYesNo, 0) <> mrNo) then
  begin
    if oEstado.IdEstado <> 0 then
    begin
      oEstadoControler.Excluir(oEstado.IdEstado);
    end;
  end;
end;

procedure TfrmEstado.btnSalvarClick(Sender: TObject);
begin
  inherited;
  oEstado.UF := edtEstadoUF.Text;
  oEstado.Nome := edtEstadoNome.Text;
  oEstadoControler.Salvar(oEstado);
end;

procedure TfrmEstado.edtIdEstadoExit(Sender: TObject);
begin
  inherited;
  oEstado.IdEstado := StrToIntDef(edtIdEstado.Text, 0);
  if oEstado.IdEstado <> 0 then
  begin
    if (not(oEstadoControler.BuscarValor(oEstado))) then
      raise Exception.Create('Este ID Não esta cadastrado');
  end;
  edtNome.Text := oEstado.Nome;
  edtUF.Text := oEstado.UF;
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
  if (not(Assigned(oEstado))) then
    oEstado := TEstadoDTO.Create;

  if (not(Assigned(oEstadoControler))) then
    oEstadoControler := TEstadoControler.Create;
end;

end.
