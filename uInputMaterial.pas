unit uInputMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, cxMaskEdit, cxPC,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMemo, cxButtonEdit,
  cxCurrencyEdit, Uni, DBAccess, MemDS, dxSkinsCore, dxNavBarBase, dxNavBar,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, DBCtrls, Grids, DBGrids,
  CRGrid;

type
  TfInputMaterial = class(TForm)
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
    cxSplitter2: TcxSplitter;
    Panel3: TPanel;
    Label28: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label26: TLabel;
    dtTglInput: TcxDateEdit;
    eKet: TcxMemo;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    eNoSPPM: TcxTextEdit;
    cxGridCari: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    uniSPTampil: TUniStoredProc;
    dsSPTampil: TUniDataSource;
    PopupMenu1: TPopupMenu;
    ViewDatail1: TMenuItem;
    QMaterial: TUniQuery;
    dsQMaterial: TUniDataSource;
    Label7: TLabel;
    cxGridDBTableView5Column5: TcxGridDBColumn;
    cxGridDBTableView5Column6: TcxGridDBColumn;
    cxButton1: TcxButton;
    pInputKDMaster: TPanel;
    Button1: TButton;
    Shape2: TShape;
    Label8: TLabel;
    CRDBGrid1: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    PopupMenu2: TPopupMenu;
    CetakLaporanInputMaterial1: TMenuItem;
    CetakBeritaAcaraPenerimaanMaterial1: TMenuItem;
    QMaterialSNHDD: TStringField;
    QMaterialKD_BRG: TStringField;
    QMaterialNM_BRG: TStringField;
    QMaterialKD_SATUAN: TStringField;
    QMaterialNM_SATUAN: TStringField;
    QMaterialJML_BRG: TFloatField;
    QMaterialNO_AWAL: TStringField;
    QMaterialNO_AKHIR: TStringField;
    QMaterialNOURUT: TStringField;
    Label9: TLabel;
    dtTglSPPM: TcxDateEdit;
    procedure cxGridCariResize(Sender: TObject);
    procedure cxGridResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure cxGridDBTableView5Column1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure bSimpanClick(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ViewDatail1Click(Sender: TObject);
    procedure cxGridDBTableView5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView5EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure QMaterialNO_AWALChange(Sender: TField);
    procedure QMaterialNO_AKHIRChange(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure pInputKDMasterMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CRDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure CetakLaporanInputMaterial1Click(Sender: TObject);
    procedure CetakBeritaAcaraPenerimaanMaterial1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetDataMaterialFromSever;
    procedure InsertMaterialFromServer(vKODE,vNAMA,vKD_SATUAN,vNAMA_SATUAN:String);
    procedure RefreshDataMaterial(vTgl : String);
    procedure RefreshDateMaterialKode(vKOde:String);
    procedure FocusNextCell(AView: TcxGridTableView);
  end;

var
  fInputMaterial: TfInputMaterial;

implementation
uses
  uDM, uModul, uVariabel, uCari, uWait, uMasterMaterial, uMain;
{$R *.dfm}

procedure TfInputMaterial.cxGridCariResize(Sender: TObject);
begin
  cxGridDBColumn1.Width := cxGridCari.Width -
                                    (cxGridDBColumn2.Width + 40);
  Application.ProcessMessages;
end;

procedure TfInputMaterial.cxGridResize(Sender: TObject);
begin
  cxGridDBTableView5Column2.Width := cxGrid.Width -
                                    (cxGridDBTableView5Column1.Width +
                                     cxGridDBTableView5Column3.Width +
                                     cxGridDBTableView5Column4.Width +
                                     cxGridDBTableView5Column5.Width +
                                     cxGridDBTableView5Column6.Width + 50);
  Application.ProcessMessages;
end;

procedure TfInputMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfInputMaterial.GetDataMaterialFromSever;
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

procedure TfInputMaterial.InsertMaterialFromServer(vKODE, vNAMA,
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

procedure TfInputMaterial.RefreshDataMaterial(vTgl: String);
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_input_material';
    try
      Params.Clear;
      Params.CreateParam(ftString,'vtgl',ptinput).AsString := vTgl;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_input_material. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfInputMaterial.RefreshDateMaterialKode(vKOde: String);
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_input_material_kode';
    try
      Params.Clear;
      Params.CreateParam(ftString,'vkode',ptinput).AsString := vKOde;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_input_material_kode. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfInputMaterial.bCariClick(Sender: TObject);
begin
  if eCariNo.Text <> '' then
    RefreshDateMaterialKode(eCariNo.Text)
  else
    RefreshDataMaterial(FormatDateTime('yyyymmdd',dtCariTgl.Date));
end;

procedure TfInputMaterial.FormShow(Sender: TObject);
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
                                     cxGridDBTableView5Column4.Width +
                                     cxGridDBTableView5Column5.Width +
                                     cxGridDBTableView5Column6.Width + 50);
  eNoSPPM.Clear;
  dtTglInput.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
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
  //GetDataMaterialFromSever;
  fWait.cxProgressBar1.Position := 10;
  Application.ProcessMessages;
  fWait.Close;
  bBaru.Click;
  Application.ProcessMessages;
end;

procedure TfInputMaterial.bBaruClick(Sender: TObject);
begin
  fWait.cxProgressBar1.Properties.Min := 0;
  fWait.cxProgressBar1.Properties.Max := 10;
  fWait.Show;
  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Position := 1;
  Application.ProcessMessages;
  dtTglInput.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  dtCariTgl.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  eNoSPPM.Text := '';
  eCariNo.Text := '';
  eKet.Clear;
  Label7.Caption := '';
  bCari.Click;
  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Position := 3;
  Application.ProcessMessages;
  QMaterial.Close;
  QMaterial.SQL.Text := 'DELETE FROM TEMP_INPUT_MATERIAL_D WHERE SNHDD=:SNHDD';
  QMaterial.Params[0].AsString := tSNHDD;
  QMaterial.Execute;

  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Position := 5;
  Application.ProcessMessages;
  QMaterial.Close;
  QMaterial.SQL.Text := 'SELECT SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR,(NO_AWAL||''/''||NO_AKHIR) as NOURUT FROM TEMP_INPUT_MATERIAL_D WHERE SNHDD=:SNHDD';
  QMaterial.Params[0].AsString := tSNHDD;
  QMaterial.Open;
  QMaterial.Append;

  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Position := 6;
  Application.ProcessMessages;
  DM.vtMaterialSrv.Clear;
  DM.vtMaterialSrv.Open;
  DM.vtMaterialSrv.First;
  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Position := 9;
  Application.ProcessMessages;
  GetDataMaterialFromSever;
  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Position := 10;
  fWait.Close;
  Application.ProcessMessages;
  eNoSPPM.SetFocus;
end;

procedure TfInputMaterial.cxGridDBTableView5Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if dtTglInput.Text <> '' then
  begin
    if DM.vtMaterialSrv.RecordCount > 0 then
    begin
      bAction := False;
      isFormQuery := 'fInputMaterial';
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
      QMaterialNO_AWAL.FocusControl;
    end;

  end
  else
  begin
    MessageDlg('TANGGAL PROSES HARUS DIISI TERLEBIH DAHULU',mtError,[mbOK],0);
    dtTglInput.SetFocus;
  end;
end;

procedure TfInputMaterial.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if MessageDlg('Yakin Material Akan Disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.insert_material';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'vnospmm',ptInput).AsString := eNoSPPM.Text;
        uniSP.Params.CreateParam(ftstring,'vtgl',ptinput).AsDate := dtTglInput.Date;
        uniSP.Params.CreateParam(ftString,'vket',ptInput).AsString := eKet.Text;
        uniSP.Params.CreateParam(ftString,'vsnhdd',ptInput).AsString := tSNHDD;
        uniSP.Params.CreateParam(ftString,'vusr_ins',ptInput).AsString := vIDPetugas;
        uniSP.Params.CreateParam(ftString,'vkdpolda',ptInput).AsString := TKDPOLDA;
        if Label7.Caption <> '' then
           uniSP.Params.CreateParam(ftString,'visupdate',ptInput).AsString := '1'
        else
           uniSP.Params.CreateParam(ftString,'visupdate',ptInput).AsString := '0';
        uniSP.Params.CreateParam(ftString,'vkode',ptInput).AsString := Label7.Caption;
        uniSP.Params.CreateParam(ftstring,'vtglsppm',ptinput).AsDate := dtTglSPPM.Date;
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;
        Label7.Caption := uniSP.Params.ParamValues['RESULT'];
        if Pos('Error',uniSP.Params.ParamValues['RESULT']) > 0 then
        begin
          ErrorProgDialog('Error, Ket Error :'+uniSP.Params.ParamValues['RESULT']);
        end
        else
        begin
          MessageDlg('PROSES BERHASIL DISIMPAN',mtInformation,[mbOK],0);
          bBaru.Click;
        end;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.insert_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfInputMaterial.bHapusClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  vTemp : String;
begin
  if MessageDlg('Yakin Input Material Akan Dihapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.delete_input_material';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftstring,'vkode',ptinput).AsString := Label7.Caption;
        uniSP.Params.CreateParam(ftstring,'vusr_ins',ptinput).AsString := vIDPetugas; 
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
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.delete_input_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfInputMaterial.bCetakClick(Sender: TObject);
var
   p : TPoint;
begin
   with Sender as TcxButton do
   begin
      if PopupMenu2 = nil then
         beep
      else
       begin
          GetCursorPos( p );
          p.x := Left + 1;
          p.y := Top + Height + 1;
          p := Self.ClientToScreen( p );
          PopupMenu2.popup( p.x, p.y );
       end;
   end;
end;

procedure TfInputMaterial.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    with QMaterial do
    begin
      Close;
      SQL.Text := 'DELETE FROM TEMP_INPUT_MATERIAL_D WHERE SNHDD=:SNHDD';
      Params[0].AsString := tSNHDD;
      Execute;

      Close;
      SQL.Text := 'COMMIT';
      Execute;

      dtTglInput.Date := uniSPTampil.Fields[1].AsDateTime;
      dtTglSPPM.Date := uniSPTampil.Fields[4].AsDateTime;
      eKet.Text := uniSPTampil.Fields[2].AsString;
      Label7.Caption := uniSPTampil.Fields[0].AsString;
      eNoSPPM.Text := uniSPTampil.Fields[3].AsString;

      Close;
      SQL.Text := 'insert into TEMP_INPUT_MATERIAL_D(SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR)'+
                  ' select '''+tSNHDD+''',a.KDBRG,b.NAMA,b.SATUAN,c.NAMA,a.JMLBRG,a.NO_AWAL,a.NO_AKHIR from T_TRANS_MATERIAL_D a'+
                  ' left join M_MATERIAL b on a.KDBRG=b.KODE'+
                  ' left join M_SATUAN c on b.SATUAN=c.KODE'+
                  ' where a.KODE=:kode';
      try
        Params[0].AsString := Label7.Caption;
        Execute;

        Close;
        SQL.Text := 'SELECT SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR,(NO_AWAL||''/''||NO_AKHIR) as NOURUT FROM TEMP_INPUT_MATERIAL_D WHERE SNHDD=:SNHDD';
        Params[0].AsString := tSNHDD;
        Open;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..Insert TEMP_INPUT_MATERIAL_D from T_TRANS_MATERIAL_D. Ket Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfInputMaterial.ViewDatail1Click(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    with QMaterial do
    begin
      Close;
      SQL.Text := 'DELETE FROM TEMP_INPUT_MATERIAL_D WHERE SNHDD=:SNHDD';
      Params[0].AsString := tSNHDD;
      Execute;

      Close;
      SQL.Text := 'COMMIT';
      Execute;

      dtTglInput.Date := uniSPTampil.Fields[1].AsDateTime;
      eKet.Text := uniSPTampil.Fields[2].AsString;
      Label7.Caption := uniSPTampil.Fields[0].AsString;
      eNoSPPM.Text := uniSPTampil.Fields[3].AsString;

      Close;
      SQL.Text := 'insert into TEMP_INPUT_MATERIAL_D(SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR)'+
                  ' select '''+tSNHDD+''',a.KDBRG,b.NAMA,b.SATUAN,c.NAMA,a.JMLBRG,a.NO_AWAL,a.NO_AKHIR from T_TRANS_MATERIAL_D a'+
                  ' left join M_MATERIAL b on a.KDBRG=b.KODE'+
                  ' left join M_SATUAN c on b.SATUAN=c.KODE'+
                  ' where a.KODE=:kode';
      try
        Params[0].AsString := Label7.Caption;
        Execute;

        Close;
        SQL.Text := 'SELECT SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR,(NO_AWAL||''/''||NO_AKHIR) as NOURUT FROM TEMP_INPUT_MATERIAL_D WHERE SNHDD=:SNHDD';
        Params[0].AsString := tSNHDD;
        Open;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..Insert TEMP_INPUT_MATERIAL_D from T_TRANS_MATERIAL_D. Ket Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfInputMaterial.FocusNextCell(AView: TcxGridTableView);
var
  AColumn: TcxGridColumn;
begin
  AColumn := AView.Controller.FocusedColumn;
  if AView.Controller.FocusedRow.IsData then
  begin
    if AColumn.VisibleIndex < AView.VisibleColumnCount - 2 then
    begin
      AView.VisibleColumns[AColumn.VisibleIndex + 1].Focused := True;
    end
    else if AView.Controller.FocusNextRecord(AView.Controller.FocusedRecordIndex, True, True, False, False) and AView.Controller.FocusedRecord.HasCells then
    begin
      QMaterial.Append;
      AView.VisibleColumns[0].Focused := True;
    end;
  end
  else if AView.Controller.FocusNextRecord(AView.Controller.FocusedRecordIndex, True, True, False, False) and AView.Controller.FocusedRecord.HasCells then
    AView.VisibleColumns[0].Focused := True;
  AView.Controller.EditingController.ShowEdit();
end;

procedure TfInputMaterial.cxGridDBTableView5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ASite: TcxGridSite;
begin
  if Key = VK_RETURN then
  begin
    ASite := TcxGridSite(Sender);
    FocusNextCell(TcxGridTableView(ASite.GridView));
    Key := 0;
  end
  else if Key = VK_F5 then
  begin
    if dtTglInput.Text <> '' then
    begin
      if DM.vtMaterialSrv.RecordCount > 0 then
      begin
        bAction := False;
        isFormQuery := 'fInputMaterial';
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
        QMaterialNO_AWAL.FocusControl;
      end;

    end
    else
    begin
      MessageDlg('TANGGAL PROSES HARUS DIISI TERLEBIH DAHULU',mtError,[mbOK],0);
      dtTglInput.SetFocus;
    end;
  end;
end;

procedure TfInputMaterial.cxGridDBTableView5EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FocusNextCell(TcxGridTableView(Sender));
    Key := 0;
  end
  else if Key = VK_F5 then
  begin
    if dtTglInput.Text <> '' then
    begin
      if DM.vtMaterialSrv.RecordCount > 0 then
      begin
        bAction := False;
        isFormQuery := 'fInputMaterial';
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
        QMaterialNO_AWAL.FocusControl;
      end;

    end
    else
    begin
      MessageDlg('TANGGAL PROSES HARUS DIISI TERLEBIH DAHULU',mtError,[mbOK],0);
      dtTglInput.SetFocus;
    end;
  end;
end;

procedure TfInputMaterial.QMaterialNO_AWALChange(Sender: TField);
begin
  //QMaterialJML_BRG.Value := (QMaterialNO_AKHIR.Value - QMaterialNO_AWAL.Value)+1;
end;

procedure TfInputMaterial.QMaterialNO_AKHIRChange(Sender: TField);
begin
  //QMaterialJML_BRG.Value := (QMaterialNO_AKHIR.Value - QMaterialNO_AWAL.Value)+1;
end;

procedure TfInputMaterial.Button1Click(Sender: TObject);
begin
  pInputKDMaster.Visible := False;
end;

procedure TfInputMaterial.pInputKDMasterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pInputKDMaster.Handle, wm_SysCommand,$f012,0);
end;

procedure TfInputMaterial.CRDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pInputKDMaster.Handle, wm_SysCommand,$f012,0);
end;

procedure TfInputMaterial.Label8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pInputKDMaster.Handle, wm_SysCommand,$f012,0);
end;

procedure TfInputMaterial.cxButton1Click(Sender: TObject);
var
   aForm : TfMasterMaterial;
begin
  FMain.pProses.Visible := False;
  FMain.pc_proses.Visible := True;
  if not FMain.IsFormOpen('fMasterMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[150] := TcxTabSheet.Create(FMain.pc_proses) ;
    tabSheet[150].PageControl := FMain.pc_proses;

    //create a 34
    aForm := TfMasterMaterial.Create(tabSheet[150]) ;
    aForm.Parent := tabSheet[150];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[150].Caption := aForm.Caption;
    tabSheet[150].Name := 'fMasterMaterial';

    //activate the sheet
    FMain.pc_proses.ActivePage := tabSheet[150];
  end
  else
  begin
    FMain.pc_proses.ActivePage := tabSheet[150];
  end;
end;

procedure TfInputMaterial.CetakLaporanInputMaterial1Click(Sender: TObject);
begin
  if (QMaterial.Active) and (QMaterial.RecordCount > 0) then
  begin
    Application.ProcessMessages;
    tNoDok := Label7.Caption;
    tTglDok := FormatDateTime('dd mmm yyyy',dtTglInput.Date);
    tKetDok := eKet.Text;
    tNoSPMM := eNoSPPM.Text;
    DM.frxDBDataset.DataSource := dsQMaterial;
    DM.frxReport.LoadFromFile(RootPath+'\input_material.fr3');
    if TReport = '1' then
       DM.frxReport.DesignReport
    else
       DM.frxReport.ShowReport();
  end;
end;

procedure TfInputMaterial.CetakBeritaAcaraPenerimaanMaterial1Click(
  Sender: TObject);
begin
  if Label7.Caption <> '' then
  begin
    {tHari, tTanggal, tBulan, tTahun, tNoSPPM, tTglSPPM, tNamaMaterial, tNoAwal, tNoAkhir,
     tJumlah, tSatuan}
    tNoDok := Label7.Caption;
    tHari := FormatDateTime('dddd', dtTglSPPM.Date);
    tTanggal := TitleCase(HitungUang(FormatDateTime('dd',dtTglSPPM.Date)));
    tBulan := FormatDateTime('mmmm',dtTglSPPM.Date);
    tTahun := TitleCase(HitungUang(FormatDateTime('yyyy',dtTglSPPM.Date)));
    tNoSPPM := eNoSPPM.Text;
    tTglSPPM := FormatDateTime('dd mmmm yyyy',dtTglSPPM.Date);
    tNamaMaterial := QMaterialNM_BRG.AsVariant;
    tNoAwal := QMaterialNO_AWAL.AsVariant;
    tNoAkhir := QMaterialNO_AKHIR.AsVariant;
    tJumlah := QMaterialJML_BRG.AsVariant;
    tSatuan := QMaterialNM_SATUAN.AsVariant;
    tTglDok := FormatDateTime('dd/mm/yyyy',dtTglInput.Date);


    DM.frxReport.LoadFromFile(RootPath+'\ba_penerimaan_material.fr3');
    if TReport = '1' then
       DM.frxReport.DesignReport
    else
       DM.frxReport.ShowReport();
  end
  else
  begin
    MessageDlg('Data yang akan dicetak berita acara tidak ada',mtInformation,[mbOK],0);
  end;
end;

end.
