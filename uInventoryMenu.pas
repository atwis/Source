unit uInventoryMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  ExtCtrls, StdCtrls, cxButtons, cxPC;

type
  TfInventoryMenu = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    bOrderMaterial: TcxButton;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Label4: TLabel;
    mInformation: TMemo;
    lCreatePolda: TLabel;
    lCreatePolres: TLabel;
    lCreateSatuan: TLabel;
    lCreateMaterial: TLabel;
    procedure bOrderMaterialClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeColor(Sender: TObject; Msg: Integer);
  public
    { Public declarations }
    procedure WndProc(var Message : TMessage); override;
  end;

var
  fInventoryMenu: TfInventoryMenu;

implementation

uses
   uOrderMaterial, uMain, uVariabel, uInputMaterial, uPendistribusianMaterial;

{$R *.dfm}

procedure TfInventoryMenu.bOrderMaterialClick(Sender: TObject);
var
   aForm : TfOrderMaterial;
begin
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;
    if not IsFormOpen('fOrderMaterial') then
    begin
      //Create a new tab sheet
      tabSheet[1] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[1].PageControl := pc_proses;

      //create a form
      aForm := TfOrderMaterial.Create(tabSheet[1]) ;
      aForm.Parent := tabSheet[1];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[1].Caption := aForm.Caption;
      tabSheet[1].Name := 'fOrderMaterial';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[1];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[1];
    end;
  end;
end;

procedure TfInventoryMenu.ChangeColor(Sender: TObject; Msg: Integer);
begin
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

procedure TfInventoryMenu.cxButton1Click(Sender: TObject);
var
   aForm : TfInputMaterial;
begin
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;
    if not IsFormOpen('fInputMaterial') then
    begin
      //Create a new tab sheet
      tabSheet[2] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[2].PageControl := pc_proses;

      //create a form
      aForm := TfInputMaterial.Create(tabSheet[2]) ;
      aForm.Parent := tabSheet[2];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[2].Caption := aForm.Caption;
      tabSheet[2].Name := 'fInputMaterial';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[2];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[2];
    end;
  end;
end;

procedure TfInventoryMenu.cxButton2Click(Sender: TObject);
var
   aForm : TfPendistribusianMaterial;
begin
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;
    if not IsFormOpen('fPendistribusianMaterial') then
    begin
      //Create a new tab sheet
      tabSheet[3] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[3].PageControl := pc_proses;

      //create a form
      aForm := TfPendistribusianMaterial.Create(tabSheet[3]) ;
      aForm.Parent := tabSheet[3];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[3].Caption := aForm.Caption;
      tabSheet[3].Name := 'fPendistribusianMaterial';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[3];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[3];
    end;
  end;
end;

procedure TfInventoryMenu.WndProc(var Message: TMessage);
begin
  if Message.LParam = Longint(lCreatePolda) then
       ChangeColor(lCreatePolda, Message.Msg);
  if Message.LParam = Longint(lCreatePolres) then
       ChangeColor(lCreatePolres, Message.Msg);
  if Message.LParam = Longint(lCreateSatuan) then
       ChangeColor(lCreateSatuan, Message.Msg);
  if Message.LParam = Longint(lCreateMaterial) then
       ChangeColor(lCreateMaterial, Message.Msg);

  inherited WndProc(Message);
end;

end.
