object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerenciador de Clientes'
  ClientHeight = 204
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 204
    Align = alClient
    TabOrder = 0
    object btnEntrar: TButton
      Left = 152
      Top = 113
      Width = 75
      Height = 25
      Caption = 'Entrar'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnEntrarClick
    end
    object StaticText1: TStaticText
      Left = 104
      Top = 86
      Width = 42
      Height = 21
      Caption = 'Senha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object btnSair: TButton
      Left = 233
      Top = 113
      Width = 75
      Height = 25
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
      OnClick = btnSairClick
    end
    object edtUsuario: TEdit
      Left = 152
      Top = 51
      Width = 156
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 97
      Top = 59
      Width = 49
      Height = 21
      Caption = 'Usuario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edtSenha: TEdit
      Left = 152
      Top = 82
      Width = 156
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
