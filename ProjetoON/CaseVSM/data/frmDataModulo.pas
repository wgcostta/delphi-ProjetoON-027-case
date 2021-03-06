unit frmDataModulo;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, RecError,
  frxClass, frxDBXComponents;

type
  TDataModule1 = class(TDataModule)
    sqlVendedores: TSQLDataSet;
    dspVendedores: TDataSetProvider;
    cdsVendedores: TClientDataSet;
    sqlClientes: TSQLDataSet;
    sqlEndcli: TSQLDataSet;
    sqlTelcli: TSQLDataSet;
    cdsClientes: TClientDataSet;
    cdsEndcli: TClientDataSet;
    cdsTelcli: TClientDataSet;
    dspClientes: TDataSetProvider;
    dspEndcli: TDataSetProvider;
    dspTelcli: TDataSetProvider;
    sqlVendedoresCODVEND: TIntegerField;
    sqlVendedoresNOMEVEND: TStringField;
    sqlVendedoresAPELIDO: TStringField;
    sqlVendedoresSENHAVEND: TStringField;
    sqlClientesNOMECLI: TStringField;
    sqlClientesCNPJCLI: TStringField;
    sqlClientesRGCLI: TStringField;
    sqlClientesRGEMISSOR: TStringField;
    sqlClientesRGUF: TStringField;
    sqlClientesSEXO: TStringField;
    sqlClientesNATURALIDADE: TStringField;
    sqlClientesSENHA: TStringField;
    sqlClientesDTNASC: TDateField;
    sqlEndcliTIPOEND: TStringField;
    sqlEndcliCEPCLI: TStringField;
    sqlEndcliENDCLI: TStringField;
    sqlEndcliNUMCLI: TStringField;
    sqlEndcliBAIRROCLI: TStringField;
    sqlEndcliCODCID: TIntegerField;
    sqlEndcliCOMPLEMENTO: TStringField;
    sqlEndcliNUMERO: TStringField;
    sqlTelcliCODCLI: TIntegerField;
    sqlTelcliTIPOTEL: TStringField;
    sqlTelcliTELEFONE: TStringField;
    sqlTelcliOBSTEL: TStringField;
    sqlTelcliIDOPERADORATELEFONIA: TIntegerField;
    cdsVendedoresCODVEND: TIntegerField;
    cdsVendedoresNOMEVEND: TStringField;
    cdsVendedoresAPELIDO: TStringField;
    cdsVendedoresSENHAVEND: TStringField;
    cdsClientesNOMECLI: TStringField;
    cdsClientesCNPJCLI: TStringField;
    cdsClientesRGCLI: TStringField;
    cdsClientesRGEMISSOR: TStringField;
    cdsClientesRGUF: TStringField;
    cdsClientesSEXO: TStringField;
    cdsClientesNATURALIDADE: TStringField;
    cdsClientesSENHA: TStringField;
    cdsClientesDTNASC: TDateField;
    cdsClientesBLOQUEIO: TStringField;
    cdsEndcliTIPOEND: TStringField;
    cdsEndcliCEPCLI: TStringField;
    cdsEndcliENDCLI: TStringField;
    cdsEndcliNUMCLI: TStringField;
    cdsEndcliBAIRROCLI: TStringField;
    cdsEndcliCODCID: TIntegerField;
    cdsEndcliCOMPLEMENTO: TStringField;
    cdsEndcliNUMERO: TStringField;
    cdsTelcliCODCLI: TIntegerField;
    cdsTelcliTIPOTEL: TStringField;
    cdsTelcliTELEFONE: TStringField;
    cdsTelcliOBSTEL: TStringField;
    cdsTelcliIDOPERADORATELEFONIA: TIntegerField;
    DrogariaConnection: TSQLConnection;
    SQL: TSQLQuery;
    frxDBXReportClientes: TfrxDBXComponents;
    sqlClientesBLOQUEIO: TStringField;
    sqlClientesCPFCLI: TStringField;
    cdsClientesCPFCLI: TStringField;
    sqlEndcliCODCLI: TIntegerField;
    cdsEndcliCODCLI: TIntegerField;
    sqlClientesCODCLI: TIntegerField;
    cdsClientesCODCLI: TIntegerField;
    procedure cdsEndcliReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;
  FID: Integer;
  FID2: Integer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}




procedure TDataModule1.cdsEndcliReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

end.
