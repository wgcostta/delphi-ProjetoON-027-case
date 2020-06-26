object CaseVSM: TCaseVSM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerenciador de Clientes'
  ClientHeight = 487
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 487
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 921
      Height = 485
      ActivePage = Manutencao
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Sagoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Listagem: TTabSheet
        Caption = 'Listagem'
        object grdDados: TDBGrid
          Left = 0
          Top = 3
          Width = 890
          Height = 367
          Color = clMenu
          DataSource = dtClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODCLI'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECLI'
              Title.Caption = 'Nome'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJCLI'
              Title.Caption = 'CPF/CNPJ'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPFCLI'
              Title.Caption = 'CPF'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RGCLI'
              Title.Caption = 'RG/IE'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RGEMISSOR'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'RGUF'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SEXO'
              Title.Caption = 'Sexo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NATURALIDADE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SENHA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DTNASC'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'BLOQUEIO'
              Visible = False
            end>
        end
        object btnExcluir: TBitBtn
          Left = 311
          Top = 376
          Width = 154
          Height = 25
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnExcluirClick
        end
        object BitIncluir: TBitBtn
          Left = 3
          Top = 376
          Width = 142
          Height = 26
          Caption = 'Incluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitIncluirClick
        end
        object btnEditar: TBitBtn
          Left = 151
          Top = 376
          Width = 154
          Height = 25
          Caption = 'Editar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnEditarClick
        end
        object btnReport: TBitBtn
          Left = 471
          Top = 376
          Width = 135
          Height = 25
          Caption = 'Relat'#243'rio de Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnReportClick
        end
      end
      object Manutencao: TTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
        OnShow = ManutencaoShow
        object Nome: TStaticText
          Left = 3
          Top = 4
          Width = 40
          Height = 21
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object RG: TStaticText
          Left = 3
          Top = 79
          Width = 44
          Height = 21
          Caption = 'RG / IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object grdEndcli: TDBGrid
          Left = 44
          Top = 132
          Width = 857
          Height = 127
          DataSource = dtEndcli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOEND'
              Title.Caption = 'Tipo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDCLI'
              Title.Caption = 'Endere'#231'o'
              Width = 240
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRROCLI'
              Title.Caption = 'Bairro'
              Width = 120
              Visible = True
            end
            item
              DropDownRows = 15
              Expanded = False
              FieldName = 'CEPCLI'
              Title.Caption = 'CEP'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODCID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'COMPLEMENTO'
              Title.Caption = 'Cidade'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Visible = False
            end>
        end
        object grdTelcli: TDBGrid
          Left = 44
          Top = 288
          Width = 857
          Height = 128
          DataSource = dtTelcli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOTEL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'N'#250'mero'
              Width = 405
              Visible = True
            end>
        end
        object btnInsereEnd: TButton
          Left = 8
          Top = 132
          Width = 30
          Height = 33
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnInsereEndClick
        end
        object btnDeleteEndereco: TButton
          Left = 8
          Top = 171
          Width = 30
          Height = 33
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btnDeleteEnderecoClick
        end
        object btnInsereFone: TButton
          Left = 8
          Top = 288
          Width = 30
          Height = 33
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnInsereFoneClick
        end
        object btnDeleteFone: TButton
          Left = 8
          Top = 327
          Width = 30
          Height = 33
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btnDeleteFoneClick
        end
        object btnSalvar: TButton
          Left = 801
          Top = 3
          Width = 100
          Height = 35
          Cursor = crHandPoint
          Caption = 'Salvar'
          TabOrder = 8
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 801
          Top = 44
          Width = 100
          Height = 35
          Caption = 'Cancelar'
          TabOrder = 9
          OnClick = btnCancelarClick
        end
        object StaticText1: TStaticText
          Left = 3
          Top = 265
          Width = 54
          Height = 21
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object StaticText2: TStaticText
          Left = 8
          Top = 106
          Width = 59
          Height = 21
          Caption = 'Endereco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object edtNome: TDBEdit
          Left = 68
          Top = 0
          Width = 446
          Height = 25
          DataField = 'NOMECLI'
          DataSource = dtClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object edtRG: TDBEdit
          Left = 73
          Top = 78
          Width = 196
          Height = 25
          DataField = 'RGCLI'
          DataSource = dtClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 340
          Top = 31
          Width = 174
          Height = 46
          BiDiMode = bdRightToLeft
          Caption = 'Sexo'
          Columns = 2
          DataField = 'SEXO'
          DataSource = dtClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Masculino'
            'Feminino')
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 14
          Values.Strings = (
            'M'
            'F')
          OnChange = DBRadioGroup1Change
        end
        object RadioGroup1: TRadioGroup
          Left = 3
          Top = 31
          Width = 137
          Height = 41
          Caption = 'Pessoa'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'F'#237'sica'
            'Jur'#237'dica')
          ParentFont = False
          TabOrder = 15
          OnClick = RadioGroup1Click
        end
        object edtCPF: TDBEdit
          Left = 146
          Top = 48
          Width = 159
          Height = 24
          DataField = 'CPFCLI'
          DataSource = dtClientes
          TabOrder = 16
          OnChange = edtCPFChange
        end
        object edtCNPJ: TDBEdit
          Left = 146
          Top = 48
          Width = 159
          Height = 24
          DataField = 'CNPJCLI'
          DataSource = dtClientes
          TabOrder = 17
          Visible = False
        end
        object Button1: TButton
          Left = 801
          Top = 85
          Width = 100
          Height = 41
          Caption = 'ConsultaCEP'
          TabOrder = 18
          OnClick = Button1Click
        end
      end
      object Sistema: TTabSheet
        Caption = 'Sistema'
        ImageIndex = 2
        object btnNovaSenha: TButton
          Left = 456
          Top = 277
          Width = 145
          Height = 25
          Align = alCustom
          Caption = 'Gravar Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnNovaSenhaClick
        end
        object edtSenhaNova: TEdit
          Left = 456
          Top = 229
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 2
        end
        object edtSenhaConfirmar: TEdit
          Left = 272
          Top = 229
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 3
        end
        object StaticText6: TStaticText
          Left = 456
          Top = 203
          Width = 136
          Height = 20
          Caption = 'Confirmar Nova Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btnSair: TBitBtn
          AlignWithMargins = True
          Left = 752
          Top = 410
          Width = 145
          Height = 25
          Caption = 'Encerrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnSairClick
        end
        object Senha: TStaticText
          Left = 456
          Top = 143
          Width = 77
          Height = 20
          Caption = 'Senha atual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object StaticText7: TStaticText
          Left = 272
          Top = 143
          Width = 52
          Height = 20
          Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object StaticText8: TStaticText
          Left = 272
          Top = 203
          Width = 77
          Height = 20
          Caption = 'Nova Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object edtSenhaAtual: TEdit
          Left = 456
          Top = 169
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
        end
        object edtUsuario: TEdit
          Left = 272
          Top = 169
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sagoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object dtClientes: TDataSource
    DataSet = DataModule1.cdsClientes
    Left = 399
    Top = 398
  end
  object dtEndcli: TDataSource
    DataSet = DataModule1.cdsEndcli
    Left = 631
    Top = 398
  end
  object dtTelcli: TDataSource
    DataSet = DataModule1.cdsTelcli
    Left = 295
    Top = 398
  end
end
