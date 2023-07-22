unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ServerSocket1: TServerSocket;
    Label1: TLabel;
    LabelCountConnection: TLabel;
    Button1: TButton;
    ListBoxHosts: TListBox;
    GroupBoxDataClient: TGroupBox;
    Label2: TLabel;
    LabelAdresPC: TLabel;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBoxHostsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Button3Click(Sender: TObject);
    procedure Button4�lick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    ActiveClient : TCustomWinSocket;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i : integer;
  CountConnect : integer;
begin
  ActiveClient := nil;
  GroupBoxDataClient.Visible := false;

  CountConnect :=  ServerSocket1.Socket.ActiveConnections;

  LabelCountConnection.Caption := CountConnect.ToString;
  ListBoxHosts.Clear;

  if CountConnect = 0 then exit;

  for i := 0 to CountConnect - 1 do
    ListBoxHosts.AddItem(ServerSocket1.Socket.Connections[i].RemoteHost, ServerSocket1.Socket.Connections[i])


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Assigned(ActiveClient) then  //���� ������ ������, �� ���� ������
  begin
     ActiveClient.SendText('[��������_���_��]');
           //�������� ������ ������� ��
     Button5.Visible:=True;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Assigned (ActiveClient) then
  Begin
    ActiveClient.SendText('[�������������_��]');

  End;
end;

procedure TForm1.Button4�lick(Sender: TObject);
begin
       if Assigned (ActiveClient) then
  Begin
    ActiveClient.SendText('[���������_��]');

  End;
end;






procedure TForm1.Button5Click(Sender: TObject);
begin
//������ ����� ���������� ������:   16�193 ��

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ServerSocket1.Open;
  Memo1.Font.Charset:=OEM_CHARSET //��������� ��� Memo
end;

procedure TForm1.ListBoxHostsClick(Sender: TObject);
var
  Client : TCustomWinSocket;
begin

  if ListBoxHosts.items.Objects[ListBoxHosts.ItemIndex] is TCustomWinSocket then
  begin
    GroupBoxDataClient.Visible := True;

    Client := (ListBoxHosts.items.Objects[ListBoxHosts.ItemIndex] as TCustomWinSocket);
    self.ActiveClient := Client;

    GroupBoxDataClient.Caption := '�� ������� �� - ' + Client.LocalHost;

    LabelAdresPC.Caption := Client.LocalAddress;


  end;


end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
Memo1.Text := '�������� ����� �� ������: ' + #13 + Socket.ReceiveText;
end;

end.
