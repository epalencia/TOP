#!/bin/bash

echo "Setting up environment..."
#source /nfs/fanae/root_releases/root.5.34.13.slc5/bin/thisroot.sh
#source /nfs/fanae/PAF_releases/PAF_devel/PAF_setup.sh
#source /opt/root/bin/thisroot.sh
#cd /nfs/fanae/user/sscruz/TOP

#source /nfs/fanae/user/sscruz/ChargeMiss/MissCode/setup.sh

#echo "Now start PoD..." 
#source /opt/PoD/PoD_env.sh

resetpaf -a

## Data 
root -l -b -q RunTree_ReReco.C\(\"DoubleMu\",30\)
root -l -b -q RunTree_ReReco.C\(\"DoubleElectron\",30\)
root -l -b -q RunTree_ReReco.C\(\"MuEG\",30\)
 
## TTbar (Signal+Bkg)
resetpaf -a
root -l -b -q RunTree_ReReco.C\(\"TTJetsFullLeptMGtauola\",30,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJets_MadSpin\",30,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJetsSemiLeptMGtauola\",30,true\)

## TTbar (systematic samples) 
root -l -b -q RunTree_ReReco.C\(\"TTJets_MadSpinPDF\"          ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJets_matchingdown\"        ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJets_matchingup\"          ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJets_scaledown\"           ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJets_scaleup\"             ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTbar_Powheg\"               ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTbar_Powheg_Herwig\"        ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJetsFullLeptMGTuneP11\"    ,30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTJetsFullLeptMGTuneP11noCR\",30\,true\)
root -l -b -q RunTree_ReReco.C\(\"TTbar_PowhegV2_hdampWeights\",30\)
root -l -b -q RunTree_ReReco.C\(\"TTJetsHadrMGTuneP11mpiHi\"   ,30\)
root -l -b -q RunTree_ReReco.C\(\"TTJetsFullLeptMGTuneP11TeV\" ,30\)
##root -l -b -q RunTree_ReReco.C\(\"TTbar_MCatNLO\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_mass169\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_mass175\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_scaledown\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_scaleup\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTbar_MCatNLO_noCorr\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_noCorr_mass169\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_noCorr_mass175\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_noCorr_scaledown\",30,true\)
##root -l -b -q RunTree_ReReco.C\(\"TTLept_mcatnlo_noCorr_scaleup\",30,true\)

## Single Boson
root -l -b -q RunTree_ReReco.C\(\"ZJets_Madgraph\",30,true\)

resetpaf -a

## Single Top
root -l -b -q RunTree_ReReco.C\(\"DYJets_Madgraph\",20,true\)
root -l -b -q RunTree_ReReco.C\(\"Wbb_Madgraph\",20,true\)
root -l -b -q RunTree_ReReco.C\(\"TbarWDilep\",20,true\)
root -l -b -q RunTree_ReReco.C\(\"TWDilep\",20,true\)

root -l -b -q RunTree_ReReco.C\(\"WgammaToLNuG\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"ZgammaToLLG\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"WWTo2L2Nu_Madgraph\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"WW\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"WZ\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"ZZ\",20,true\)

root -l -b -q RunTree_ReReco.C\(\"TTGJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"TTWJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"TTZJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"TTWWJets\",20,true\)
root -l -b -q RunTree_ReReco.C\(\"WWGJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"WWWJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"WWZJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"WZZJets\",20,true\) 
root -l -b -q RunTree_ReReco.C\(\"ZZZJets\",20,true\) 

## stop
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,150.0,1.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,162.5,1.0\)
root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,175.0,1.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,187.5,1.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,200.0,1.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,162.5,12.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,175.0,12.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,187.5,12.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,200.0,12.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,212.5,12.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,175.0,25.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,187.5,25.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,200.0,25.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,212.5,25.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,225.0,25.0\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,187.5,37.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,200.0,37.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,212.5,37.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,225.0,37.5\)
#root -l -b -q RunTree_ReReco.C\(\"T2tt_150to250LSP1to100_LeptonFilter\",10,true,-1,237.5,37.5\)
