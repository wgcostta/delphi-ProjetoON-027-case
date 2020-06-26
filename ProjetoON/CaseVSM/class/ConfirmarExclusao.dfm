object Form3: TForm3
  Left = 0
  Top = 0
  ActiveControl = btnCancelar
  ClientHeight = 82
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
    Width = 344
    Height = 82
    Align = alClient
    Alignment = taRightJustify
    TabOrder = 0
    object btnConfirma: TBitBtn
      Left = 4
      Top = 39
      Width = 162
      Height = 29
      Caption = 'Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmaClick
    end
    object btnCancelar: TBitBtn
      Left = 172
      Top = 39
      Width = 170
      Height = 29
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object StaticText1: TStaticText
      Left = 20
      Top = 9
      Width = 314
      Height = 24
      Caption = 'Confirma a Exclus'#227'o do cliente selecionado ?'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
  end
end
