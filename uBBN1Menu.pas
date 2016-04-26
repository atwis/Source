unit uBBN1Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGraphics, cxLookAndFeels, ExtCtrls, cxPC;

type
  TfBBN1Menu = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    mInformation: TMemo;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    bOrderMaterial: TcxButton;
    Shape9: TShape;
    cxButton14: TcxButton;
    Shape10: TShape;
    cxButton13: TcxButton;
    lDaftarPemohon: TLabel;
    lRegisterJmlBerkas: TLabel;
    lDartarPerusahaan: TLabel;
    procedure lDaftarPemohonClick(Sender: TObject);
    procedure lDartarPerusahaanClick(Sender: TObject);
    procedure bOrderMaterialClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeColor(Sender: TObject; Msg: Integer);
  public
    { Public declarations }
    procedure WndProc(var Message : TMessage); override;
  end;

var
  fBBN1Menu: TfBBN1Menu;

implementation
uses
  uMain, uPemohon, uVariabel, uDataPerusahaan, uPendaftaran, uWait; 
{$R *.dfm}

{ TfBBN1Menu }

procedure TfBBN1Menu.ChangeColor(Sender: TObject; Msg: Integer);
begin
  {If a label is the one that the mouse is over then we}
  {do this}
  If Sender Is TLabel Then
  Begin
    if (Msg = CM_MOUSELEAVE) then
    begin
     (Sender AS TLabel).Font.Size := 10;
     (Sender AS TLabel).Font.Style := [];
     (Sender As TLabel).Font.Color := clWindowText;
    end;
    if (Msg = CM_MOUSEENTER) then
    begin
     (Sender AS TLabel).Font.Size := 12; 
     (Sender AS TLabel).Font.Style := [fsBold];
     (Sender As TLabel).Font.Color := clBlue;
    end
  End;
end;

procedure TfBBN1Menu.WndProc(var Message: TMessage);
begin
  {Here we see which component gets changed.}
  {This bit here tells us which component the mouse is over}
    if Message.LParam = Longint(lDaftarPemohon) then
       ChangeColor(lDaftarPemohon, Message.Msg);
    if Message.LParam = Longint(lRegisterJmlBerkas) then
       ChangeColor(lRegisterJmlBerkas, Message.Msg);
    if Message.LParam = Longint(lDartarPerusahaan) then
       ChangeColor(lDartarPerusahaan, Message.Msg);

  inherited WndProc(Message);
end;

procedure TfBBN1Menu.lDaftarPemohonClick(Sender: TObject);
var
   aForm : TfPemohon;
begin
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;
    if not IsFormOpen('fPemohon') then
    begin
      //Create a new tab sheet
      tabSheet[300] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[300].PageControl := pc_proses;

      //create a form
      aForm := TfPemohon.Create(tabSheet[300]) ;
      aForm.Parent := tabSheet[300];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[300].Caption := aForm.Caption;
      tabSheet[300].Name := 'fPemohon';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[300];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[300];
    end;
  end;
end;

procedure TfBBN1Menu.lDartarPerusahaanClick(Sender: TObject);
var
   aForm : TfDataPerusahaan;
begin
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;
    if not IsFormOpen('fDataPerusahaan') then
    begin
      //Create a new tab sheet
      tabSheet[301] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[301].PageControl := pc_proses;

      //create a form
      aForm := TfDataPerusahaan.Create(tabSheet[301]) ;
      aForm.Parent := tabSheet[301];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[301].Caption := aForm.Caption;
      tabSheet[301].Name := 'fDataPerusahaan';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[301];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[301];
    end;
  end;

end;

procedure TfBBN1Menu.bOrderMaterialClick(Sender: TObject);
var
   aForm : TfPendaftaran;
begin
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;

    if not IsFormOpen('fPendaftaran') then
    begin
      //Create a new tab sheet
      tabSheet[7] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[7].PageControl := pc_proses;

      //create a form
      aForm := TfPendaftaran.Create(tabSheet[7]) ;
      aForm.Parent := tabSheet[7];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[7].Caption := aForm.Caption;
      tabSheet[7].Name := 'fPendaftaran';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[7];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[7];
    end;
  end;
end;

end.
