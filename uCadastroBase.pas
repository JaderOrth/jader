unit uCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmBase = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnFechar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnInserir: TBitBtn;
    btnSalvar: TBitBtn;
    PageControl1: TPageControl;
    tsListagem: TTabSheet;
    tsCadastro: TTabSheet;
    btnCancelar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure buttonsFalse;
    procedure buttonsTrue;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LimparFomularios;
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

procedure TfrmBase.btnAlterarClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsCadastro;
  PageControl1.ActivePageIndex := 1;
  buttonsFalse;
end;

procedure TfrmBase.btnCancelarClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsListagem;
  PageControl1.ActivePageIndex := 0;
  buttonsTrue;
  LimparFomularios;
end;

procedure TfrmBase.btnExcluirClick(Sender: TObject);
begin
  LimparFomularios;
end;

procedure TfrmBase.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBase.btnInserirClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsCadastro;
  PageControl1.ActivePageIndex := 1;
  buttonsFalse;
  LimparFomularios;
end;

procedure TfrmBase.btnSalvarClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsListagem;
  PageControl1.ActivePageIndex := 0;
  buttonsTrue;
  LimparFomularios;
end;

procedure TfrmBase.buttonsFalse;
begin
   btnAlterar.Enabled := false;
   btnInserir.Enabled := false;
   btnExcluir.Enabled := false;
   btnSalvar.Enabled := true;
end;

procedure TfrmBase.buttonsTrue;
begin
  btnExcluir.Enabled := true;
  btnAlterar.Enabled := true;
  btnInserir.Enabled := true;
  btnSalvar.Enabled := false;
end;

procedure TfrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  btnSalvar.Enabled := false;
end;

procedure TfrmBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
     Key:= #0;
     Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmBase.LimparFomularios;
var
  iIndiceComponente: Integer;
begin
  for iIndiceComponente := 0 to pred(Self.ComponentCount) do
  begin
    if (Components[iIndiceComponente] is TLabeledEdit) or
       (Components[iIndiceComponente] is TEdit) then
      (Components[iIndiceComponente] as TCustomEdit).Clear;

    if (Components[iIndiceComponente] is TComboBox) then
      (Components[iIndiceComponente] as TComboBox).ItemIndex := -1;
  end;
end;

end.
