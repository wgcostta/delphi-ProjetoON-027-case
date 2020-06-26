unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Data.DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  frmPrincipal,
  frmDataModulo;

type
  TForm2 = class(TForm)
    edtSenha: TEdit;
    edtUsuario: TEdit;
    btnEntrar: TButton;
    StaticText1: TStaticText;
    Panel1: TPanel;
    btnSair: TButton;

    StaticText2: TStaticText;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

    // constructor Create;

  private

    tentativas: Smallint;
    function loginValido(const usuario, senha: String): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnEntrarClick(Sender: TObject);

begin
  if (edtUsuario.Text = '') then // Verifica se o campo "Usuário" foi preenchido
  begin
    Messagedlg('O campo "Usuário" deve ser preenchido!', mtInformation,
      [mbOk], 0);

    if edtUsuario.CanFocus then
      edtUsuario.SetFocus;

    Exit;
  end;

  if (edtSenha.Text = '') then // Verifica se o campo "Senha" foi preenchido
  begin
    Messagedlg('O campo "Senha" deve ser preenchido!', mtInformation,
      [mbOk], 0);

    if edtSenha.CanFocus then
      edtSenha.SetFocus;

    Exit;
  end;

  if loginValido(edtUsuario.Text, edtSenha.Text) then
  // Verifica se o login é válido
  begin
    Application.CreateForm(TCaseVSM, CaseVSM);
    try
      edtSenha.Text := '';
      edtUsuario.Text := '';
      CaseVSM.ShowModal;
    finally
      CaseVSM.Release;
    end;
  end
  else // Caso o login não seja válido então
  begin
    inc(tentativas); // Incrementa em 1 o valor da variável tentativas
    if tentativas < 3 then
    begin
      Messagedlg(Format('Tentativa %d de 3', [tentativas]), mtError, [mbOk], 0);

      if edtSenha.CanFocus then
        edtSenha.SetFocus;
    end
    else
    begin
      Messagedlg(Format('%dª tentativa de acesso ao sistema.', [tentativas]) +
        #13 + 'A aplicação será fechada!', mtError, [mbOk], 0);
      close;
    end;
  end;
end;

procedure TForm2.btnSairClick(Sender: TObject);
begin
  close;
end;

function TForm2.loginValido(const usuario, senha: String): Boolean;
begin
  Result := False;
  if not frmDataModulo.DataModule1.DrogariaConnection.Connected then
    frmDataModulo.DataModule1.DrogariaConnection.Connected := True;
  // Caso o componente ConLOGIN não esteja conectado ao BD
  frmDataModulo.DataModule1.cdsVendedores.close;
  frmDataModulo.DataModule1.cdsVendedores.ParamByName('nome').AsString :=
    AnsiUpperCase(Trim(usuario));
  frmDataModulo.DataModule1.cdsVendedores.ParamByName('senha').AsString :=
    Trim(senha);
  frmDataModulo.DataModule1.cdsVendedores.Open;

  if not frmDataModulo.DataModule1.cdsVendedores.IsEmpty then
    Result := True;
end;

end.
