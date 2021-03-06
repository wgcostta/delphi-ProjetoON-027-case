object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 442
  Width = 526
  object sqlVendedores: TSQLDataSet
    CommandText = 
      'select * from vendedores'#13#10'WHERE '#13#10'NOMEVEND = :nome'#13#10'AND'#13#10'SENHAVE' +
      'ND = :senha;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
      end>
    SQLConnection = DrogariaConnection
    Left = 168
    Top = 32
    object sqlVendedoresCODVEND: TIntegerField
      FieldName = 'CODVEND'
      Required = True
    end
    object sqlVendedoresNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 50
    end
    object sqlVendedoresAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object sqlVendedoresSENHAVEND: TStringField
      FieldName = 'SENHAVEND'
      Required = True
      Size = 12
    end
  end
  object dspVendedores: TDataSetProvider
    DataSet = sqlVendedores
    Left = 262
    Top = 32
  end
  object cdsVendedores: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendedores'
    Left = 360
    Top = 32
    object cdsVendedoresCODVEND: TIntegerField
      FieldName = 'CODVEND'
      Required = True
    end
    object cdsVendedoresNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 50
    end
    object cdsVendedoresAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object cdsVendedoresSENHAVEND: TStringField
      FieldName = 'SENHAVEND'
      Required = True
      Size = 12
    end
  end
  object sqlClientes: TSQLDataSet
    CommandText = 'select * from clientes '#13#10'order by CODCLI DESC;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DrogariaConnection
    Left = 168
    Top = 112
    object sqlClientesNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object sqlClientesCNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      EditMask = '99.999.999/9999-99;1;_'
    end
    object sqlClientesRGCLI: TStringField
      FieldName = 'RGCLI'
      EditMask = '999999999999;1;_'
      Size = 18
    end
    object sqlClientesRGEMISSOR: TStringField
      FieldName = 'RGEMISSOR'
      Size = 10
    end
    object sqlClientesRGUF: TStringField
      FieldName = 'RGUF'
      FixedChar = True
      Size = 2
    end
    object sqlClientesSEXO: TStringField
      FieldName = 'SEXO'
      EditMask = 'M'
      FixedChar = True
      Size = 2
    end
    object sqlClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 30
    end
    object sqlClientesSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object sqlClientesDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object sqlClientesBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object sqlClientesCPFCLI: TStringField
      FieldName = 'CPFCLI'
      EditMask = '999.999.999-99;1;_'
    end
    object sqlClientesCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
  end
  object sqlEndcli: TSQLDataSet
    CommandText = 'select * from endcli'#13#10'WHERE '#13#10'CODCLI = :CODCLIENTE'#13#10';'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DrogariaConnection
    Left = 168
    Top = 168
    object sqlEndcliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object sqlEndcliTIPOEND: TStringField
      FieldName = 'TIPOEND'
      EditMask = 'RESIDEN.;1;_'
      Size = 15
    end
    object sqlEndcliCEPCLI: TStringField
      DisplayWidth = 20
      FieldName = 'CEPCLI'
      EditMask = '99.999-999;1;_'
      Size = 15
    end
    object sqlEndcliENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 50
    end
    object sqlEndcliNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Size = 10
    end
    object sqlEndcliBAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      Size = 30
    end
    object sqlEndcliCODCID: TIntegerField
      FieldName = 'CODCID'
    end
    object sqlEndcliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object sqlEndcliNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
  end
  object sqlTelcli: TSQLDataSet
    CommandText = 'select * from telcli'#13#10'WHERE '#13#10'CODCLI = :CODCLIENTE'#13#10';'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DrogariaConnection
    Left = 168
    Top = 232
    object sqlTelcliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object sqlTelcliTIPOTEL: TStringField
      DisplayLabel = 'Tipo Telefone'
      DisplayWidth = 20
      FieldName = 'TIPOTEL'
      EditMask = 'RESIDEN.;1;_'
    end
    object sqlTelcliTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Required = True
      EditMask = '(99)99999-9999;1;_'
      Size = 14
    end
    object sqlTelcliOBSTEL: TStringField
      FieldName = 'OBSTEL'
      Size = 100
    end
    object sqlTelcliIDOPERADORATELEFONIA: TIntegerField
      FieldName = 'IDOPERADORATELEFONIA'
    end
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 352
    Top = 112
    object cdsClientesNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object cdsClientesCNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      EditMask = '99.999.999/9999-99;1;_'
    end
    object cdsClientesRGCLI: TStringField
      FieldName = 'RGCLI'
      EditMask = '999999999999;1;_'
      Size = 18
    end
    object cdsClientesRGEMISSOR: TStringField
      FieldName = 'RGEMISSOR'
      Size = 10
    end
    object cdsClientesRGUF: TStringField
      FieldName = 'RGUF'
      FixedChar = True
      Size = 2
    end
    object cdsClientesSEXO: TStringField
      FieldName = 'SEXO'
      EditMask = 'M'
      FixedChar = True
      Size = 2
    end
    object cdsClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 30
    end
    object cdsClientesSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object cdsClientesDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object cdsClientesBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object cdsClientesCPFCLI: TStringField
      FieldName = 'CPFCLI'
      EditMask = '999.999.999-99;1;_'
    end
    object cdsClientesCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
  end
  object cdsEndcli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspEndcli'
    OnReconcileError = cdsEndcliReconcileError
    Left = 352
    Top = 176
    object cdsEndcliTIPOEND: TStringField
      FieldName = 'TIPOEND'
      EditMask = 'RESIDEN.;1;_'
      Size = 15
    end
    object cdsEndcliCEPCLI: TStringField
      DisplayWidth = 20
      FieldName = 'CEPCLI'
      EditMask = '99.999-999;1;_'
      Size = 15
    end
    object cdsEndcliENDCLI: TStringField
      FieldName = 'ENDCLI'
      Size = 50
    end
    object cdsEndcliNUMCLI: TStringField
      FieldName = 'NUMCLI'
      Size = 10
    end
    object cdsEndcliBAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      Size = 30
    end
    object cdsEndcliCODCID: TIntegerField
      FieldName = 'CODCID'
    end
    object cdsEndcliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsEndcliNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsEndcliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
  end
  object cdsTelcli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspTelcli'
    OnReconcileError = cdsEndcliReconcileError
    Left = 352
    Top = 232
    object cdsTelcliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object cdsTelcliTIPOTEL: TStringField
      DisplayLabel = 'Tipo Telefone'
      DisplayWidth = 20
      FieldName = 'TIPOTEL'
      EditMask = 'RESIDEN.;1;_'
      Size = 15
    end
    object cdsTelcliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      EditMask = '(99)99999-9999;1;_'
      Size = 14
    end
    object cdsTelcliOBSTEL: TStringField
      FieldName = 'OBSTEL'
      Size = 100
    end
    object cdsTelcliIDOPERADORATELEFONIA: TIntegerField
      FieldName = 'IDOPERADORATELEFONIA'
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = sqlClientes
    Left = 262
    Top = 120
  end
  object dspEndcli: TDataSetProvider
    DataSet = sqlEndcli
    Left = 270
    Top = 168
  end
  object dspTelcli: TDataSetProvider
    DataSet = sqlTelcli
    Left = 262
    Top = 232
  end
  object DrogariaConnection: TSQLConnection
    ConnectionName = 'drogaria'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=myouro'
      'User_Name=root'
      'Password=drogaria'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 43
    Top = 40
  end
  object SQL: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select max(codcli) as codcli from clientes')
    SQLConnection = DrogariaConnection
    Left = 440
    Top = 112
  end
  object frxDBXReportClientes: TfrxDBXComponents
    DefaultDatabase = DrogariaConnection
    Left = 168
    Top = 320
  end
end
