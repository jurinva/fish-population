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
  MIN = -10;
  MAX = 10;
var
  x: Integer;
  r: Double;
  y: Double;
begin
  r := StrToFloat(Edit1.Text);
  for x:=0 to N do begin
    y := (r * x) * (1-x);
    FishPopulation.AddY(y);
//    S.AddXY(x, sin(x));
  end;
end;

end.

