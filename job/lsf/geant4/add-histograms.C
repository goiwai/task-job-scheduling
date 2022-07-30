// Usage: root [0] .x ../add-histograms.C
void add_histograms() {
  const Int_t njobs = 10;
  TFile** file = new TFile*[njobs];
  TH1D** hist = new TH1D*[njobs];
  TCanvas* cv = new TCanvas();
  cv->Divide(5,2);
  for (Int_t i = 0; i < njobs; ++i) {
    TString dir = Form("%d", i+1);
    TString path = dir + TString("/file.root");
    file[i] = new TFile(path.Data());
    hist[i] = dynamic_cast<TH1D*>(file[i]->Get("Chamber1"));
    if (i > 0) {
      hist[i]->Add(hist[i-1]);
    }
    cv->cd(i+1);
    hist[i]->Draw();
  }
  cv->cd(0);
}
