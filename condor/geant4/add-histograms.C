// Usage: root [0] .x ../add-histograms.C
//        root [0] .x ../add-histograms.C(100)
void add_histograms(Int_t njobs = 10) {
  TFile** file = new TFile*[njobs];
  TH1D** hist = new TH1D*[njobs];
  TCanvas* cv = new TCanvas();
  TH1D* h = nullptr;
  for (Int_t i = 0; i < njobs; ++i) {
    TString dir = Form("%d", i);
    TString path = dir + TString("/file.root");
    file[i] = new TFile(path.Data());
    hist[i] = dynamic_cast<TH1D*>(file[i]->Get("Chamber1"));
    if (i > 0) {
      hist[i]->Add(hist[i-1]);
    }
    h = hist[i];
  }
  h->Draw("H");
}
