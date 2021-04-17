#! bin/bash/
cd $PWD
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
source setup.sh
cd run/
source ./../build/x86_64-centos7-gcc62-opt/setup.sh

run_vsiAna_modular.py --nevents -1 --doOverwrite --inputDS ~/Storage/MCsamples/AOD/BinoWino/mc16_13TeV.404572.MGPy8EG_A14N23LO_C1N2_WZDV_300_270_1ns_Hbb.DAOD_RPVLL_mine.s3126.r10790/
