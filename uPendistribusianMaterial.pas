unit uPendistribusianMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxDropDownEdit, cxMemo, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, cxMaskEdit, cxCalendar, cxTextEdit, cxButtonEdit,
  cxCurrencyEdit, Uni, DBAccess, MemDS, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfPendistribusianMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    uniSPTampil: TUniStoredProc;
    dsSPTampil: TUniDataSource;
    PopupMenu1: TPopupMenu;
    ViewDatail1: TMenuItem;
    QMaterial: TUniQuery;
    dsQMaterial: TUniDataSource;
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
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    dtTglInput: TcxDateEdit;
    eKet: TcxMemo;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBTableView5Column5: TcxGridDBColumn;
    cxGridDBTableView5Column6: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label10: TLabel;
    CbPolres: TComboBox;
    cbPolda: TComboBox;
    QMaterialSNHDD: TStringField;
    QMaterialKD_BRG: TStringField;
    QMaterialNM_BRG: TStringField;
    QMaterialKD_SATUAN: TStringField;
    QMaterialNM_SATUAN: TStringField;
    QMaterialJML_BRG: TFloatField;
    QMaterialNO_AWAL: TStringField;
    QMaterialNO_AKHIR: TStringField;
    QMaterialNOURUT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCariClick(Sender: TObject);
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
    procedure cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure QMaterialNO_AWALChange(Sender: TField);
    procedure QMaterialNO_AKHIRChange(Sender: TField);
    procedure cbPoldaDropDown(Sender: TObject);
    procedure CbPolresDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetDataMaterialFromSever;
    procedure InsertMaterialFromServer(vKODE,vNAMA,vKD_SATUAN,vNAMA_SATUAN:String);
    procedure RefreshDataMaterial(vTgl : String);
    procedure RefreshDateMaterialKode(vKOde:String);
    procedure FocusNextCell(AView: TcxGridTableView);
    procedure RefreshCbPolres;
    procedure RefreshCbPolda;
  end;

//Type penampung index dari combobox
type
  TString = class(TObject)
private
  fStr: String;
public
  constructor Create(const AStr: String) ;
  property Str: String read FStr write FStr;
end;

var
  fPendistribusianMaterial: TfPendistribusianMaterial;

implementation

uses
  uDM, uModul, uVariabel, uCari;

{$R *.dfm}

procedure TfPendistribusianMaterial.FocusNextCell(AView: TcxGridTableView);
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

procedure TfPendistribusianMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPendistribusianMaterial.FormShow(Sender: TObject);
begin
  cxGridDBTableView5Column2.Width := cxGrid.Width -
                                    (cxGridDBTableView5Column1.Width +
                                     cxGridDBTableView5Column3.Width +
                                     cxGridDBTableView5Column4.Width +
                                     cxGridDBTableView5Column5.Width +
                                     cxGridDBTableView5Column6.Width + 50);
  cbPolres.Text := '';
  dtTglInput.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  eKet.Clear;
  DM.vtMaterialSrv.Clear;
  DM.vtMaterialSrv.Open;
  DM.vtMaterialSrv.First;
  GetDataMaterialFromSever;
  bBaru.Click;
  Application.ProcessMessages;
end;

procedure TfPendistribusianMaterial.GetDataMaterialFromSever;
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

procedure TfPendistribusianMaterial.InsertMaterialFromServer(vKODE, vNAMA,
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

procedure TfPendistribusianMaterial.RefreshDataMaterial(vTgl: String);
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_dist_material';
    try
      Params.Clear;
      Params.CreateParam(ftString,'vtgl',ptinput).AsString := vTgl;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //Active := True;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_dist_material. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPendistribusianMaterial.RefreshDateMaterialKode(vKOde: String);
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_dist_material_kode';
    try
      Params.Clear;
      Params.CreateParam(ftString,'vkode',ptinput).AsString := vKOde;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //Active := True;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_dist_material_kode. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPendistribusianMaterial.bCariClick(Sender: TObject);
begin
  if eCariNo.Text <> '' then
    RefreshDateMaterialKode(eCariNo.Text)
  else
    RefreshDataMaterial(FormatDateTime('yyyymmdd',dtCariTgl.Date));
end;

procedure TfPendistribusianMaterial.bBaruClick(Sender: TObject);
begin
  RefreshCbPolda;
  dtTglInput.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  dtCariTgl.Text := FormatDateTime('dd/mm/yyyy',TTglSrvSkr);
  cbPolres.Text := '';
  eCariNo.Text := '';
  eKet.Clear;
  Label7.Caption := '';
  bCari.Click;
  QMaterial.Close;
  QMaterial.SQL.Text := 'DELETE FROM TEMP_PENDIST_MATERIAL_D WHERE SNHDD=:SNHDD';
  QMaterial.Params[0].AsString := tSNHDD;
  QMaterial.Execute;
  QMaterial.Close;
  QMaterial.SQL.Text := 'SELECT SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR,(NO_AWAL||''/''||NO_AKHIR) as NOURUT FROM TEMP_PENDIST_MATERIAL_D WHERE SNHDD=:SNHDD';
  QMaterial.Params[0].AsString := tSNHDD;
  QMaterial.Open;
  QMaterial.Append;
  DM.vtMaterialSrv.Clear;
  DM.vtMaterialSrv.Open;
  DM.vtMaterialSrv.First;
  GetDataMaterialFromSever;
  cbPolda.SetFocus;
end;

procedure TfPendistribusianMaterial.cxGridDBTableView5Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if dtTglInput.Text <> '' then
  begin
    if DM.vtMaterialSrv.RecordCount > 0 then
    begin
      bAction := False;
      isFormQuery := 'fPendistribusianMaterial';
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

procedure TfPendistribusianMaterial.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  vTempPolda,vTempPolres : String;
begin
  if MessageDlg('Yakin Material Akan Disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      vTempPolda := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
      vTempPolres := TString(CbPolres.Items.Objects[CbPolres.ItemIndex]).Str;
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.insert_dist_material';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'vidpolda',ptInput).AsString := vTempPolda;
        uniSP.Params.CreateParam(ftString,'vidpolres',ptInput).AsString := vTempPolres;
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
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;
        Label7.Caption := uniSP.Params.ParamValues['RESULT'];
        MessageDlg('PROSES BERHASIL DISIMPAN',mtInformation,[mbOK],0);
        bBaru.Click;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.insert_dist_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfPendistribusianMaterial.bHapusClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  vTemp : String;
begin
  if MessageDlg('Yakin Pendistribusian Material Akan Dihapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.delete_dist_material';
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
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.delete_dist_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfPendistribusianMaterial.bCetakClick(Sender: TObject);
begin
  if (QMaterial.Active) and (QMaterial.RecordCount > 0) then
  begin
    Application.ProcessMessages;
    tNoDok := Label7.Caption;
    tTglDok := FormatDateTime('dd mmm yyyy',dtTglInput.Date);
    tKetDok := eKet.Text;
    tPolda := cbPolda.Text;
    tPolres := cbPolres.Text;
    DM.frxDBDataset.DataSource := dsQMaterial;
    DM.frxReport.LoadFromFile(RootPath+'\report\dist_material.fr3');
    if TReport = '1' then
       DM.frxReport.DesignReport
    else
       DM.frxReport.ShowReport();
  end;
end;

procedure TfPendistribusianMaterial.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ViewDatail1Click(nil);
end;

procedure TfPendistribusianMaterial.ViewDatail1Click(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    with QMaterial do
    begin
      Close;
      SQL.Text := 'DELETE FROM TEMP_PENDIST_MATERIAL_D WHERE SNHDD=:SNHDD';
      Params[0].AsString := tSNHDD;
      Execute;

      Close;
      SQL.Text := 'COMMIT';
      Execute;

      dtTglInput.Date := uniSPTampil.Fields[1].AsDateTime;
      eKet.Text := uniSPTampil.Fields[2].AsString;
      Label7.Caption := uniSPTampil.Fields[0].AsString;
      cbPolda.Text := uniSPTampil.Fields[4].AsString;
      cbPolres.Text := uniSPTampil.Fields[5].AsString;

      Close;
      SQL.Text := 'insert into TEMP_PENDIST_MATERIAL_D(SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR)'+
                  ' select '''+tSNHDD+''',a.KDBRG,b.NAMA,b.SATUAN,c.NAMA,a.JMLBRG,a.NO_AWAL,a.NO_AKHIR from T_TRANS_MATERIAL_D a'+
                  ' left join M_MATERIAL b on a.KDBRG=b.KODE'+
                  ' left join M_SATUAN c on b.SATUAN=c.KODE'+
                  ' where a.KODE=:kode';
      try
        Params[0].AsString := Label7.Caption;
        Execute;

        Close;
        SQL.Text := 'SELECT SNHDD,KD_BRG,NM_BRG,KD_SATUAN,NM_SATUAN,JML_BRG,NO_AWAL,NO_AKHIR,(NO_AWAL||''/''||NO_AKHIR) as NOURUT FROM TEMP_PENDIST_MATERIAL_D WHERE SNHDD=:SNHDD';
        Params[0].AsString := tSNHDD;
        Open;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..Insert TEMP_PENDIST_MATERIAL_D from T_TRANS_MATERIAL_D. Ket Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfPendistribusianMaterial.cxGridDBTableView2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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
        isFormQuery := 'fPendistribusianMaterial';
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

procedure TfPendistribusianMaterial.cxGridDBTableView2EditKeyDown(
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
        isFormQuery := 'fPendistribusianMaterial';
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

procedure TfPendistribusianMaterial.QMaterialNO_AWALChange(Sender: TField);
begin
  //QMaterialJML_BRG.Value := (QMaterialNO_AKHIR.Value - QMaterialNO_AWAL.Value) + 1;
end;

procedure TfPendistribusianMaterial.QMaterialNO_AKHIRChange(
  Sender: TField);
begin
  //QMaterialJML_BRG.Value := (QMaterialNO_AKHIR.Value - QMaterialNO_AWAL.Value) + 1;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfPendistribusianMaterial.RefreshCbPolres;
var
  vTemp : String;
begin
  vTemp := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
  with DM.Q do
  begin
    cbPolres.Clear;
    Close;
    SQL.Text := 'select polres_kode,polres_nama from m_polres where polda_id=:polda_id order by polres_kode';
    Params[0].AsString := vTemp;
    Open;
    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbPolres.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
    cbPolres.ItemIndex := -1;
  end;
end;

procedure TfPendistribusianMaterial.RefreshCbPolda;
begin
  with DM.Q do
  begin
    cbPolda.Clear;
    Close;
    SQL.Text := 'select polda_id,polda_nama from m_polda order by polda_id';
    Open;
    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbPolda.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
    cbPolda.ItemIndex := -1;
  end;
end;

procedure TfPendistribusianMaterial.cbPoldaDropDown(Sender: TObject);
begin
  RefreshCbPolda;
end;

procedure TfPendistribusianMaterial.CbPolresDropDown(Sender: TObject);
begin
  RefreshCbPolres;
end;

end.
