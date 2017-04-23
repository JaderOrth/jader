unit uUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uUsuarioDTO, uUsuarioControler;

type
  TfrmUsuario = class(TfrmBase)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    dtpDataNascimento: TDateTimePicker;
    cmbEstado: TComboBox;
    cmbMunicipio: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit17: TLabeledEdit;
    LabeledEdit18: TLabeledEdit;
    LabeledEdit19: TLabeledEdit;
    LabeledEdit20: TLabeledEdit;
    LabeledEdit21: TLabeledEdit;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    oUsuarioDTO: TUsuarioDTO;
    oUsuarioControler: TUsuarioControler;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

procedure TfrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(oUsuarioDTO)) then
    FreeAndNil(oUsuarioDTO);

  if (Assigned(oUsuarioControler)) then
    FreeAndNil(oUsuarioControler);

  inherited;
  frmUsuario := nil;
end;

procedure TfrmUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuarioDTO := TUsuarioDTo.Create;

  oUsuarioControler := TUsuarioControler.Create;
end;

end.
