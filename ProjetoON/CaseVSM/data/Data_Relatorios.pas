unit Data_Relatorios;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxExportPDF,
  frxExportCSV, frxExportBaseDialog, frmDataModulo;

type
  TDM_Relatorio = class(TDataModule)
    frxPDFExport1: TfrxPDFExport;
    frxR_Clientes: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Relatorio: TDM_Relatorio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

end.
