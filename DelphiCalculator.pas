unit DelphiCalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    visor: TEdit;
    painel: TPanel;
    Retroceder: TButton;
    Sete: TButton;
    Quatro: TButton;
    Um: TButton;
    Zero: TButton;
    CE: TButton;
    Oito: TButton;
    Cinco: TButton;
    Dois: TButton;
    Virgula: TButton;
    Igual: TButton;
    Tres: TButton;
    Seis: TButton;
    Nove: TButton;
    Limpar: TButton;
    Maismenos: TButton;
    Mais: TButton;
    Menos: TButton;
    Multiplicar: TButton;
    Dividir: TButton;
    procedure NumbersClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure RetrocederClick(Sender: TObject);
    procedure CEClick(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure MenosClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure VirgulaClick(Sender: TObject);
  private
    primeiroNum, segundoNum, resposta : String;
    ope : Char;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// -----------------------------------------------------------------------------

// O usário deve ser capaz de apagar um número de sua operação
procedure TForm1.RetrocederClick(Sender: TObject);
begin
  visor.Text := copy(visor.Text,1,length(visor.Text)-1);
end;

// O usuário deve ser capaz de retornar sua operação ao começo (Retornar ao número 0)
procedure TForm1.LimparClick(Sender: TObject);
begin
  visor.Text := '0';
end;

// O usuário deve ser capaz de apagar uma entrada
procedure TForm1.CEClick(Sender: TObject);

var f, s : String;

begin
  visor.Text := '0';

  f := primeiroNum;
  s := segundoNum;

  f := '';
  s := '';
end;

procedure TForm1.VirgulaClick(Sender: TObject);
begin
  if (POS(',', visor.Text) <> 0) then
    exit
    else
      visor.Text := visor.Text + Virgula.Caption;

end;

// -----------------------------------------------------------------------------

procedure TForm1.NumbersClick(Sender: TObject);

var pressButton : TButton;

begin
    pressButton := Sender as TButton;

    if visor.Text = '0' then
    begin
      visor.Text := pressButton.Caption;
    end
    else
      visor.Text := visor.Text + pressButton.Caption;
end;

// -----------------------------------------------------------------------------

procedure TForm1.MaisClick(Sender: TObject);
begin
  primeiroNum := visor.Text;
  ope := '+';
  visor.Text := '';
end;


procedure TForm1.MenosClick(Sender: TObject);
begin
  primeiroNum := visor.Text;
  ope := '-';
  visor.Text := '';
end;

procedure TForm1.MultiplicarClick(Sender: TObject);
begin
  primeiroNum := visor.Text;
  ope := '*';
  visor.Text := '';
end;

procedure TForm1.DividirClick(Sender: TObject);
begin
  primeiroNum := visor.Text;
  ope := '/';
  visor.Text := '';
end;

// -----------------------------------------------------------------------------

procedure TForm1.IgualClick(Sender: TObject);
begin
  segundoNum := visor.Text;

  if ope = '+' then
    resposta := FloatToStr(StrToFloat(primeiroNum) + StrToFloat(segundoNum));
    visor.Text := resposta;

  if ope = '-' then
    resposta := FloatToStr(StrToFloat(primeiroNum) - StrToFloat(segundoNum));
    visor.Text := resposta;

  if ope = '*' then
    resposta := FloatToStr(StrToFloat(primeiroNum) * StrToFloat(segundoNum));
    visor.Text := resposta;

  if ope = '/' then
    resposta := FloatToStr(StrToFloat(primeiroNum) / StrToFloat(segundoNum));
    visor.Text := resposta;
end;

end.
