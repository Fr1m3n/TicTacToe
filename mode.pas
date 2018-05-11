unit mode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    ok: TButton;
    Cancel: TButton;
    procedure CancelClick(Sender: TObject);
    procedure okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses zerokrestmain;

{$R *.dfm}

procedure TForm2.CancelClick(Sender: TObject);
begin
  form2.Close;
end;

procedure TForm2.okClick(Sender: TObject);
begin
  modem := form2.ComboBox1.ItemIndex;
  form1.label5.caption := inttostr(modem);
  form2.Close;
end;

end.
