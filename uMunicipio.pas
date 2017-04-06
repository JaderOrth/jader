unit uMunicipio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls,
  uClassMunicipioDTO, uClassMunicipioControler;

type
  TfrmMunicipio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnFechar: TBitBtn;
    btnExcluir: TBitBtn;
    btnEditar: TBitBtn;
    btnSalvar: TBitBtn;
    btnInserir: TBitBtn;
    PageControl1: TPageControl;
    tsListagem: TTabSheet;
    edtListagemNome: TLabeledEdit;
    edtListagemIBGE: TLabeledEdit;
    edtListagemIDMunicipio: TLabeledEdit;
    tsCadastro: TTabSheet;
    edtListagemCep: TLabeledEdit;
    edtListagemDDD: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    oMunicipioDTO: TMunicipioDTO;
    oMunicipioControler: TMunicipioControler;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMunicipio: TfrmMunicipio;

implementation

{$R *.dfm}

procedure TfrmMunicipio.btnEditarClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsCadastro;
end;

procedure TfrmMunicipio.btnInserirClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsCadastro;
end;

procedure TfrmMunicipio.btnSalvarClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsListagem;
end;

procedure TfrmMunicipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(oMunicipioDTO)) then
    FreeAndNil(oMunicipioDTO);

  if (Assigned(oMunicipioControler)) then
    FreeAndNil(oMunicipioControler);
  Action := caFree;
  frmMunicipio := nil;
end;

procedure TfrmMunicipio.FormCreate(Sender: TObject);
begin
  oMunicipioDTO := TMunicipioDTO.Create;
  oMunicipioControler := TMunicipioControler.Create;
end;

end.