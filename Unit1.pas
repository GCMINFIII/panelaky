unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,y:integer;
begin
for i := 1 to strtoint(edit1.text) do
  begin
    image1.Canvas.Brush.Color:=rgb(random(256),random(256),random(256));
    image1.Canvas.Rectangle(((i-1)*60)+10,400-(i*50),(i*60),400);
    for y := 1 to  i do
      begin
        image1.Canvas.Brush.Color:=rgb(255,255,255);
        image1.Canvas.Rectangle(((i-1)*60)+20,420-(y*50),((i-1)*60)+30,430-(y*50));
        image1.Canvas.Rectangle(((i-1)*60)+40,420-(y*50),((i-1)*60)+50,430-(y*50));
      end;
  end;
end;

end.
