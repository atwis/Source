unit uOrderMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxButtonEdit, cxCurrencyEdit, cxMemo, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, DBAccess, MemDS, Uni, UniProvider, OracleUniProvider,
  ComCtrls, Grids, DBGrids, CRGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfOrderMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eCariNo: TcxTextEdit;
    dtCariTgl: TcxDateEdit;
    bCari: TcxButton;
    cxGridCari: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    Label28: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxGrid: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    eKet: TcxMemo;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    dtTgl: TcxDateEdit;
    QMaterial: TUniQuery;
    QMaterialSNHDD: TStringField;
    QMaterialKD_BRG: TStringField;
    QMaterialNM_BRG: TStringField;
    QMaterialKD_SATUAN: TStringField;
    QMaterialNM_SATUAN: TStringField;
    QMaterialJML_BRG: TFloatField;
    dsQMaterial: TUniDataSource;
    Label7: TLabel;
    uniSPTampil: TUniStoredProc;
    dsSPTampil: TUniDataSource;
    PopupMenu1: TPopupMenu;
    ViewDatail1: TMenuItem;
    procedure bBaruClick(Sender: TObject);
    procedure cxGridDBTableView5Column1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSimpanClick(Sender: TObject);
    procedure cxGridCariResize(Sender: TObject);
    procedure cxGridResize(Sender: TObject);
    procedure bCariClick(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ViewDatail1Click(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetDataMaterialFromSever;
    procedure InsertMaterialFromServer(vKODE,vNAMA,vKD_SATUAN,vNAMA_SATUAN:String);
    procedure RefreshDataMaterial(vTgl : String);
    procedure RefreshDateMaterialKode(vKOde:String);
  end;

var
  fOrderMaterial: TfOrderMaterial;

implementation

Uses
   uDM, uModul, uVariabel, uCari, uWait;
{$R *.dfm}

procedure TfOrderMaterial.GetDataMaterialFromSever;
begin
  DM.Q.Close;
  DM.Q.SQL.Clear;
  DM.Q.SQL.Text := 'SELECT a.KODE,a.NAMA,a.SATUAN,b.NAMA AS NAMA_SATUAN FROM M_MATERIAL a'+
                   ' LEFT JOIN M_SATUAN b ON a.SATUAN=b.KODE'+
                   ' ORDER BY a.KODE';
  try
    DM.Q.Open;
    if DM.Q.RecordCount > 0 then
    begin
      while not DM.Q.Eof do
      begin
        InsertMaterialFromServer(DM.Q.FieldByName('KODE').AsString,
                                 DM.Q.FieldByName('NAMA').AsString,
                                 DM.Q.FieldByName('SATUAN').AsString,
                                 DM.Q.FieldByName('NAMA_SATUAN').AsString);
        DM.Q.Next;
      end;
    end
    else
    begin
      Log('DATA MASTER MATERIAL TIDAK ADA');
    end;
  except on E:Exception do
  begin
    ErrorProgDialog('Error,..GetDataMaterialFromSever.Select M_MATERIAL. Ket Error : '+E.Message);
  end;
  end;
end;

procedure TfOrderMaterial.InsertMaterialFromServer(vKODE, vNAMA,
  vKD_SATUAN, vNAMA_SATUAN: String);
begin
  DM.vtMaterialSrv.Append;
  DM.vtMaterialSrv.FieldByName('KODE').AsString := vKODE;
  DM.vtMaterialSrv.FieldByName('NAMA').AsString := vNAMA;
  DM.vtMaterialSrv.FieldByName('KD_SATUAN').AsString := vKD_SATUAN;
  DM.vtMaterialSrv.FieldByName('NAMA_SATUAN').AsString := vNAMA_SATUAN;
  DM.vtMaterialSrv.Post;
  Application.ProcessMessages;
end;

procedure TfOrderMaterial.bBaruClick(Sender: TObject);
begin
  dtTgl.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  dtCariTgl.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  eCariNo.Text := '';
  eKet.Clear;
  Label7.Caption := '';
  bCari.Click;
  QMaterial.Close;
  QMaterial.SQL.Text := 'DELETE FROM TEMP_ORDER_MATERIAL_D WHERE SNHDD=:SNHDD';
  QMaterial.Params[0].AsString := tSNHDD;
  QMaterial.Execute;
  QMaterial.Close;
  QMaterial.SQL.Text := 'SELECT * FROM TEMP_ORDER_MATERIAL_D WHERE SNHDD=:SNHDD';
  QMaterial.Params[0].AsString := tSNHDD;
  QMaterial.Open;
  DM.vtMaterialSrv.Clear;
  DM.vtMaterialSrv.Open;
  DM.vtMaterialSrv.First;
  GetDataMaterialFromSever;
  dtTgl.SetFocus;
end;

procedure TfOrderMaterial.cxGridDBTableView5Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if dtTgl.Text <> '' then
  begin
    if DM.vtMaterialSrv.RecordCount > 0 then
    begin
      bAction := False;
      isFormQuery := 'fOrderMaterial';
      fCari.dsCari.DataSet := DM.vtMaterialSrv;
      fCari.cxGridDBTableView1.BeginUpdate;
      fCari.cxGridDBTableView1.ClearItems;
      fCari.cxGridDBTableView1.DataController.CreateAllItems;
      fCari.cxGridDBTableView1.DataController.Filter.Clear;
      fCari.cxGridDBTableView1.EndUpdate;
      fCari.ShowModal;
    end
    else
    begin
      MessageDlg('DATA MASTER MATERIAL TIDAK ADA',mtWarning,[mbOK],0);
    end;

    if bAction then
    begin
      QMaterialSNHDD.AsString := tSNHDD;
      QMaterialKD_BRG.AsString := tKDBarang;
      QMaterialNM_BRG.AsString := tNamaBarang;
      QMaterialKD_SATUAN.AsString := tKDSatuan;
      QMaterialNM_SATUAN.AsString := tNamaSatuan;
      QMaterialJML_BRG.FocusControl;
    end;

  end
  else
  begin
    MessageDlg('TANGGAL PROSES HARUS DIISI TERLEBIH DAHULU',mtError,[mbOK],0);
    dtTgl.SetFocus;
  end;
end;

procedure TfOrderMaterial.FormShow(Sender: TObject);
begin
  fWait.cxProgressBar1.Properties.Min := 0;
  fWait.cxProgressBar1.Properties.Max := 10;
  fWait.Show;
  fWait.Label1.Caption := 'Create Form Material..';
  fWait.cxProgressBar1.Position := 4;
  Application.ProcessMessages;
  cxGridDBTableView5Column2.Width := cxGrid.Width -
                                    (cxGridDBTableView5Column1.Width +
                                     cxGridDBTableView5Column3.Width +
                                     cxGridDBTableView5Column4.Width + 50);
  dtTgl.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  eKet.Clear;
  fWait.Label1.Caption := 'Clear Virtual Memory..';
  fWait.cxProgressBar1.Position := 6;
  Application.ProcessMessages;
  DM.vtMaterialSrv.Clear;
  DM.vtMaterialSrv.Open;
  DM.vtMaterialSrv.First;
  fWait.Label1.Caption := 'Get Data Material..';
  fWait.cxProgressBar1.Position := 8;
  Application.ProcessMessages;
  GetDataMaterialFromSever;
  fWait.Label1.Caption := 'Get Data Material..';
  fWait.cxProgressBar1.Position := 10;
  Application.ProcessMessages;
  fWait.Close;
  bBaru.Click;
  Application.ProcessMessages;
end;

procedure TfOrderMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfOrderMaterial.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if MessageDlg('Yakin Order Material Akan Disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.insert_order_material';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftstring,'vtgl',ptinput).AsDate := dtTgl.Date;
        uniSP.Params.CreateParam(ftString,'vket',ptInput).AsString := eKet.Text;
        uniSP.Params.CreateParam(ftString,'vsnhdd',ptInput).AsString := tSNHDD;
        uniSP.Params.CreateParam(ftString,'vusr_ins',ptInput).AsString := vIDPetugas;
        uniSP.Params.CreateParam(ftString,'vkdpolda',ptInput).AsString := TKDPOLDA;
        if Label7.Caption <> '' then
           uniSP.Params.CreateParam(ftString,'visupdate',ptInput).AsString := '1'
        else
           uniSP.Params.CreateParam(ftString,'visupdate',ptInput).AsString := '0';
        uniSP.Params.CreateParam(ftString,'vkode',ptInput).AsString := Label7.Caption;
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;
        Label7.Caption := uniSP.Params.ParamValues['RESULT'];
        MessageDlg('PROSES BERHASIL DISIMPAN',mtInformation,[mbOK],0);
        bBaru.Click;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.insert_order_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfOrderMaterial.RefreshDataMaterial(vTgl: String);
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_order_material';
    try
      Params.Clear;
      Params.CreateParam(ftString,'vtgl',ptinput).AsString := vTgl;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      //Active := True;
      Open;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_order_material. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfOrderMaterial.cxGridCariResize(Sender: TObject);
begin
  cxGridDBColumn1.Width := cxGridCari.Width -
                                    (cxGridDBColumn2.Width + 40);
  Application.ProcessMessages;
end;

procedure TfOrderMaterial.cxGridResize(Sender: TObject);
begin
  cxGridDBTableView5Column2.Width := cxGrid.Width -
                                    (cxGridDBTableView5Column1.Width +
                                     cxGridDBTableView5Column3.Width +
                                     cxGridDBTableView5Column4.Width + 50);
  Application.ProcessMessages;
end;

procedure TfOrderMaterial.bCariClick(Sender: TObject);
begin
  if eCariNo.Text <> '' then
    RefreshDateMaterialKode(eCariNo.Text)
  else
    RefreshDataMaterial(FormatDateTime('yyyymmdd',dtCariTgl.Date));
end;

procedure TfOrderMaterial.RefreshDateMaterialKode(vKOde: String);
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_order_material_kode';
    try
      Params.Clear;
      Params.CreateParam(ftString,'vkode',ptinput).AsString := vKOde;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //Active := True;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_order_material_kode. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfOrderMaterial.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    with QMaterial do
    begin
      Close;
      SQL.Text := 'DELETE FROM TEMP_ORDER_MATERIAL_D WHERE SNHDD=:SNHDD';
      Params[0].AsString := tSNHDD;
      Execute;

      Close;
      SQL.Text := 'COMMIT';
      Execute;

      dtTgl.Date := uniSPTampil.Fields[1].AsDateTime;
      eKet.Text := uniSPTampil.Fields[2].AsString;
      Label7.Caption := uniSPTampil.Fields[0].AsString;

      Close;
      SQL.Text := 'insert into TEMP_ORDER_MATERIAL_D(SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG)'+
                  ' select '''+tSNHDD+''',a.KDBRG,b.NAMA,b.SATUAN,c.NAMA,a.JMLBRG from T_ORDER_MATERIAL_D a'+
                  ' left join M_MATERIAL b on a.KDBRG=b.KODE'+
                  ' left join M_SATUAN c on b.SATUAN=c.KODE'+
                  ' where a.KODE=:kode';
      try
        Params[0].AsString := Label7.Caption;
        Execute;

        Close;
        SQL.Text := 'SELECT * FROM TEMP_ORDER_MATERIAL_D WHERE SNHDD=:SNHDD';
        Params[0].AsString := tSNHDD;
        Open;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..Insert TEMP_ORDER_MATERIAL_D from T_ORDER_MATERIAL_D. Ket Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfOrderMaterial.ViewDatail1Click(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    with QMaterial do
    begin
      Close;
      SQL.Text := 'DELETE FROM TEMP_ORDER_MATERIAL_D WHERE SNHDD=:SNHDD';
      Params[0].AsString := tSNHDD;
      Execute;

      Close;
      SQL.Text := 'COMMIT';
      Execute;

      dtTgl.Date := uniSPTampil.Fields[1].AsDateTime;
      eKet.Text := uniSPTampil.Fields[2].AsString;
      Label7.Caption := uniSPTampil.Fields[0].AsString;

      Close;
      SQL.Text := 'insert into TEMP_ORDER_MATERIAL_D(SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG)'+
                  ' select '''+tSNHDD+''',a.KDBRG,b.NAMA,b.SATUAN,c.NAMA,a.JMLBRG from T_ORDER_MATERIAL_D a'+
                  ' left join M_MATERIAL b on a.KDBRG=b.KODE'+
                  ' left join M_SATUAN c on b.SATUAN=c.KODE'+
                  ' where a.KODE=:kode';
      try
        Params[0].AsString := Label7.Caption;
        Execute;

        Close;
        SQL.Text := 'SELECT * FROM TEMP_ORDER_MATERIAL_D WHERE SNHDD=:SNHDD';
        Params[0].AsString := tSNHDD;
        Open;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..Insert TEMP_ORDER_MATERIAL_D from T_ORDER_MATERIAL_D. Ket Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfOrderMaterial.bHapusClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  vTemp : String;
begin
  if MessageDlg('Yakin Order Material Akan Dihapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.delete_order_material';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftstring,'vkode',ptinput).AsString := Label7.Caption;
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;
        vTemp := uniSP.Params.ParamValues['RESULT'];
        if vTemp = '00' then
           MessageDlg('DATA BERHASIL DIHAPUS',mtInformation,[mbOK],0)
        else
           MessageDlg('DATA GAGAL DIHAPUS'+#13+
                      'UNTUK KETERANGAN LEBIH LANJUT HUBUNGI ADMINISTRATOR',mtInformation,[mbOK],0);
        bBaru.Click;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.delete_order_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfOrderMaterial.bCetakClick(Sender: TObject);
begin
  if (QMaterial.Active) and (QMaterial.RecordCount > 0) then
  begin
    Application.ProcessMessages;
    tNoDok := Label7.Caption;
    tTglDok := FormatDateTime('dd mmm yyyy',dtTgl.Date);
    tKetDok := eKet.Text;
    DM.frxDBDataset.DataSource := dsQMaterial;
    DM.frxReport.LoadFromFile(RootPath+'\order_material.fr3');
    if TReport = '1' then
       DM.frxReport.DesignReport
    else
       DM.frxReport.ShowReport();
  end;
end;

end.
