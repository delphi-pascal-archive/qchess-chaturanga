program QChess;

uses
  Forms,
  QChess_ in 'QChess_.pas' {F};
  //{$R *.dfm}
begin
  Application.Initialize;
  Application.Title := 'QChess';
  Application.CreateForm(TF, F);
  Application.Run;



  end.
