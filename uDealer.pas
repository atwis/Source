unit uDealer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, StdCtrls, DB,
  DBAccess, Uni, MemDS, cxTextEdit, Grids, DBGrids, CRGrid, ExtCtrls;

type
  TfDealer = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    CRDBGrid1: TCRDBGrid;
    eNama: TcxTextEdit;
    Button1: TButton;
    Button2: TButton;
    QTampil: TUniQuery;
    dsQTampil: TUniDataSource;
    Label3: TLabel;
    eSNHDD: TcxTextEdit;
    Label4: TLabel;
    eKey: TcxTextEdit;
    Label5: TLabel;
    ePNBPR2: TcxTextEdit;
    Label6: TLabel;
    ePNBPR4: TcxTextEdit;
    cbIsAktif: TComboBox;
    Label7: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ePNBPR2PropertiesChange(Sender: TObject);
    procedure ePNBPR4PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vl_ID : String;
  public
    { Public declarations }
  end;

var
  fDealer: TfDealer;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfDealer.Button2Click(Sender: TObject);
begin
  vl_ID := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select dealer_id,dealer_nama,dealer_snhdd,dealer_key,pnbp_r2,pnbp_r4,dealer_aktif from m_dealer order by dealer_id';
    Open;
  end;
  eNama.Text := '';
  eSNHDD.Text := '';
  eKey.Text := '';
  ePNBPR2.Text := '80.000';
  ePNBPR4.Text := '100.000';
  cbIsAktif.ItemIndex := 1;
  eNama.SetFocus;
end;

procedure TfDealer.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_ID := '';
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    vl_ID := QTampil.Fields[0].AsString;
    eNama.Text := QTampil.Fields[1].AsString;
    eSNHDD.Text := QTampil.Fields[2].AsString;
    eKey.Text := QTampil.Fields[3].AsString;
    ePNBPR2.Text := FormatKeUang(QTampil.Fields[4].AsCurrency);
    ePNBPR4.Text := FormatKeUang(QTampil.Fields[5].AsCurrency);
    cbIsAktif.ItemIndex := StrToInt(QTampil.Fields[6].AsString);
  end;
end;

procedure TfDealer.Button1Click(Sender: TObject);
begin
  if eNama.Text <> '' then
  begin
    if vl_ID <> '' then
    begin
      if MessageDlg('Yakin data Cara Dealer akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'update m_dealer set dealer_nama=:dealer_nama,dealer_snhdd=:dealer_snhdd,'+
                      'dealer_key=:dealer_key,pnbp_r2=:pnbp_r2,pnbp_r4=:pnbp_r4,dealer_aktif=:dealer_aktif'+
                      ' where dealer_id=:dealer_id';
          try
            Params[0].AsString := eNama.Text;
            Params[1].AsString := eSNHDD.Text;
            Params[2].AsString := eKey.Text;
            Params[3].AsFloat := BuangTitik(ePNBPR2.Text);
            Params[4].AsFloat := BuangTitik(ePNBPR4.Text);
            Params[5].AsString := IntToStr(cbIsAktif.ItemIndex);
            Params[6].AsString := vl_ID;
            Execute;
            MessageDlg('Proses Perubahan data Dealer berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Edit Data Dealer, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end
    else
    begin
      if MessageDlg('Yakin data Dealer akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'insert into m_dealer(dealer_nama,dealer_snhdd,dealer_key,pnbp_r2,pnbp_r4,dealer_aktif)'+
                      ' values(:dealer_nama,:dealer_snhdd,:dealer_key,:pnbp_r2,:pnbp_r4,:dealer_aktif)';
          try
            Params[0].AsString := eNama.Text;
            Params[1].AsString := eSNHDD.Text;
            Params[2].AsString := eKey.Text;
            Params[3].AsFloat := BuangTitik(ePNBPR2.Text);
            Params[4].AsFloat := BuangTitik(ePNBPR4.Text);
            Params[5].AsString := IntToStr(cbIsAktif.ItemIndex);
            Execute;
            MessageDlg('Proses Penyimpanan data Dealer berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Insert Data Dealer, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end;
  end;
end;

procedure TfDealer.ePNBPR2PropertiesChange(Sender: TObject);
var
  TempMauBayar : Currency;
begin
  If ePNBPR2.Text = '' then
     ePNBPR2.Text := '0';
  TempMauBayar := BuangTitik(ePNBPR2.Text);
  ePNBPR2.Text := FormatFloat('#,##0',TempMauBayar);
  ePNBPR2.SelStart := Length(ePNBPR2.Text) + 1;
end;

procedure TfDealer.ePNBPR4PropertiesChange(Sender: TObject);
var
  TempMauBayar : Currency;
begin
  If ePNBPR4.Text = '' then
     ePNBPR4.Text := '0';
  TempMauBayar := BuangTitik(ePNBPR4.Text);
  ePNBPR4.Text := FormatFloat('#,##0',TempMauBayar);
  ePNBPR4.SelStart := Length(ePNBPR4.Text) + 1;
end;

procedure TfDealer.FormShow(Sender: TObject);
begin
  eNama.Text := '';
  eSNHDD.Text := '';
  eKey.Text := '';
  ePNBPR2.Text := '80.000';
  ePNBPR4.Text := '100.000';
  cbIsAktif.ItemIndex := 1;
  eNama.SetFocus;
  with QTampil do
  begin
    Close;
    SQL.Text := 'select dealer_id,dealer_nama,dealer_aktif,dealer_snhdd,dealer_key,pnbp_r2,pnbp_r4 from m_dealer';
    Open;
  end;
end;

end.
