program CaseProjeto;

uses
  Vcl.Forms,
  frmPrincipal in 'view\frmPrincipal.pas' {CaseVSM},
  frmDataModulo in 'data\frmDataModulo.pas' {DataModule1: TDataModule},
  frmLogin in 'view\frmLogin.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  ConfirmarExclusao in 'class\ConfirmarExclusao.pas',
  uEndereco in 'class\uEndereco.pas',
  Cliente in 'class\Cliente.pas',
  buscacep in 'view\buscacep.pas',
  Data_Relatorios in 'data\Data_Relatorios.pas' {DM_Relatorio: TDataModule},
  Vendedores in 'class\Vendedores.pas';

// in 'ConfirmarExclusao.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, ExcluirCliente);
  Application.Run;

end.
