object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi Calculator'
  ClientHeight = 350
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object visor: TEdit
    Left = 8
    Top = 8
    Width = 241
    Height = 29
    ImeName = 'visor'
    TabOrder = 0
  end
  object painel: TPanel
    Left = 8
    Top = 37
    Width = 241
    Height = 300
    TabOrder = 1
    object Retroceder: TButton
      Left = 1
      Top = 0
      Width = 60
      Height = 60
      Caption = #61653
      DisabledImageName = 'Retroceder'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RetrocederClick
    end
    object Sete: TButton
      Left = 1
      Top = 60
      Width = 60
      Height = 60
      Caption = '7'
      TabOrder = 1
      OnClick = NumbersClick
    end
    object Quatro: TButton
      Left = 1
      Top = 120
      Width = 60
      Height = 60
      Caption = '4'
      TabOrder = 2
      OnClick = NumbersClick
    end
    object Um: TButton
      Left = 1
      Top = 180
      Width = 60
      Height = 60
      Caption = '1'
      TabOrder = 3
      OnClick = NumbersClick
    end
    object Zero: TButton
      Left = 1
      Top = 239
      Width = 60
      Height = 60
      Caption = '0'
      TabOrder = 4
      OnClick = NumbersClick
    end
    object CE: TButton
      Left = 61
      Top = 0
      Width = 60
      Height = 60
      Caption = 'CE'
      TabOrder = 5
      OnClick = CEClick
    end
    object Oito: TButton
      Left = 61
      Top = 60
      Width = 60
      Height = 60
      Caption = '8'
      TabOrder = 6
      OnClick = NumbersClick
    end
    object Cinco: TButton
      Left = 61
      Top = 120
      Width = 60
      Height = 60
      Caption = '5'
      TabOrder = 7
      OnClick = NumbersClick
    end
    object Dois: TButton
      Left = 61
      Top = 180
      Width = 60
      Height = 60
      Caption = '2'
      TabOrder = 8
      OnClick = NumbersClick
    end
    object Virgula: TButton
      Left = 61
      Top = 239
      Width = 60
      Height = 60
      Caption = ','
      TabOrder = 9
      OnClick = VirgulaClick
    end
    object Igual: TButton
      Left = 121
      Top = 239
      Width = 60
      Height = 60
      Caption = '='
      TabOrder = 10
      OnClick = IgualClick
    end
    object Tres: TButton
      Left = 121
      Top = 180
      Width = 60
      Height = 60
      Caption = '3'
      TabOrder = 11
      OnClick = NumbersClick
    end
    object Seis: TButton
      Left = 121
      Top = 120
      Width = 60
      Height = 60
      Caption = '6'
      TabOrder = 12
      OnClick = NumbersClick
    end
    object Nove: TButton
      Left = 121
      Top = 60
      Width = 60
      Height = 60
      Caption = '9'
      TabOrder = 13
      OnClick = NumbersClick
    end
    object Limpar: TButton
      Left = 121
      Top = 0
      Width = 60
      Height = 60
      Caption = 'C'
      TabOrder = 14
      OnClick = LimparClick
    end
    object Maismenos: TButton
      Left = 181
      Top = 0
      Width = 60
      Height = 60
      Caption = #177
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object Mais: TButton
      Left = 181
      Top = 60
      Width = 60
      Height = 60
      Caption = '+'
      TabOrder = 16
      OnClick = MaisClick
    end
    object Menos: TButton
      Left = 181
      Top = 120
      Width = 60
      Height = 60
      Caption = '-'
      TabOrder = 17
      OnClick = MenosClick
    end
    object Multiplicar: TButton
      Left = 181
      Top = 180
      Width = 60
      Height = 60
      Caption = '*'
      TabOrder = 18
      OnClick = MultiplicarClick
    end
    object Dividir: TButton
      Left = 181
      Top = 239
      Width = 60
      Height = 60
      Caption = '/'
      TabOrder = 19
      OnClick = DividirClick
    end
  end
end
