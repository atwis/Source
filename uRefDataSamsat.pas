unit uRefDataSamsat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxButtons, cxTextEdit, cxMemo;

type
  TfRefDataSamsat = class(TForm)
    lJudul: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    eNOPOL: TcxTextEdit;
    bCari: TcxButton;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eNama: TcxTextEdit;
    eAlamat: TcxMemo;
    eNoRangka: TcxTextEdit;
    eNoMesin: TcxTextEdit;
    eMerk: TcxTextEdit;
    eType: TcxTextEdit;
    eJenis: TcxTextEdit;
    cxButton1: TcxButton;
    procedure bCariClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRefDataSamsat: TfRefDataSamsat;

implementation
Uses
  uDM, uVariabel, uModul, uWait, Uni, DB, DBAccess;
{$R *.dfm}

procedure TfRefDataSamsat.bCariClick(Sender: TObject);
begin
  if eNOPOL.Text <> '' then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'SELECT NAMA,ALAMAT,NOMESIN,NOCHASIS,NAJEN,MERKNAMA,TYPE,BESARCC,WARNA_TNKB,BHN_BAKAR FROM T_REF_BBN'+
                  ' WHERE NOPOL=:NOPOL';
      ParamByName('NOPOL').AsString := eNOPOL.Text;
      Open;

      if recordcount > 0 then
      begin
        eNama.Text := FieldByName('NAMA').AsString;
        eAlamat.Text := FieldByName('ALAMAT').AsString;
        eNoRangka.Text := FieldByName('NOCHASIS').AsString;
        eNoMesin.Text := FieldByName('NOMESIN').AsString;
        eMerk.Text := FieldByName('MERKNAMA').AsString;
        eType.Text := FieldByName('TYPE').AsString;
        eJenis.Text := FieldByName('NAJEN').AsString;
      end
      else
      begin
        Close;
        SQL.Text := 'SELECT D.NAMA_PEMILIK AS NAMA,C.ALAMAT_PEMILIK AS ALAMAT,B.NO_MESIN AS NOMESIN,B.NO_RANGKA AS NOCHASIS,'+
                    'E.JENIS_NAMA AS NAJEN,F.MERK_NAMA_R AS MERKNAMA,B.TIPE AS TYPE,B.VOL_SILINDER AS BESARCC,G.WARNATNKB AS WARNA_TNKB,H.BB_NAMA AS BHN_BAKAR,A.DUP_NP_COUNT'+
                    ' FROM  t_HIST_NOPOLISI A'+
                    ' LEFT JOIN T_BPKB_MASTER B ON B.CURRENT_HISTID=A.HIST_ID'+
                    ' LEFT JOIN T_HIST_ALAMATPEMILIK C ON C.HIST_ID=A.HIST_ID'+
                    ' LEFT JOIN T_HIST_NAMAPEMILIK D ON D.HIST_ID=A.HIST_ID'+
                    ' LEFT JOIN M_JENIS E ON B.JENIS_ID=E.JENIS_ID'+
                    ' LEFT JOIN M_MERK F ON B.MERK_ID=F.MERK_ID'+
                    ' LEFT JOIN M_WARNATNKB G ON A.WARNATNKB_ID=G.WARNATNKB_ID'+
                    ' LEFT JOIN M_BAHANBAKAR H ON B.BB_ID=H.BB_ID'+
                    ' WHERE A.DUP_NP_COUNT=0 AND A.NO_POLISI=:NOPOL';
        ParamByName('NOPOL').AsString := eNOPOL.Text;
        Open;
        if recordcount > 0 then
        begin
          eNama.Text := FieldByName('NAMA').AsString;
          eAlamat.Text := FieldByName('ALAMAT').AsString;
          eNoRangka.Text := FieldByName('NOCHASIS').AsString;
          eNoMesin.Text := FieldByName('NOMESIN').AsString;
          eMerk.Text := FieldByName('MERKNAMA').AsString;
          eType.Text := FieldByName('TYPE').AsString;
          eJenis.Text := FieldByName('NAJEN').AsString;
        end
        else
        begin
          MessageDlg('DATA TIDAK DITEMUKAN DI DATA REFERENSI',mtInformation,[mbOK],0);
          eNOPOL.SetFocus;
        end
      end;
    end;
  end;
end;

procedure TfRefDataSamsat.cxButton1Click(Sender: TObject);
begin
  if MessageDlg('YAKIN DATA NOPOL AKAN DIUPDATE STATUS?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'INSERT INTO T_UNOPOL_TO_REF(NOPOL,TGL,OP_ID,ALASAN) VALUES (:NOPOL,SYSDATE,:OP_ID,:ALASAN)';
      Params[0].AsString := eNOPOL.Text;
      Params[1].AsString := vIDPetugas;
      Params[2].AsString := 'PROSES ENTRY BBN1';
      ExecSQL;

      Close;
      SQL.Text := 'UPDATE T_NOPOL_BANK SET BPKB_ID = NULL, STATUS=0,NOPOL_PILIHAN=0,REQUEST_NOPOL=0'+
                  ' WHERE NOPOL=:NOPOL';
      ParamByName('NOPOL').AsString := eNOPOL.Text;
      ExecSQL;

      Close;
      SQL.Text := 'UPDATE T_HIST_NOPOLISI SET DUP_NP_COUNT=100'+
                  ' WHERE NO_POLISI=:NOPOL';
      ParamByName('NOPOL').AsString := eNOPOL.Text;
      ExecSQL;

      MessageDlg('DATA BERHASIL DIUPDATE',mtInformation,[mbOK],0);
    end;
  end;
end;

end.
