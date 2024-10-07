unit SG0144;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RxCombos, Vcl.Buttons,
  Vcl.Samples.Spin, Vcl.ExtCtrls,QuickRpt,QRCtrls, qrpBaseCtrls,QRPrntr,
  pBarcode1D, pCode128, pEAN128, RLReport, RLBarcode,TypInfo,System.Rtti, System.JSON,
  Vcl.ComCtrls;

type
  TControlAccess = class(TControl);

  TBand = Class(TQRBand)
    private
      FOnClick : TNotifyEvent;
    protected
      procedure Click; override;
    public
      constructor Create(AOwner: TComponent); override;
    published
      property OnClickRep: TNotifyEvent read FOnClick write FOnclick;
  End;

  TLabelRep = Class(TQRLabel)
    private
      FOnMouseDown: TMouseEvent;
      FOnMouseUp: TMouseEvent;
      FOnMouseMove: TMouseMoveEvent;
      FOnClick    : TNotifyEvent;
    protected
      procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
      procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
      procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
      procedure Click; override;
    public
      constructor Create(AOwner: TComponent); override;
  published
    property OnMouseDown: TMouseEvent read FOnMouseDown write FOnMouseDown;
    property OnMouseUp: TMouseEvent read FOnMouseUp write FOnMouseUp;
    property OnMouseMove: TMouseMoveEvent read FOnMouseMove write FOnMouseMove;
    property OnClick: TNotifyEvent read FOnClick write FOnclick;
  End;

  TSg_0144 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit_LargPag: TSpinEdit;
    Edit_AltPag: TSpinEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit_LargBand: TSpinEdit;
    Edit_AltBand: TSpinEdit;
    Label1: TLabel;
    SpinEdit2: TSpinEdit;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    sEdit_Top: TSpinEdit;
    Label16: TLabel;
    sEdit_Bot: TSpinEdit;
    Label17: TLabel;
    sEdit_Dir: TSpinEdit;
    Label18: TLabel;
    sEdit_Esq: TSpinEdit;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CB_Style: TComboBox;
    CB_Color: TColorComboBox;
    SP_Font: TSpinEdit;
    CB_Font: TFontComboBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    SB_Excluir: TSpeedButton;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Edit_LarBarra: TSpinEdit;
    Label20: TLabel;
    Edit_AltBarra: TSpinEdit;
    Pn_CodBarra: TPanel;
    Label10: TLabel;
    Edit_Name: TEdit;
    SB_CodProd: TSpeedButton;
    SB_Nome: TSpeedButton;
    Sb_Vista: TSpeedButton;
    Sb_Prazo: TSpeedButton;
    SB_Barras: TSpeedButton;
    SB_CodBarras: TSpeedButton;
    Sb_Empresa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SB_Criar: TSpeedButton;
    SB_Preview: TSpeedButton;
    Shape1: TShape;
    Label19: TLabel;
    Edit_Caption: TEdit;
    SpeedButton2: TSpeedButton;
    procedure FonteChange(Sender : TObject);
    procedure Edit_LarBarraChange(Sender: TObject);
    procedure Edit_AltBarraChange(Sender: TObject);
    procedure AlteraFolha(Sender : TObject);
    procedure AlteraMargem(Sender :TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure AlteraBand(Sender : TObject);
    procedure SB_CriarClick(Sender: TObject);
    procedure SB_PreviewClick(Sender: TObject);
    procedure Edit_NameChange(Sender: TObject);
    procedure SB_CodProdClick(Sender: TObject);
    procedure SB_NomeClick(Sender: TObject);
    procedure Sb_VistaClick(Sender: TObject);
    procedure Sb_PrazoClick(Sender: TObject);
    procedure SB_CodBarrasClick(Sender: TObject);
    procedure Sb_EmpresaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit_CaptionChange(Sender: TObject);
    procedure SB_BarrasClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    Rep  : TQuickRep;
    Band : TBand;
    Shape : TShape;
    FSelectedControl : TControl;
    img : TImage;
    { Private declarations }
    procedure MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure CriarEtiqueta;
    procedure BandClick(Sender : TObject);
    procedure RedimensionaShape;
    procedure CriarGtin;
    procedure imgClick(Sender: TObject);
    procedure Preview;
    procedure CriarComponent(ComponentClass: TComponentClass; const AName, ACaption: string; const ALeft, ATop: Integer);
    procedure Fonte(Sender: TObject);
    procedure ReportToJson;
  public
    FDragging: Boolean;
    FOffsetX: Integer;
    FOffsetY: Integer;

    FResizing: Boolean;
    FResizeDirection: TCursor;
    FStartX, FStartY: Integer;
    { Public declarations }
  end;

var
  Sg_0144: TSg_0144;

implementation

{$R *.dfm}

{ TBand }

procedure TBand.Click;
begin
  inherited;
  if Assigned(FOnClick) then
    FOnclick(Self);
end;

constructor TBand.Create(AOwner: TComponent);
begin
  inherited Create(Owner);
end;

{ TLabelRep }

procedure TLabelRep.Click;
begin
  inherited;
  if Assigned(FOnClick) then
    FOnclick(Self);
end;

constructor TLabelRep.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TLabelRep.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if Assigned(FOnMouseDown) then
    FOnMouseDown(Self, Button, Shift, X, Y);
end;

procedure TLabelRep.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Assigned(FOnMouseMove) then
    FOnMouseMove(Self, Shift, X, Y);
end;

procedure TLabelRep.MouseUp(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if Assigned(FOnMouseUp) then
    FOnMouseUp(Self, Button, Shift, X, Y);
end;

{ TForm2 }

procedure TSg_0144.AlteraBand(Sender: TObject);
begin
  if Band <> nil then
    begin
      if Edit_LargBand.Text <> '' then
        Band.Size.Width  := StrToFloat(Edit_LargBand.Text);

      if Edit_AltBand.Text <> '' then
        Band.Size.Height := StrToFloat(Edit_AltBand.Text);
    end;
end;

procedure TSg_0144.AlteraFolha(Sender: TObject);
begin
  if Rep <> nil then
    begin
      if Edit_LargPag.Text <> '' then
        Rep.Page.Width  := Edit_LargPag.Value;

      if Edit_AltPag.Text <> '' then
        Rep.Page.Length := Edit_AltPag.Value;

        Rep.Page.Columns := SpinEdit2.Value;
    end;
end;

procedure TSg_0144.AlteraMargem(Sender: TObject);
begin
  if Rep <> nil then
    begin
      Rep.Page.TopMargin    := sEdit_Top.Value;
      Rep.Page.BottomMargin := sEdit_bot.Value;
      Rep.Page.LeftMargin   := sEdit_esq.Value;
      Rep.Page.RightMargin  := sEdit_dir.Value;
    end;
end;

procedure TSg_0144.BandClick(Sender: TObject);
begin
  FSelectedControl := nil;
  if Shape <> nil then
    FreeAndNil(Shape);
end;

procedure TSg_0144.CriarComponent(ComponentClass: TComponentClass; const AName,
  ACaption: string; const ALeft, ATop: Integer);
var Component : TComponent;
    CaptionProp: PPropInfo;
begin
  if Rep = nil then Exit;

  Component := ComponentClass.Create(Self);

  try
    (Component as TControl).Name        := AName;
    (Component as TControl).Parent      := Band;
    (Component as TControl).Left        := ALeft;
    (Component as TControl).Top         := ATop;

    CaptionProp := GetPropInfo(Component.ClassInfo, 'Caption');
    if CaptionProp <> nil then
    begin
      SetStrProp(Component, CaptionProp, ACaption);
    end;

    TControlAccess(Component).OnMouseUp   := MouseUp;
    TControlAccess(Component).OnMouseMove := MouseMove;
    TControlAccess(Component).OnMouseDown := MouseDown;
    TControlAccess(Component).OnClick     := Fonte;
  except
    Component.Free;
    raise;
  end;
end;

procedure TSg_0144.CriarEtiqueta;
begin
  Rep                   := TQuickRep.Create(Self);
  Rep.Parent            := ScrollBox1;

  Rep.Page.TopMargin    := sEdit_Top.Value;
  Rep.Page.BottomMargin := sEdit_bot.Value;
  Rep.Page.LeftMargin   := sEdit_esq.Value;
  Rep.Page.RightMargin  := sEdit_dir.Value;
  Rep.Page.Width        := Edit_LargPag.Value;
  Rep.Page.Length       := Edit_AltPag.Value;
  Rep.Page.Columns      := SpinEdit2.Value;

  Band                  := TBand.Create(Self);
  Band.OnClickRep       := BandClick;
  Band.Parent           := Rep;
  Band.BandType         := rbDetail;
  Band.Size.Width       := Edit_LargBand.Value;
  Band.Size.Height      := Edit_AltBand.Value;
end;

procedure TSg_0144.CriarGtin;
var BarCode : TBarcode1D_CODE128;
begin
  Barcode         := TBarcode1D_CODE128.Create(nil);
  img             := TImage.Create(nil);
  img.Parent      := Band;
  Img.Name        := 'img_barra';

  img.height      := 30;
  img.width       := 100;
  img.OnMouseDown := MouseDown;
  img.ONMouseUp   := MouseUp;
  img.ONMouseMove := MouseMove;
  img.OnClick     := imgClick;

  Barcode.Image   := img;
  Barcode.Barcode := '07899949602924';
end;

procedure TSg_0144.Edit_AltBarraChange(Sender: TObject);
begin
  if Edit_AltBarra.Text <> '' then
    FSelectedControl.Height := StrToInt(Edit_AltBarra.Text);

  RedimensionaShape
end;

procedure TSg_0144.Edit_CaptionChange(Sender: TObject);
begin
  if FSelectedControl <> nil then
    if FSelectedControl is TQRLabel then
      begin
        TQRLabel(FSelectedControl).Caption := Edit_Caption.Text;
        RedimensionaShape;
      end;
end;

procedure TSg_0144.Edit_LarBarraChange(Sender: TObject);
begin
  if Edit_larBarra.Text <> '' then
    FSelectedControl.Width := StrToInt(Edit_larBarra.Text);

  RedimensionaShape;
end;

procedure TSg_0144.Edit_NameChange(Sender: TObject);
begin
  try
    if FSelectedControl <> nil then
      FSelectedControl.Name := Edit_Name.Text;
  except
  end;
end;

procedure TSg_0144.Fonte(Sender: TObject);
var FontName : String;
    I : Integer;
begin
  CB_Font.OnChange  := nil;
  SP_Font.OnChange  := nil;
  CB_Color.OnChange := nil;
  CB_Style.OnChange := nil;

  CB_Font.FontName    := TControlAccess(TControl(Sender)).Font.Name;
  SP_Font.Value       := TControlAccess(TControl(Sender)).Font.Size;
  CB_Color.ColorValue := TControlAccess(TControl(Sender)).Font.Color;

  if TControlAccess(TControl(Sender)).Font.Style = [fsBold] then
    CB_Style.ItemIndex := 0
  else if TControlAccess(TControl(Sender)).Font.Style = [fsItalic] then
    CB_Style.ItemIndex := 1
  else if TControlAccess(TControl(Sender)).Font.Style = [fsUnderline] then
    CB_Style.ItemIndex := 1
  else
    CB_Style.ItemIndex := -1;

  CB_Font.OnChange  := FonteChange;
  SP_Font.OnChange  := FonteChange;
  CB_Color.OnChange := FonteChange;
  CB_Style.OnChange := FonteChange;
end;

procedure TSg_0144.FonteChange(Sender: TObject);
begin
  if Band = nil then Exit;

  if GetPropInfo(FSelectedControl.ClassInfo, 'Font') <> nil then
    begin
      TLabel(FSelectedControl).Font.Name  := CB_Font.FontName;
      TLabel(FSelectedControl).Font.Size  := Sp_Font.Value;
      TLabel(FSelectedControl).Font.Color := CB_Color.ColorValue;

      case CB_Style.ItemIndex of
        0: TLabel(FSelectedControl).Font.Style := [fsBold];
        1: TLabel(FSelectedControl).Font.Style := [fsItalic];
        2: TLabel(FSelectedControl).Font.Style := [fsUnderline];
        else
          TLabel(FSelectedControl).Font.Style := [];
      end;
    end;
  RedimensionaShape;
end;

procedure TSg_0144.imgClick(Sender: TObject);
begin
  Pn_CodBarra.Visible    := True;

  Edit_AltBarra.OnChange := nil;
  Edit_LarBarra.OnChange := nil;

  Edit_AltBarra.Text     := IntToStr(FSelectedControl.Height);
  Edit_LarBarra.Text     := IntToStr(FSelectedControl.Width);

  Edit_AltBarra.OnChange := Edit_AltBarraChange;
  Edit_LarBarra.OnChange := Edit_LarBarraChange;
end;

procedure TSg_0144.MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FDragging := True;
    // Armazena o deslocamento inicial para manter a posição do mouse relativa ao painel
    FOffsetX := X;
    FOffsetY := Y;

    // Pega o Controle
    FSelectedControl := nil;
    FSelectedControl := (Sender as TControl);
    Edit_Name.Text   := FSelectedControl.Name;

    if Shape <> nil then
      FreeAndNil(Shape); // Remove a seleção anterior

    // Cria uma nova forma (retângulo) ao redor do controle clicado
    Shape := TShape.Create(Nil);
    Shape.Parent    := Band; // Define o formulário como pai
    Shape.Shape     := stRectangle;
    Shape.Pen.Color := clBlue;
    Shape.Pen.Width := 2;

    Shape.OnMouseDown := MouseDown;
    Shape.OnMouseUp   := MouseUp;
    Shape.OnMouseMove := MouseMove;
    Shape.Enabled     := False; // Evitar de Clicar nele, se nao buga tudo

    // Ajusta o tamanho e a posição da forma para englobar o controle
    Shape.SetBounds(FSelectedControl.Left - 4, FSelectedControl.Top - 4,
      FSelectedControl.Width + 8, FSelectedControl.Height + 8);

    Shape.SendToBack; // Envia a forma para trás do controle
  end;
end;

procedure TSg_0144.MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
    // Ajusta a posição do painel com base no deslocamento armazenado
    TControl(Sender).Left := TControl(Sender).Left + (X - FOffsetX);
    TControl(Sender).Top  := TControl(Sender).Top + (Y - FOffsetY);

    // Move o Shape de seleção junto com o controle
    if Shape <> nil then
      begin
        Shape.Left := TControl(Sender).Left - 4;
        Shape.Top  := TControl(Sender).Top - 4;
      end;
  end;
end;

procedure TSg_0144.MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Encerra o arraste ao soltar o botão do mouse
  if Button = mbLeft then
  begin
    FDragging := False;
    // Libera a captura do mouse
  end;
end;

procedure TSg_0144.Preview;
var img2    : TQRImage;
    Barcode : TBarcode1D_CODE128;
begin
  if Rep = nil then Exit;

  if Img <> nil then
    begin
      try
        Barcode         := TBarcode1D_CODE128.Create(nil);
        img2            := TQRImage.Create(nil);

        img2.Top        := img.Top;
        Img2.Left       := img.Left;
        img2.Height     := img.Height;
        img2.width      := img.width;

        img2.Parent     := Band;

        Barcode.Image   := img2;
        Barcode.Barcode := '07899949602924';

        Rep.Preview;
      finally
        FreeAndNil(Img2);
      end;
    end
  else
    Rep.Preview;
end;

procedure TSg_0144.RedimensionaShape;
var  NewWidth,
     NewHeight : Integer;
begin
  if Shape <> nil then
    begin
      // Calcule as novas dimensões do controle
      NewWidth  := (FSelectedControl).Width + 8;  // Adiciona uma margem
      NewHeight := (FSelectedControl).Height + 8; // Adiciona uma margem

      // Atualiza a posição e o tamanho do Shape
      Shape.SetBounds(FSelectedControl.Left - 4, FSelectedControl.Top - 4, NewWidth, NewHeight);
    end;
end;

procedure TSg_0144.ReportToJson;
var
  JSON : TJSONObject;
  JSONComponents: TJSONArray;
  I: Integer;
  Component: TControl;
  JSONComponent: TJSONObject;
  SomeFloatValue: Double;
begin
  try
    JSON := TJSONObject.Create;
    JSONComponents := TJSONArray.Create;

    // SQL Pesqusia
    JSONComponent := TJSONObject.Create;
    JSONComponent.AddPair('ClassName', 'TIBQuery');
    JSONComponent.AddPair('Name', 'SQL_Pesquisa');
    JSONComponents.AddElement(JSONComponent);

    // Infos do Relatorio
    JSONComponent := TJSONObject.Create;
    JSONComponent.AddPair('ClassName', 'TQuickRep');
    JSONComponent.AddPair('Name', 'Rep');
    JSONComponent.AddPair('Dataset', 'SQL_Pesquisa');
    JSONComponent.AddPair('Page.TopMargin', sEdit_Top.Text);
    JSONComponent.AddPair('Page.BottomMargin', sEdit_bot.Text);
    JSONComponent.AddPair('Page.LeftMargin', sEdit_esq.Text);
    JSONComponent.AddPair('Page.RightMargin', sEdit_dir.Text);
    JSONComponent.AddPair('Page.Width', Edit_LargPag.Text);
    JSONComponent.AddPair('Page.Length', Edit_AltPag.Text);
    JSONComponent.AddPair('Page.Columns', SpinEdit2.Text);

    JSONComponents.AddElement(JSONComponent);
    // Infos da Banda
    JSONComponent := TJSONObject.Create;
    JSONComponent.AddPair('ClassName', 'TQRBand');
    JSONComponent.AddPair('Parent', 'Rep');
    JSONComponent.AddPair('BandType', 'rbDetail');
    JSONComponent.AddPair('Size.Width', Edit_LargBand.Text);
    JSONComponent.AddPair('Size.Height', Edit_AltBand.Text);
    JSONComponents.AddElement(JSONComponent);
    // Adicionando os componentes da banda
    if Assigned(Band) then
    begin
      for I := 0 to Band.ControlCount - 1 do
      begin
        Component := Band.Controls[I];
        if Assigned(Component) then
        begin
          if Component is TQRLabel then
          begin
            JSONComponent := TJSONObject.Create;
            JSONComponent.AddPair('ClassName', 'TQRDBText');
            JSONComponent.AddPair('Parent', 'Band');
            JSONComponent.AddPair('Left', IntToStr((Component as TControl).Left));
            JSONComponent.AddPair('Top', IntToStr((Component as TControl).Top));
            JSONComponent.AddPair('Dataset', 'SQL_Pesquisa');
            JSONComponent.AddPair('DataField', Component.Name);

            // Fonte
            JSONComponent.AddPair('Font.Color', IntToStr((Component as TQRLabel).Font.Color));
            JSONComponent.AddPair('Font.Size', IntToStr((Component as TQRLabel).Font.Size));
            JSONComponents.AddElement(JSONComponent);
          end;

          if Component is TImage then
          begin
            JSONComponent := TJSONObject.Create;
            JSONComponent.AddPair('ClassName', 'TQRImage');
            JSONComponent.AddPair('Parent', 'Band');
            JSONComponent.AddPair('Name', (Component as TControl).Name);
            JSONComponent.AddPair('Left', IntToStr((Component as TControl).Left));
            JSONComponent.AddPair('Top', IntToStr((Component as TControl).Top));
            JSONComponent.AddPair('Width', IntToStr((Component as TControl).Width));
            JSONComponent.AddPair('Height', IntToStr((Component as TControl).Height));
            JSONComponents.AddElement(JSONComponent);

            JSONComponent := TJSONObject.Create;
            JSONComponent.AddPair('ClassName', 'TBarcode1D_CODE128');
            JSONComponent.AddPair('Image', (Component as TControl).Name);
            JSONComponents.AddElement(JSONComponent);
          end;
        end;
      end;
    end;

    // Serializando o JSON para uma string antes de liberar
    Json.AddPair('Components',JsonComponents);
//    Memo1.Lines.Add(Json.ToString);
  finally
    Json.Free;
  end;
end;

procedure TSg_0144.SB_ExcluirClick(Sender: TObject);
begin
  if FSelectedControl <> nil then
    begin
      FreeAndNil(FSelectedControl);
      FreeAndNil(Shape);
    end;
end;

procedure TSg_0144.SB_NomeClick(Sender: TObject);
begin
  CriarComponent(TQRLabel,'NOME_PROD', 'NOME DO PRODUTO',10,30);
end;

procedure TSg_0144.Sb_PrazoClick(Sender: TObject);
begin
  CriarComponent(TQRLabel,'VLR_PRAZO', 'R$ 0.00P',10,40);
end;

procedure TSg_0144.SB_PreviewClick(Sender: TObject);
begin
  Preview;
end;

procedure TSg_0144.Sb_VistaClick(Sender: TObject);
begin
  CriarComponent(TQRLabel,'VLR_VISTA', 'R$ 0.00V',10,30);
end;

procedure TSg_0144.SpeedButton1Click(Sender: TObject);
begin
  CriarComponent(TQRLabel,'', 'CAMPO',10,30);
end;

procedure TSg_0144.SpeedButton2Click(Sender: TObject);
begin
  ReportToJson;
end;

procedure TSg_0144.SB_BarrasClick(Sender: TObject);
begin
  CriarGtin;
end;

procedure TSg_0144.SB_CodBarrasClick(Sender: TObject);
begin
  CriarComponent(TQRLabel,'COD_BARRA', '123456789123456',10,50);
end;

procedure TSg_0144.SB_CodProdClick(Sender: TObject);
begin
  CriarComponent(TQRLabel,'COD_PROD', '000001',10,20);
end;

procedure TSg_0144.SB_CriarClick(Sender: TObject);
begin
  CriarEtiqueta;
  SB_Criar.Enabled := False;
end;

procedure TSg_0144.Sb_EmpresaClick(Sender: TObject);
begin
  CriarComponent(TQRLabel,'FANTASIA', 'EMPRESA',10,60);
end;

end.
