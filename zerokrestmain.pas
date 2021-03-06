unit zerokrestmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Jpeg, Menus, mode;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    cell11: TImage;
    cell12: TImage;
    cell13: TImage;
    cell23: TImage;
    cell22: TImage;
    cell21: TImage;
    cell33: TImage;
    cell32: TImage;
    cell31: TImage;
    GroupBox2: TGroupBox;
    A: TLabel;
    Label1: TLabel;
    Button1: TButton;
    B: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N11: TMenuItem;
    N2: TMenuItem;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cell11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  field: array[1..3, 1..3] of integer;
  turn, count, i, j, teama, teamb, modem: integer;
  game, bot: boolean;


implementation

{$R *.dfm}


procedure botCheck(sitex: integer; var bool: boolean);
var
  b, i, j, site: integer;
  bo: boolean;
begin
  bo := false;
  site := sitex;
  for i := 1 to 3 do
  begin
    b := 0;
    for j := 1 to 3 do
    begin
      if field[i][j] = site then inc(b);
    end;
    if b = 2 then
      for j := 1 to 3 do
        if field[i][j] = -1 then field[i][j] := site;
    bo := true;
    break;
  end;
  if bo = false then
  begin
    for i := 1 to 3 do
    begin
      b := 0;
      for j := 1 to 3 do
      begin
        if field[j][i] = site then inc(b);
      end;
      if b = 2 then
        for j := 1 to 3 do
          if field[j][i] = -1 then field[j][i] := site;
      bo := true;
      break;
    end;
  end;
  b := 0;
  if bo = false then
  begin
    if field[1][1] = site then inc(b);
    if field[2][2] = site then inc(b);
    if field[3][3] = site then inc(b);
    if b = 2 then
    begin
      if field[1][1] = -1 then field[1][1] := site
      else
        if field[2][2] = -1 then field[2][2] := site
        else
          if field[3][3] = -1 then field[3][3] := site;
      bo := true;
    end;
  end;
  b := 0;
  if bo = false then
  begin
    if field[1][3] = site then inc(b);
    if field[2][2] = site then inc(b);
    if field[3][1] = site then inc(b);
    if b = 2 then
    begin
      if field[1][3] = -1 then field[1][3] := site
      else
        if field[2][2] = -1 then field[2][2] := site
        else
          if field[3][1] = -1 then field[3][1] := site;
      bo := true;
    end;
  end;
  bool := bo;
end;

procedure botTurn(site: integer);
var
  b: boolean;
  i, j, free, rand: integer;
begin
  b := false;
  free := 0;
  botCheck(site, b);
  if b = false then
    botCheck((site + 1) mod 2, b);
  if  b = false then
  begin
    for i := 1 to 3 do
      for j := 1 to 3 do
        if field[i][j] = -1 then inc(free);
    rand := random(free + 1);
    free := 0;
    for i := 1 to 3 do
      for j := 1 to 3 do
      begin
        if field[i][j] = -1 then inc(free);
        if free = rand then
        begin
          field[i][j] := site;
        end;
      end;
  end;


end;

function checkWin(): integer;
var
  i, ans: integer;
begin
  ans := -1;
  for i := 1 to 3 do
    if (field[i][1] = field[i][2]) and (field[i][1] = field[i][3]) and (field[i][1] <> -1) then
      ans := field[i][1];
  if ans = -1 then
    for i := 1 to 3 do
      if (field[1][i] = field[2][i]) and (field[1][i] = field[3][i]) and (field[1][i] <> -1) then
        ans := field[1][i];
  if ans = -1 then
    if (field[1][1] = field[2][2]) and (field[1][1] = field[3][3]) and (field[1][1] <> -1) then
      ans := field[1][1]
    else
      if (field[1][3] = field[2][2]) and (field[1][3] = field[3][1]) and (field[3][1] <> -1) then
        ans := field[1][3];
  checkWin := ans;
end;

procedure newGame();
var
  i, j: integer;
  Bmp: TBitmap;
begin
  Bmp := TBitmap.Create;
  bmp.LoadFromResourceName(HInstance, 'KREST');
  form1.Image1.Picture.Bitmap.Assign(bmp);
  bmp.Free;
  Bmp := TBitmap.Create;
  bmp.LoadFromResourceName(HInstance, 'EMPTY');
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      field[i][j] := -1;
     (form1.FindComponent('cell' + inttostr(i) + inttostr(j)) as TImage).Picture.Bitmap.Assign(bmp);
    end;
  end;
  game := true;
  count := 0;
  turn := 0;
  if modem = 2 then
  begin
    botTurn(0);
    turn := 1;
  end;
  form1.A.Caption := inttostr(teama);
  form1.b.Caption := inttostr(teamb);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  turn := 0;
  game := false;
  teama := 0;
  teamb := 0;
  form1.A.Caption := inttostr(teama);
  form1.b.Caption := inttostr(teamb);
end;

procedure TForm1.cell11Click(Sender: TObject);
var
  Bmp: TBitmap;
begin
  //button1.Caption := '1';
  //label1.Caption := (sender as TImage).name;
  Bmp := TBitmap.Create;
  if game then
  begin
    if field[strtoint((sender as TImage).name[5])][strtoint((sender as TImage).name[6])] = -1  then
    begin
    inc(count);
    //form1.Label1.Caption := inttostr(count);
      field[strtoint((sender as TImage).name[5])][strtoint((sender as TImage).name[6])] := turn;
      if (turn = 0) then
      begin
        bmp.LoadFromResourceName(HInstance, 'KREST');
        (sender as TImage).Picture.Bitmap.Assign(bmp);
      end
      else
      begin
        bmp.LoadFromResourceName(HInstance, 'ZERO');
        (sender as TImage).Picture.Bitmap.Assign(bmp);
      end;
      bmp.Free;
    if checkWin() <> -1 then
    begin
      if turn = 0 then
        ShowMessage('�������� ��������!')
      else
        ShowMessage('������ ��������!');
      game := false;
      if turn = 0 then inc(teama)
      else
        inc(teamb);
      form1.A.Caption := inttostr(teama);
      form1.b.Caption := inttostr(teamb);
      newGame;
    end else
      begin
        if count = 9 then
        begin
          showmessage('�����!');
          game := false;
          newGame;
        end;
        turn := (turn + 1) mod 2;
      end;
    end;
    Bmp := TBitmap.Create;
    if (turn = 0) then
    begin
      bmp.LoadFromResourceName(HInstance, 'KREST');
      Image1.Picture.Bitmap.Assign(bmp);
    end
      else
      begin
        bmp.LoadFromResourceName(HInstance, 'ZERO');
        Image1.Picture.Bitmap.Assign(bmp);
      end;
    bmp.free;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  count := 0;
  teama := 0;
  teamb := 0;
  modem := 2;
  randomize;
  newGame;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
   if (form2.Visible = false) then form2.Visible := true;
end;



end.
