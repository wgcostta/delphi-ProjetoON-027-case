object DM_Relatorio: TDM_Relatorio
  OldCreateOrder = False
  Height = 77
  Width = 152
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43261.585537303240000000
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 88
    Top = 16
  end
  object frxR_Clientes: TfrxReport
    Version = '6.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbNavigator, pbExportQuick, pbNoFullScreen]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43258.059055509300000000
    ReportOptions.LastChange = 43590.875798460650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 25
    Top = 14
    Datasets = <
      item
        DataSet = frxR_Clientes.frxDB_Clientes
        DataSetName = 'frxDB_Clientes'
      end
      item
        DataSet = frxR_Clientes.frxDB_Telefone
        DataSetName = 'frxDB_Telefone'
      end
      item
        DataSet = frxR_Clientes.frxDB_Endereco
        DataSetName = 'frxDB_Endereco'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object frxDB_Clientes: TfrxDBXQuery
        UserName = 'frxDB_Clientes'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from clientes                                          ' +
            '     ')
        Database = frxR_Clientes.DBdrogaria
        pLeft = 232
        pTop = 144
        Parameters = <>
      end
      object frxDB_Telefone: TfrxDBXQuery
        UserName = 'frxDB_Telefone'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from telcli                                            ' +
            '             ')
        Database = frxR_Clientes.DBdrogaria
        pLeft = 244
        pTop = 212
        Parameters = <>
      end
      object frxDB_Endereco: TfrxDBXQuery
        UserName = 'frxDB_Endereco'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from endcli                                            ' +
            '             ')
        Database = frxR_Clientes.DBdrogaria
        pLeft = 324
        pTop = 148
        Parameters = <>
      end
      object DBdrogaria: TfrxDBXDatabase
        Description = 'DBDrogaria'
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
        pLeft = 324
        pTop = 208
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      VGuides.Strings = (
        '147,40167')
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        StartNewPage = True
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 11.338590000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Clientes')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 42.897650000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 24.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 24.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 24.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 24.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 23.677180000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '/')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 24.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 24.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Clientes:')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.118120000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxR_Clientes.frxDB_Clientes
        DataSetName = 'frxDB_Clientes'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 0.220470000000006000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
        end
        object frxDB_Clientecodcli: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxR_Clientes.frxDB_Clientes
          DataSetName = 'frxDB_Clientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Clientes."CODCLI"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Sexo:')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'RG:')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:')
        end
        object frxDB_Clientessexo: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'sexo'
          DataSet = frxR_Clientes.frxDB_Clientes
          DataSetName = 'frxDB_Clientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Clientes."sexo"]')
        end
        object frxDB_Clientescpf: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CPFCLI'
          DataSet = frxR_Clientes.frxDB_Clientes
          DataSetName = 'frxDB_Clientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Clientes."CPFCLI"]')
        end
        object frxDB_Clientesrg: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'RGCLI'
          DataSet = frxR_Clientes.frxDB_Clientes
          DataSetName = 'frxDB_Clientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Clientes."RGCLI"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        Condition = 'frxDB_Endereco."CODCLI"'
        ShowFooterIfDrillDown = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'os:')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        DataSet = frxR_Clientes.frxDB_Endereco
        DataSetName = 'frxDB_Endereco'
        Filter = '<frxDB_Endereco."CODCLI">=<frxDB_Clientes."CODCLI">'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDB_Enderecotipo: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxR_Clientes.frxDB_Endereco
          DataSetName = 'frxDB_Endereco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Endereco."TIPOEND"]')
        end
        object frxDB_Endereconumero: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxR_Clientes.frxDB_Endereco
          DataSetName = 'frxDB_Endereco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Endereco."NUMERO"]')
        end
        object frxDB_Enderecocidade: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'COMPLEMENTO'
          DataSet = frxR_Clientes.frxDB_Endereco
          DataSetName = 'frxDB_Endereco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Endereco."COMPLEMENTO"]')
        end
        object frxDB_Enderecocep: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CEPCLI'
          DataSet = frxR_Clientes.frxDB_Endereco
          DataSetName = 'frxDB_Endereco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Endereco."CEPCLI"]')
        end
        object frxDB_Enderecoendereco: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 0.787260000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'ENDCLI'
          DataSet = frxR_Clientes.frxDB_Endereco
          DataSetName = 'frxDB_Endereco'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Endereco."ENDCLI"]')
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        Condition = 'frxDB_Telefone."CODCLI"'
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.779530000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefones:')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        DataSet = frxR_Clientes.frxDB_Telefone
        DataSetName = 'frxDB_Telefone'
        Filter = '<frxDB_Telefone."CODCLI">=<frxDB_Clientes."CODCLI">'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDB_Telefonetipo: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxR_Clientes.frxDB_Telefone
          DataSetName = 'frxDB_Telefone'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDB_Endereco."CODCLI">=<frxDB_Clientes."CODCLI">'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Telefone."TIPOTEL"]')
        end
        object frxDB_Telefonenumero: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frxR_Clientes.frxDB_Telefone
          DataSetName = 'frxDB_Telefone'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Telefone."TELEFONE"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo:')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero:')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 55.692950000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        Condition = 'frxDB_Clientes."CODCLI"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 36.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
        end
        object frxDB_Clientesnome: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 36.779530000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'NOMECLI'
          DataSet = frxR_Clientes.frxDB_Clientes
          DataSetName = 'frxDB_Clientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Clientes."NOMECLI"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
