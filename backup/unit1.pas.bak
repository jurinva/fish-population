unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    FishPopulation: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
const
  N = 100;
var
  x: Integer;
  r: Double;
  y: Double;
begin
  r := StrToFloat(Edit2.Text);
  Memo1.Lines.Clear;
  for x:=0 to N do begin
    if x = 0 then
        y := StrToFloat(Edit1.Text)
    else
        y := (r * y) * (1-y);
    FishPopulation.AddY(y);
    Memo1.Lines.Add('x='+IntToStr(x)+' y='+floatToStr(y));
  end;
end;

end.

