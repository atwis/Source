unit uCari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfCari = class(TForm)
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsCari: TDataSource;
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProsesData;
  end;

var
  fCari: TfCari;

implementation
uses
   uDM, uModul, uVariabel;
{$R *.dfm}

procedure TfCari.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ProsesData;
end;

procedure TfCari.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    ProsesData;
  end;
end;

procedure TfCari.ProsesData;
begin
  if isFormQuery = 'fOrderMaterial' then
  begin
    bAction := True;
    tKDBarang := DM.vtMaterialSrv.FieldByName('KODE').AsString;
    tNamaBarang := DM.vtMaterialSrv.FieldByName('NAMA').AsVariant;
    tKDSatuan := DM.vtMaterialSrv.FieldByName('KD_SATUAN').AsVariant;
    tNamaSatuan := DM.vtMaterialSrv.FieldByName('NAMA_SATUAN').AsVariant;
  end
  else if isFormQuery = 'fInputMaterial' then
  begin
    bAction := True;
    tKDBarang := DM.vtMaterialSrv.FieldByName('KODE').AsString;
    tNamaBarang := DM.vtMaterialSrv.FieldByName('NAMA').AsVariant;
    tKDSatuan := DM.vtMaterialSrv.FieldByName('KD_SATUAN').AsVariant;
    tNamaSatuan := DM.vtMaterialSrv.FieldByName('NAMA_SATUAN').AsVariant;
  end
  else if isFormQuery = 'fPendistribusianMaterial' then
  begin
    bAction := True;
    tKDBarang := DM.vtMaterialSrv.FieldByName('KODE').AsString;
    tNamaBarang := DM.vtMaterialSrv.FieldByName('NAMA').AsVariant;
    tKDSatuan := DM.vtMaterialSrv.FieldByName('KD_SATUAN').AsVariant;
    tNamaSatuan := DM.vtMaterialSrv.FieldByName('NAMA_SATUAN').AsVariant;
  end;
  Close;
end;

end.
