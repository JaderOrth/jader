unit uEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  uClassEstadoControler, uEstadoDTO;

type
  TfrmEstado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnFechar: TBitBtn;
    btnExcluir: TBitBtn;
    btnEditar: TBitBtn;
    PageControl1: TPageControl;
    tsListagem: TTabSheet;
    tsCadastro: TTabSheet;
    btnSalvar: TBitBtn;
    edtUF: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtListagemNome: TLabeledEdit;
    edtListagemUF: TLabeledEdit;
    edtListagemID: TLabeledEdit;
    btnInserir: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure edtListagemIDExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    oEstadoDTO: TEstadoTDO;
    oEstadoControler: TEstadoControler;
  public
    { Public declarations }
  end;

var
  frmEstado: TfrmEstado;

implementation

{$R *.dfm}

procedure TfrmEstado.btnExcluirClick(Sender: TObject);
begin
  if (oEstadoControler.Excluir(oEstadoDTO)) then
    ShowMessage('Excluido com sucesso!')
  else
    raise Exception.Create('Erro ao Excluir!');
  oEstadoControler.Limpar(oEstadoDTO);
  edtListagemID.Text := '';
  edtListagemUF.Text := oEstadoDTO.UF;
  edtListagemNome.Text := oEstadoDTO.Nome;
end;

procedure TfrmEstado.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEstado.btnInserirClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsCadastro;
end;

procedure TfrmEstado.btnEditarClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsCadastro;
  edtUF.Text := oEstadoDTO.UF;
  edtNome.Text := oEstadoDTO.Nome;
end;

procedure TfrmEstado.btnSalvarClick(Sender: TObject);
begin
  oEstadoDTO.UF := edtUF.Text;
  oEstadoDTO.Nome := edtNome.Text;
  oEstadoControler.Salvar(oEstadoDTO);

  PageControl1.ActivePage := tsListagem;
  if (oEstadoControler.Selecionar(oEstadoDTO)) then
  begin
    edtListagemID.Text := IntToStr(oEstadoDTO.IdEstado);
    edtListagemUF.Text := oEstadoDTO.UF;
    edtListagemNome.Text := oEstadoDTO.Nome;
  end;

  oEstadoControler.Limpar(oEstadoDTO);
  edtUF.Text := oEstadoDTO.UF;
  edtNome.Text := oEstadoDTO.Nome;
end;

procedure TfrmEstado.edtListagemIDExit(Sender: TObject);
begin
  if (Length(Trim(edtListagemID.Text)) <> 0) then
  begin
    oEstadoDTO.IdEstado := StrToInt(edtListagemID.Text);
    if (oEstadoControler.Selecionar(oEstadoDTO)) then
    begin
      edtListagemUF.Text := oEstadoDTO.UF;
      edtListagemNome.Text := oEstadoDTO.Nome;
    end
    else
      raise Exception.Create('Id ainda n�o cadastrado!');
  end;

end;

procedure TfrmEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(oEstadoDTO)) then
    FreeAndNil(oEstadoDTO);

  if (Assigned(oEstadoControler)) then
    FreeAndNil(oEstadoControler);

  Action := caFree;
  frmEstado := nil;
end;

procedure TfrmEstado.FormCreate(Sender: TObject);
begin
  oEstadoDTO := TEstadoTDO.Create;

  oEstadoControler := TEstadoControler.Create;
end;

end.
