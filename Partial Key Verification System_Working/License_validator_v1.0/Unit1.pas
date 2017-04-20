unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.StrUtils;

const
  KEY_GOOD = 0;
  KEY_INVALID = 1;
  KEY_BLACKLISTED = 2;
  KEY_PHONY = 3;
  BL: array [0 .. 0] of String = ('11111111');

type
  TForm1 = class(TForm)
    Edit3: TEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

function PKV_CheckKey(const S : String) : Integer; external 'Project2.dll';

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (PKV_CheckKey(Edit3.Text) = 0) then
  begin
    Showmessage('You have been successfully verified');
  end
  else
  begin
    ShowMessage('Invalid Serial Key');
  end;
end;

end.
