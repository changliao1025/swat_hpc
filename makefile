#Generated using GenerateMakefile by Zhiqiang Yu, hawklorry@gmail.com
#Saturday, February 08, 2014 10:18:22 AM

#Define compiler
CC=gcc
FC=gfortran

#C Flag, remove -Wall if don't want to all the warning information
CFLAG=-c -fmessage-length=0
#Fortran Flag, remove -Wall if don't want to all the warning information
FFLAG=-c -fmessage-length=0 -funderscoring -fbacktrace -ffpe-trap=invalid,zero,overflow
#Dedug Flag
DFLAG=-O0 -g -fbounds-check -Wextra
#Release Flag
RFLAG=-O3
#Flag for long fix fortran codes, used for some special fortran files
LONGFIX=-ffixed-line-length-132
#Flag for long free fortran codes, used for some special fortran files
LONGFREE=-ffree-line-length-200
#Flag for target machine architecture.
#Note: MinGW doesn't support 64-bit architecture. Replace -m64 with empty string instead.
ARCH32=
ARCH64=


OBJECTS_build=  build/addh.o build/albedo.o build/allocate_parms.o build/alph.o build/anfert.o build/apex_day.o build/apply.o build/ascrv.o build/atri.o build/aunif.o build/autoirr.o build/aveval.o build/bacteria.o build/biofilm.o build/biozone.o build/bmpfixed.o build/bmpinit.o build/bmp_det_pond.o build/bmp_ri_pond.o build/bmp_sand_filter.o build/bmp_sed_pond.o build/bmp_wet_pond.o build/buffer.o build/burnop.o build/canopyint.o build/caps.o build/carbon_new.o build/carbon_zhang2.o build/cfactor.o build/chkcst.o build/clgen.o build/clicon.o build/command.o build/conapply.o build/confert.o build/crackflow.o build/crackvol.o build/curno.o build/dailycn.o build/decay.o build/depstor.o build/distrib_bmps.o build/dormant.o build/drains.o build/dstn1.o build/ee.o build/eiusle.o build/enrsb.o build/erfc.o build/estimate_ksat.o build/etact.o build/etpot.o build/expo.o build/fert.o build/filter.o build/filtw.o build/finalbal.o build/gcycl.o build/getallo.o build/grass_wway.o build/graze.o build/grow.o build/gwmod.o build/gwmod_deep.o build/gwnutr.o build/gw_no3.o build/h2omgt_init.o build/harvestop.o build/harvgrainop.o build/harvkillop.o build/header.o build/headout.o build/hhnoqual.o build/hhwatqual.o build/hmeas.o build/hruaa.o build/hruallo.o build/hruday.o build/hrumon.o build/hrupond.o build/hrupondhr.o build/hruyr.o build/hydroinit.o build/icl.o build/impndaa.o build/impndday.o build/impndmon.o build/impndyr.o build/impnd_init.o build/irrigate.o build/irrsub.o build/irr_rch.o build/irr_res.o build/jdt.o build/killop.o build/lakeq.o build/latsed.o build/layersplit.o build/lwqdef.o build/main.o build/ncsed_leach.o build/ndenit.o build/newtillmix.o build/nfix.o build/nitvol.o build/nlch.o build/nminrl.o build/noqual.o build/npup.o build/nrain.o build/nup.o build/nuts.o build/openwth.o build/operatn.o build/orgn.o build/orgncswat.o build/origtile.o build/ovr_sed.o build/percmacro.o build/percmain.o build/percmicro.o build/pestlch.o build/pestw.o build/pesty.o build/pgen.o build/pgenhr.o build/pkq.o build/plantmod.o build/plantop.o build/pmeas.o build/pminrl.o build/pminrl2.o build/pond.o build/pondhr.o build/pothole.o build/potholehr.o build/print_hyd.o build/psed.o build/qman.o build/ran1.o build/rchaa.o build/rchday.o build/rchinit.o build/rchmon.o build/rchuse.o build/rchyr.o build/reachout.o build/readatmodep.o build/readbsn.o build/readchm.o build/readcnst.o build/readfcst.o build/readfert.o build/readfig.o build/readfile.o build/readgw.o build/readhru.o build/readinpt.o build/readlup.o build/readlwq.o build/readmgt.o build/readmon.o build/readops.o build/readpest.o build/readplant.o build/readpnd.o build/readres.o build/readrte.o build/readru.o build/readsdr.o build/readsepticbz.o build/readseptwq.o build/readsno.o build/readsol.o build/readsub.o build/readswq.o build/readtill.o build/readurban.o build/readwgn.o build/readwus.o build/readwwq.o build/readyr.o build/reccnst.o build/recday.o build/rechour.o build/recmon.o build/recyear.o build/regres.o build/res.o build/resbact.o build/resetlu.o build/reshr.o build/resinit.o build/resnut.o build/rewind_init.o build/rhgen.o build/rootfr.o build/route.o build/routels.o build/routeunit.o build/routres.o build/rsedaa.o build/rseday.o build/rsedmon.o build/rsedyr.o build/rtbact.o build/rtday.o build/rteinit.o build/rthmusk.o build/rthpest.o build/rthr.o build/rthsed.o build/rtmusk.o build/rtout.o build/rtpest.o build/rtsed.o build/rtsed_bagnold.o build/rtsed_kodatie.o build/rtsed_molinas_wu.o build/rtsed_yangsand.o build/sat_excess.o build/save.o build/saveconc.o build/schedule_ops.o build/sched_mgt.o build/simulate.o build/sim_initday.o build/sim_inityr.o build/slrgen.o build/smeas.o build/snom.o build/soil_chem.o build/soil_par.o build/soil_phys.o build/soil_write.o build/solp.o build/solt.o build/std1.o build/std2.o build/std3.o build/stdaa.o build/storeinitial.o build/structure.o build/subaa.o build/subbasin.o build/subday.o build/submon.o build/substor.o build/subwq.o build/subyr.o build/sub_subbasin.o build/sumhyd.o build/sumv.o build/surface.o build/surfstor.o build/surfst_h2o.o build/surq_daycn.o build/surq_greenampt.o build/swbl.o build/sweep.o build/swu.o build/tair.o build/tgen.o build/theta.o build/tillfactor.o build/tillmix.o build/tmeas.o build/tran.o build/transfer.o build/tstr.o build/ttcoef.o build/ttcoef_wway.o build/urban.o build/urbanhr.o build/urb_bmp.o build/varinit.o build/vbl.o build/virtual.o build/volq.o build/washp.o build/watbal.o build/water_hru.o build/watqual.o build/watqual2.o build/wattable.o build/watuse.o build/weatgn.o build/wetlan.o build/wmeas.o build/wndgen.o build/writea.o build/writeaa.o build/writed.o build/writem.o build/xmon.o build/ysed.o build/zero0.o build/zero1.o build/zero2.o build/zeroini.o build/zero_urbn.o build/lidinit.o build/lids.o build/lid_greenroof.o build/lid_raingarden.o build/lid_cistern.o build/lid_porpavement.o 

NAMEbuild=swat_build
build:build_mkdir ${NAMEbuild}

build_mkdir:
	mkdir -p build

${NAMEbuild}: ${OBJECTS_build}
	${FC} ${OBJECTS_build} ${ARCH64} -static -o ${NAMEbuild}


build/addh.o: addh.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  addh.f -o build/addh.o -I build

build/albedo.o: albedo.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  albedo.f -o build/albedo.o -I build

build/allocate_parms.o: allocate_parms.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  allocate_parms.f -o build/allocate_parms.o -I build

build/alph.o: alph.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  alph.f -o build/alph.o -I build

build/anfert.o: anfert.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  anfert.f -o build/anfert.o -I build

build/apex_day.o: apex_day.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  apex_day.f -o build/apex_day.o -I build

build/apply.o: apply.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  apply.f -o build/apply.o -I build

build/ascrv.o: ascrv.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ascrv.f -o build/ascrv.o -I build

build/atri.o: atri.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  atri.f -o build/atri.o -I build

build/aunif.o: aunif.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  aunif.f -o build/aunif.o -I build

build/autoirr.o: autoirr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  autoirr.f -o build/autoirr.o -I build

build/aveval.o: aveval.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  aveval.f -o build/aveval.o -I build

build/bacteria.o: bacteria.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bacteria.f -o build/bacteria.o -I build

build/biofilm.o: biofilm.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  biofilm.f -o build/biofilm.o -I build

build/biozone.o: biozone.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} biozone.f -o build/biozone.o -I build

build/bmpfixed.o: bmpfixed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmpfixed.f -o build/bmpfixed.o -I build

build/bmpinit.o: bmpinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} bmpinit.f -o build/bmpinit.o -I build

build/bmp_det_pond.o: bmp_det_pond.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_det_pond.f -o build/bmp_det_pond.o -I build

build/bmp_ri_pond.o: bmp_ri_pond.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_ri_pond.f -o build/bmp_ri_pond.o -I build

build/bmp_sand_filter.o: bmp_sand_filter.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_sand_filter.f -o build/bmp_sand_filter.o -I build

build/bmp_sed_pond.o: bmp_sed_pond.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_sed_pond.f -o build/bmp_sed_pond.o -I build

build/bmp_wet_pond.o: bmp_wet_pond.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_wet_pond.f -o build/bmp_wet_pond.o -I build

build/buffer.o: buffer.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  buffer.f -o build/buffer.o -I build

build/burnop.o: burnop.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  burnop.f -o build/burnop.o -I build

build/canopyint.o: canopyint.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  canopyint.f -o build/canopyint.o -I build

build/caps.o: caps.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  caps.f -o build/caps.o -I build

build/carbon_new.o: carbon_new.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  carbon_new.f -o build/carbon_new.o -I build

build/carbon_zhang2.o: carbon_zhang2.f90 build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFREE} carbon_zhang2.f90 -o build/carbon_zhang2.o -I build

build/cfactor.o: cfactor.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  cfactor.f -o build/cfactor.o -I build

build/chkcst.o: chkcst.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  chkcst.f -o build/chkcst.o -I build

build/clgen.o: clgen.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  clgen.f -o build/clgen.o -I build

build/clicon.o: clicon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  clicon.f -o build/clicon.o -I build

build/command.o: command.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  command.f -o build/command.o -I build

build/conapply.o: conapply.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  conapply.f -o build/conapply.o -I build

build/confert.o: confert.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  confert.f -o build/confert.o -I build

build/crackflow.o: crackflow.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  crackflow.f -o build/crackflow.o -I build

build/crackvol.o: crackvol.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  crackvol.f -o build/crackvol.o -I build

build/curno.o: curno.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  curno.f -o build/curno.o -I build

build/dailycn.o: dailycn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  dailycn.f -o build/dailycn.o -I build

build/decay.o: decay.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  decay.f -o build/decay.o -I build

build/depstor.o: depstor.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  depstor.f -o build/depstor.o -I build

build/distrib_bmps.o: distrib_bmps.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  distrib_bmps.f -o build/distrib_bmps.o -I build

build/dormant.o: dormant.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  dormant.f -o build/dormant.o -I build

build/drains.o: drains.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  drains.f -o build/drains.o -I build

build/dstn1.o: dstn1.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  dstn1.f -o build/dstn1.o -I build

build/ee.o: ee.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ee.f -o build/ee.o -I build

build/eiusle.o: eiusle.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  eiusle.f -o build/eiusle.o -I build

build/enrsb.o: enrsb.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  enrsb.f -o build/enrsb.o -I build

build/erfc.o: erfc.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  erfc.f -o build/erfc.o -I build

build/estimate_ksat.o: estimate_ksat.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  estimate_ksat.f -o build/estimate_ksat.o -I build

build/etact.o: etact.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  etact.f -o build/etact.o -I build

build/etpot.o: etpot.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  etpot.f -o build/etpot.o -I build

build/expo.o: expo.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  expo.f -o build/expo.o -I build

build/fert.o: fert.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  fert.f -o build/fert.o -I build

build/filter.o: filter.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  filter.f -o build/filter.o -I build

build/filtw.o: filtw.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  filtw.f -o build/filtw.o -I build

build/finalbal.o: finalbal.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  finalbal.f -o build/finalbal.o -I build

build/gcycl.o: gcycl.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gcycl.f -o build/gcycl.o -I build

build/getallo.o: getallo.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  getallo.f -o build/getallo.o -I build

build/grass_wway.o: grass_wway.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  grass_wway.f -o build/grass_wway.o -I build

build/graze.o: graze.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  graze.f -o build/graze.o -I build

build/grow.o: grow.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  grow.f -o build/grow.o -I build

build/gwmod.o: gwmod.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gwmod.f -o build/gwmod.o -I build

build/gwmod_deep.o: gwmod_deep.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gwmod_deep.f -o build/gwmod_deep.o -I build

build/gwnutr.o: gwnutr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gwnutr.f -o build/gwnutr.o -I build

build/gw_no3.o: gw_no3.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gw_no3.f -o build/gw_no3.o -I build

build/h2omgt_init.o: h2omgt_init.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  h2omgt_init.f -o build/h2omgt_init.o -I build

build/harvestop.o: harvestop.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  harvestop.f -o build/harvestop.o -I build

build/harvgrainop.o: harvgrainop.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  harvgrainop.f -o build/harvgrainop.o -I build

build/harvkillop.o: harvkillop.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  harvkillop.f -o build/harvkillop.o -I build

build/header.o: header.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  header.f -o build/header.o -I build

build/headout.o: headout.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  headout.f -o build/headout.o -I build

build/hhnoqual.o: hhnoqual.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hhnoqual.f -o build/hhnoqual.o -I build

build/hhwatqual.o: hhwatqual.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hhwatqual.f -o build/hhwatqual.o -I build

build/hmeas.o: hmeas.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hmeas.f -o build/hmeas.o -I build

build/hruaa.o: hruaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruaa.f -o build/hruaa.o -I build

build/hruallo.o: hruallo.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruallo.f -o build/hruallo.o -I build

build/hruday.o: hruday.f90 build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruday.f90 -o build/hruday.o -I build

build/hrumon.o: hrumon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hrumon.f -o build/hrumon.o -I build

build/hrupond.o: hrupond.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hrupond.f -o build/hrupond.o -I build

build/hrupondhr.o: hrupondhr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hrupondhr.f -o build/hrupondhr.o -I build

build/hruyr.o: hruyr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruyr.f -o build/hruyr.o -I build

build/hydroinit.o: hydroinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hydroinit.f -o build/hydroinit.o -I build

build/icl.o: icl.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  icl.f -o build/icl.o -I build

build/lidinit.o: lidinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lidinit.f -o build/lidinit.o -I build

build/lids.o: lids.f build/main.o build/lid_greenroof.o build/lid_raingarden.o build/lid_cistern.o build/lid_porpavement.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lids.f -o build/lids.o -I build


build/lid_greenroof.o: lid_greenroof.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lid_greenroof.f -o build/lid_greenroof.o -I build

build/lid_raingarden.o: lid_raingarden.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lid_raingarden.f -o build/lid_raingarden.o -I build

build/lid_cistern.o: lid_cistern.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lid_cistern.f -o build/lid_cistern.o -I build

build/lid_porpavement.o: lid_porpavement.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lid_porpavement.f -o build/lid_porpavement.o -I build


build/impndaa.o: impndaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndaa.f -o build/impndaa.o -I build

build/impndday.o: impndday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndday.f -o build/impndday.o -I build

build/impndmon.o: impndmon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndmon.f -o build/impndmon.o -I build

build/impndyr.o: impndyr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndyr.f -o build/impndyr.o -I build

build/impnd_init.o: impnd_init.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impnd_init.f -o build/impnd_init.o -I build

build/irrigate.o: irrigate.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irrigate.f -o build/irrigate.o -I build

build/irrsub.o: irrsub.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irrsub.f -o build/irrsub.o -I build

build/irr_rch.o: irr_rch.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irr_rch.f -o build/irr_rch.o -I build

build/irr_res.o: irr_res.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irr_res.f -o build/irr_res.o -I build

build/jdt.o: jdt.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  jdt.f -o build/jdt.o -I build

build/killop.o: killop.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  killop.f -o build/killop.o -I build

build/lakeq.o: lakeq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lakeq.f -o build/lakeq.o -I build

build/latsed.o: latsed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  latsed.f -o build/latsed.o -I build

build/layersplit.o: layersplit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  layersplit.f -o build/layersplit.o -I build

build/lwqdef.o: lwqdef.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lwqdef.f -o build/lwqdef.o -I build

build/main.o: main.f modparm.f
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} main.f -o build/main.o -J build

build/ncsed_leach.o: NCsed_leach.f90 build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  NCsed_leach.f90 -o build/ncsed_leach.o -I build

build/ndenit.o: ndenit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ndenit.f -o build/ndenit.o -I build

build/newtillmix.o: newtillmix.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  newtillmix.f -o build/newtillmix.o -I build

build/nfix.o: nfix.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nfix.f -o build/nfix.o -I build

build/nitvol.o: nitvol.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nitvol.f -o build/nitvol.o -I build

build/nlch.o: nlch.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nlch.f -o build/nlch.o -I build

build/nminrl.o: nminrl.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nminrl.f -o build/nminrl.o -I build

build/noqual.o: noqual.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  noqual.f -o build/noqual.o -I build

build/npup.o: npup.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  npup.f -o build/npup.o -I build

build/nrain.o: nrain.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nrain.f -o build/nrain.o -I build

build/nup.o: nup.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nup.f -o build/nup.o -I build

build/nuts.o: nuts.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nuts.f -o build/nuts.o -I build

build/openwth.o: openwth.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  openwth.f -o build/openwth.o -I build

build/operatn.o: operatn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  operatn.f -o build/operatn.o -I build

build/orgn.o: orgn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  orgn.f -o build/orgn.o -I build

build/orgncswat.o: orgncswat.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  orgncswat.f -o build/orgncswat.o -I build

build/origtile.o: origtile.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  origtile.f -o build/origtile.o -I build

build/ovr_sed.o: ovr_sed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} ovr_sed.f -o build/ovr_sed.o -I build

build/percmacro.o: percmacro.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  percmacro.f -o build/percmacro.o -I build

build/percmain.o: percmain.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} percmain.f -o build/percmain.o -I build

build/percmicro.o: percmicro.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  percmicro.f -o build/percmicro.o -I build

build/pestlch.o: pestlch.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pestlch.f -o build/pestlch.o -I build

build/pestw.o: pestw.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pestw.f -o build/pestw.o -I build

build/pesty.o: pesty.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pesty.f -o build/pesty.o -I build

build/pgen.o: pgen.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pgen.f -o build/pgen.o -I build

build/pgenhr.o: pgenhr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pgenhr.f -o build/pgenhr.o -I build

build/pkq.o: pkq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pkq.f -o build/pkq.o -I build

build/plantmod.o: plantmod.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  plantmod.f -o build/plantmod.o -I build

build/plantop.o: plantop.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  plantop.f -o build/plantop.o -I build

build/pmeas.o: pmeas.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pmeas.f -o build/pmeas.o -I build

build/pminrl.o: pminrl.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pminrl.f -o build/pminrl.o -I build

build/pminrl2.o: pminrl2.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pminrl2.f -o build/pminrl2.o -I build

build/pond.o: pond.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pond.f -o build/pond.o -I build

build/pondhr.o: pondhr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pondhr.f -o build/pondhr.o -I build

build/pothole.o: pothole.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pothole.f -o build/pothole.o -I build

build/potholehr.o: potholehr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  potholehr.f -o build/potholehr.o -I build

build/print_hyd.o: print_hyd.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  print_hyd.f -o build/print_hyd.o -I build

build/psed.o: psed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  psed.f -o build/psed.o -I build

build/qman.o: qman.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  qman.f -o build/qman.o -I build

build/ran1.o: ran1.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ran1.f -o build/ran1.o -I build

build/rchaa.o: rchaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchaa.f -o build/rchaa.o -I build

build/rchday.o: rchday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchday.f -o build/rchday.o -I build

build/rchinit.o: rchinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchinit.f -o build/rchinit.o -I build

build/rchmon.o: rchmon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchmon.f -o build/rchmon.o -I build

build/rchuse.o: rchuse.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchuse.f -o build/rchuse.o -I build

build/rchyr.o: rchyr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchyr.f -o build/rchyr.o -I build

build/reachout.o: reachout.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  reachout.f -o build/reachout.o -I build

build/readatmodep.o: readatmodep.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readatmodep.f -o build/readatmodep.o -I build

build/readbsn.o: readbsn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX}  readbsn.f -o build/readbsn.o -I build

build/readchm.o: readchm.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readchm.f -o build/readchm.o -I build

build/readcnst.o: readcnst.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readcnst.f -o build/readcnst.o -I build

build/readfcst.o: readfcst.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfcst.f -o build/readfcst.o -I build

build/readfert.o: readfert.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfert.f -o build/readfert.o -I build

build/readfig.o: readfig.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfig.f -o build/readfig.o -I build

build/readfile.o: readfile.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfile.f -o build/readfile.o -I build

build/readgw.o: readgw.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readgw.f -o build/readgw.o -I build

build/readhru.o: readhru.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readhru.f -o build/readhru.o -I build

build/readinpt.o: readinpt.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readinpt.f -o build/readinpt.o -I build

build/readlup.o: readlup.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readlup.f -o build/readlup.o -I build

build/readlwq.o: readlwq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readlwq.f -o build/readlwq.o -I build

build/readmgt.o: readmgt.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readmgt.f -o build/readmgt.o -I build

build/readmon.o: readmon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readmon.f -o build/readmon.o -I build

build/readops.o: readops.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readops.f -o build/readops.o -I build

build/readpest.o: readpest.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readpest.f -o build/readpest.o -I build

build/readplant.o: readplant.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readplant.f -o build/readplant.o -I build

build/readpnd.o: readpnd.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readpnd.f -o build/readpnd.o -I build

build/readres.o: readres.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readres.f -o build/readres.o -I build

build/readrte.o: readrte.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readrte.f -o build/readrte.o -I build

build/readru.o: readru.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readru.f -o build/readru.o -I build

build/readsdr.o: readsdr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsdr.f -o build/readsdr.o -I build

build/readsepticbz.o: readsepticbz.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsepticbz.f -o build/readsepticbz.o -I build

build/readseptwq.o: readseptwq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readseptwq.f -o build/readseptwq.o -I build

build/readsno.o: readsno.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsno.f -o build/readsno.o -I build

build/readsol.o: readsol.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsol.f -o build/readsol.o -I build

build/readsub.o: readsub.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsub.f -o build/readsub.o -I build

build/readswq.o: readswq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readswq.f -o build/readswq.o -I build

build/readtill.o: readtill.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readtill.f -o build/readtill.o -I build

build/readurban.o: readurban.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readurban.f -o build/readurban.o -I build

build/readwgn.o: readwgn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readwgn.f -o build/readwgn.o -I build

build/readwus.o: readwus.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readwus.f -o build/readwus.o -I build

build/readwwq.o: readwwq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readwwq.f -o build/readwwq.o -I build

build/readyr.o: readyr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readyr.f -o build/readyr.o -I build

build/reccnst.o: reccnst.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  reccnst.f -o build/reccnst.o -I build

build/recday.o: recday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  recday.f -o build/recday.o -I build

build/rechour.o: rechour.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rechour.f -o build/rechour.o -I build

build/recmon.o: recmon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  recmon.f -o build/recmon.o -I build

build/recyear.o: recyear.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  recyear.f -o build/recyear.o -I build

build/regres.o: regres.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  regres.f -o build/regres.o -I build

build/res.o: res.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  res.f -o build/res.o -I build

build/resbact.o: resbact.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resbact.f -o build/resbact.o -I build

build/resetlu.o: resetlu.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resetlu.f -o build/resetlu.o -I build

build/reshr.o: reshr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  reshr.f -o build/reshr.o -I build

build/resinit.o: resinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resinit.f -o build/resinit.o -I build

build/resnut.o: resnut.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resnut.f -o build/resnut.o -I build

build/rewind_init.o: rewind_init.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rewind_init.f -o build/rewind_init.o -I build

build/rhgen.o: rhgen.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rhgen.f -o build/rhgen.o -I build

build/rootfr.o: rootfr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rootfr.f -o build/rootfr.o -I build

build/route.o: route.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  route.f -o build/route.o -I build

build/routels.o: routels.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  routels.f -o build/routels.o -I build

build/routeunit.o: routeunit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  routeunit.f -o build/routeunit.o -I build

build/routres.o: routres.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  routres.f -o build/routres.o -I build

build/rsedaa.o: rsedaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rsedaa.f -o build/rsedaa.o -I build

build/rseday.o: rseday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rseday.f -o build/rseday.o -I build

build/rsedmon.o: rsedmon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rsedmon.f -o build/rsedmon.o -I build

build/rsedyr.o: rsedyr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rsedyr.f -o build/rsedyr.o -I build

build/rtbact.o: rtbact.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtbact.f -o build/rtbact.o -I build

build/rtday.o: rtday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtday.f -o build/rtday.o -I build

build/rteinit.o: rteinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rteinit.f -o build/rteinit.o -I build

build/rthmusk.o: rthmusk.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rthmusk.f -o build/rthmusk.o -I build

build/rthpest.o: rthpest.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rthpest.f -o build/rthpest.o -I build

build/rthr.o: rthr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rthr.f -o build/rthr.o -I build

build/rthsed.o: rthsed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} rthsed.f -o build/rthsed.o -I build

build/rtmusk.o: rtmusk.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtmusk.f -o build/rtmusk.o -I build

build/rtout.o: rtout.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtout.f -o build/rtout.o -I build

build/rtpest.o: rtpest.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtpest.f -o build/rtpest.o -I build

build/rtsed.o: rtsed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed.f -o build/rtsed.o -I build

build/rtsed_bagnold.o: rtsed_bagnold.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_bagnold.f -o build/rtsed_bagnold.o -I build

build/rtsed_kodatie.o: rtsed_kodatie.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_kodatie.f -o build/rtsed_kodatie.o -I build

build/rtsed_molinas_wu.o: rtsed_Molinas_Wu.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_Molinas_Wu.f -o build/rtsed_molinas_wu.o -I build

build/rtsed_yangsand.o: rtsed_yangsand.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_yangsand.f -o build/rtsed_yangsand.o -I build

build/sat_excess.o: sat_excess.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sat_excess.f -o build/sat_excess.o -I build

build/save.o: save.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  save.f -o build/save.o -I build

build/saveconc.o: saveconc.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  saveconc.f -o build/saveconc.o -I build

build/schedule_ops.o: schedule_ops.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  schedule_ops.f -o build/schedule_ops.o -I build

build/sched_mgt.o: sched_mgt.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sched_mgt.f -o build/sched_mgt.o -I build

build/simulate.o: simulate.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  simulate.f -o build/simulate.o -I build

build/sim_initday.o: sim_initday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sim_initday.f -o build/sim_initday.o -I build

build/sim_inityr.o: sim_inityr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sim_inityr.f -o build/sim_inityr.o -I build

build/slrgen.o: slrgen.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  slrgen.f -o build/slrgen.o -I build

build/smeas.o: smeas.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  smeas.f -o build/smeas.o -I build

build/snom.o: snom.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  snom.f -o build/snom.o -I build

build/soil_chem.o: soil_chem.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_chem.f -o build/soil_chem.o -I build

build/soil_par.o: soil_par.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_par.f -o build/soil_par.o -I build

build/soil_phys.o: soil_phys.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_phys.f -o build/soil_phys.o -I build

build/soil_write.o: soil_write.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_write.f -o build/soil_write.o -I build

build/solp.o: solp.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  solp.f -o build/solp.o -I build

build/solt.o: solt.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  solt.f -o build/solt.o -I build

build/std1.o: std1.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  std1.f -o build/std1.o -I build

build/std2.o: std2.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  std2.f -o build/std2.o -I build

build/std3.o: std3.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  std3.f -o build/std3.o -I build

build/stdaa.o: stdaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  stdaa.f -o build/stdaa.o -I build

build/storeinitial.o: storeinitial.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  storeinitial.f -o build/storeinitial.o -I build

build/structure.o: structure.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  structure.f -o build/structure.o -I build

build/subaa.o: subaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subaa.f -o build/subaa.o -I build

build/subbasin.o: subbasin.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subbasin.f -o build/subbasin.o -I build

build/subday.o: subday.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subday.f -o build/subday.o -I build

build/submon.o: submon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  submon.f -o build/submon.o -I build

build/substor.o: substor.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  substor.f -o build/substor.o -I build

build/subwq.o: subwq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subwq.f -o build/subwq.o -I build

build/subyr.o: subyr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subyr.f -o build/subyr.o -I build

build/sub_subbasin.o: sub_subbasin.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sub_subbasin.f -o build/sub_subbasin.o -I build

build/sumhyd.o: sumhyd.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sumhyd.f -o build/sumhyd.o -I build

build/sumv.o: sumv.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sumv.f -o build/sumv.o -I build

build/surface.o: surface.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surface.f -o build/surface.o -I build

build/surfstor.o: surfstor.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surfstor.f -o build/surfstor.o -I build

build/surfst_h2o.o: surfst_h2o.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surfst_h2o.f -o build/surfst_h2o.o -I build

build/surq_daycn.o: surq_daycn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surq_daycn.f -o build/surq_daycn.o -I build

build/surq_greenampt.o: surq_greenampt.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surq_greenampt.f -o build/surq_greenampt.o -I build

build/swbl.o: swbl.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  swbl.f -o build/swbl.o -I build

build/sweep.o: sweep.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sweep.f -o build/sweep.o -I build

build/swu.o: swu.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  swu.f -o build/swu.o -I build

build/tair.o: tair.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tair.f -o build/tair.o -I build

build/tgen.o: tgen.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tgen.f -o build/tgen.o -I build

build/theta.o: theta.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  theta.f -o build/theta.o -I build

build/tillfactor.o: tillfactor.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tillfactor.f -o build/tillfactor.o -I build

build/tillmix.o: tillmix.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tillmix.f -o build/tillmix.o -I build

build/tmeas.o: tmeas.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tmeas.f -o build/tmeas.o -I build

build/tran.o: tran.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tran.f -o build/tran.o -I build

build/transfer.o: transfer.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  transfer.f -o build/transfer.o -I build

build/tstr.o: tstr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tstr.f -o build/tstr.o -I build

build/ttcoef.o: ttcoef.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ttcoef.f -o build/ttcoef.o -I build

build/ttcoef_wway.o: ttcoef_wway.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ttcoef_wway.f -o build/ttcoef_wway.o -I build

build/urban.o: urban.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  urban.f -o build/urban.o -I build

build/urbanhr.o: urbanhr.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  urbanhr.f -o build/urbanhr.o -I build

build/urb_bmp.o: urb_bmp.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  urb_bmp.f -o build/urb_bmp.o -I build

build/varinit.o: varinit.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  varinit.f -o build/varinit.o -I build

build/vbl.o: vbl.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  vbl.f -o build/vbl.o -I build

build/virtual.o: virtual.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  virtual.f -o build/virtual.o -I build

build/volq.o: volq.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  volq.f -o build/volq.o -I build

build/washp.o: washp.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  washp.f -o build/washp.o -I build

build/watbal.o: watbal.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watbal.f -o build/watbal.o -I build

build/water_hru.o: water_hru.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  water_hru.f -o build/water_hru.o -I build

build/watqual.o: watqual.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watqual.f -o build/watqual.o -I build

build/watqual2.o: watqual2.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watqual2.f -o build/watqual2.o -I build

build/wattable.o: wattable.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wattable.f -o build/wattable.o -I build

build/watuse.o: watuse.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watuse.f -o build/watuse.o -I build

build/weatgn.o: weatgn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  weatgn.f -o build/weatgn.o -I build

build/wetlan.o: wetlan.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wetlan.f -o build/wetlan.o -I build

build/wmeas.o: wmeas.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wmeas.f -o build/wmeas.o -I build

build/wndgen.o: wndgen.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wndgen.f -o build/wndgen.o -I build

build/writea.o: writea.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writea.f -o build/writea.o -I build

build/writeaa.o: writeaa.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writeaa.f -o build/writeaa.o -I build

build/writed.o: writed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writed.f -o build/writed.o -I build

build/writem.o: writem.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writem.f -o build/writem.o -I build

build/xmon.o: xmon.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  xmon.f -o build/xmon.o -I build

build/ysed.o: ysed.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ysed.f -o build/ysed.o -I build

build/zero0.o: zero0.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero0.f -o build/zero0.o -I build

build/zero1.o: zero1.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero1.f -o build/zero1.o -I build

build/zero2.o: zero2.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero2.f -o build/zero2.o -I build

build/zeroini.o: zeroini.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zeroini.f -o build/zeroini.o -I build

build/zero_urbn.o: zero_urbn.f build/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero_urbn.f -o build/zero_urbn.o -I build

build_clean:
	rm -f ${NAMEbuild}.exe
	rm -f build/*.o
	rm -f build/*.mod
	rm -f build/*~

OBJECTS_DEBUG64=  debug64/addh.o debug64/albedo.o debug64/allocate_parms.o debug64/alph.o debug64/anfert.o debug64/apex_day.o debug64/apply.o debug64/ascrv.o debug64/atri.o debug64/aunif.o debug64/autoirr.o debug64/aveval.o debug64/bacteria.o debug64/biofilm.o debug64/biozone.o debug64/bmpfixed.o debug64/bmpinit.o debug64/bmp_det_pond.o debug64/bmp_ri_pond.o debug64/bmp_sand_filter.o debug64/bmp_sed_pond.o debug64/bmp_wet_pond.o debug64/buffer.o debug64/burnop.o debug64/canopyint.o debug64/caps.o debug64/carbon_new.o debug64/carbon_zhang2.o debug64/cfactor.o debug64/chkcst.o debug64/clgen.o debug64/clicon.o debug64/command.o debug64/conapply.o debug64/confert.o debug64/crackflow.o debug64/crackvol.o debug64/curno.o debug64/dailycn.o debug64/decay.o debug64/depstor.o debug64/distrib_bmps.o debug64/dormant.o debug64/drains.o debug64/dstn1.o debug64/ee.o debug64/eiusle.o debug64/enrsb.o debug64/erfc.o debug64/estimate_ksat.o debug64/etact.o debug64/etpot.o debug64/expo.o debug64/fert.o debug64/filter.o debug64/filtw.o debug64/finalbal.o debug64/gcycl.o debug64/getallo.o debug64/grass_wway.o debug64/graze.o debug64/grow.o debug64/gwmod.o debug64/gwmod_deep.o debug64/gwnutr.o debug64/gw_no3.o debug64/h2omgt_init.o debug64/harvestop.o debug64/harvgrainop.o debug64/harvkillop.o debug64/header.o debug64/headout.o debug64/hhnoqual.o debug64/hhwatqual.o debug64/hmeas.o debug64/hruaa.o debug64/hruallo.o debug64/hruday.o debug64/hrumon.o debug64/hrupond.o debug64/hrupondhr.o debug64/hruyr.o debug64/hydroinit.o debug64/icl.o debug64/impndaa.o debug64/impndday.o debug64/impndmon.o debug64/impndyr.o debug64/impnd_init.o debug64/irrigate.o debug64/irrsub.o debug64/irr_rch.o debug64/irr_res.o debug64/jdt.o debug64/killop.o debug64/lakeq.o debug64/latsed.o debug64/layersplit.o debug64/lwqdef.o debug64/main.o debug64/ncsed_leach.o debug64/ndenit.o debug64/newtillmix.o debug64/nfix.o debug64/nitvol.o debug64/nlch.o debug64/nminrl.o debug64/noqual.o debug64/npup.o debug64/nrain.o debug64/nup.o debug64/nuts.o debug64/openwth.o debug64/operatn.o debug64/orgn.o debug64/orgncswat.o debug64/origtile.o debug64/ovr_sed.o debug64/percmacro.o debug64/percmain.o debug64/percmicro.o debug64/pestlch.o debug64/pestw.o debug64/pesty.o debug64/pgen.o debug64/pgenhr.o debug64/pkq.o debug64/plantmod.o debug64/plantop.o debug64/pmeas.o debug64/pminrl.o debug64/pminrl2.o debug64/pond.o debug64/pondhr.o debug64/pothole.o debug64/potholehr.o debug64/print_hyd.o debug64/psed.o debug64/qman.o debug64/ran1.o debug64/rchaa.o debug64/rchday.o debug64/rchinit.o debug64/rchmon.o debug64/rchuse.o debug64/rchyr.o debug64/reachout.o debug64/readatmodep.o debug64/readbsn.o debug64/readchm.o debug64/readcnst.o debug64/readfcst.o debug64/readfert.o debug64/readfig.o debug64/readfile.o debug64/readgw.o debug64/readhru.o debug64/readinpt.o debug64/readlup.o debug64/readlwq.o debug64/readmgt.o debug64/readmon.o debug64/readops.o debug64/readpest.o debug64/readplant.o debug64/readpnd.o debug64/readres.o debug64/readrte.o debug64/readru.o debug64/readsdr.o debug64/readsepticbz.o debug64/readseptwq.o debug64/readsno.o debug64/readsol.o debug64/readsub.o debug64/readswq.o debug64/readtill.o debug64/readurban.o debug64/readwgn.o debug64/readwus.o debug64/readwwq.o debug64/readyr.o debug64/reccnst.o debug64/recday.o debug64/rechour.o debug64/recmon.o debug64/recyear.o debug64/regres.o debug64/res.o debug64/resbact.o debug64/resetlu.o debug64/reshr.o debug64/resinit.o debug64/resnut.o debug64/rewind_init.o debug64/rhgen.o debug64/rootfr.o debug64/route.o debug64/routels.o debug64/routeunit.o debug64/routres.o debug64/rsedaa.o debug64/rseday.o debug64/rsedmon.o debug64/rsedyr.o debug64/rtbact.o debug64/rtday.o debug64/rteinit.o debug64/rthmusk.o debug64/rthpest.o debug64/rthr.o debug64/rthsed.o debug64/rtmusk.o debug64/rtout.o debug64/rtpest.o debug64/rtsed.o debug64/rtsed_bagnold.o debug64/rtsed_kodatie.o debug64/rtsed_molinas_wu.o debug64/rtsed_yangsand.o debug64/sat_excess.o debug64/save.o debug64/saveconc.o debug64/schedule_ops.o debug64/sched_mgt.o debug64/simulate.o debug64/sim_initday.o debug64/sim_inityr.o debug64/slrgen.o debug64/smeas.o debug64/snom.o debug64/soil_chem.o debug64/soil_par.o debug64/soil_phys.o debug64/soil_write.o debug64/solp.o debug64/solt.o debug64/std1.o debug64/std2.o debug64/std3.o debug64/stdaa.o debug64/storeinitial.o debug64/structure.o debug64/subaa.o debug64/subbasin.o debug64/subday.o debug64/submon.o debug64/substor.o debug64/subwq.o debug64/subyr.o debug64/sub_subbasin.o debug64/sumhyd.o debug64/sumv.o debug64/surface.o debug64/surfstor.o debug64/surfst_h2o.o debug64/surq_daycn.o debug64/surq_greenampt.o debug64/swbl.o debug64/sweep.o debug64/swu.o debug64/tair.o debug64/tgen.o debug64/theta.o debug64/tillfactor.o debug64/tillmix.o debug64/tmeas.o debug64/tran.o debug64/transfer.o debug64/tstr.o debug64/ttcoef.o debug64/ttcoef_wway.o debug64/urban.o debug64/urbanhr.o debug64/urb_bmp.o debug64/varinit.o debug64/vbl.o debug64/virtual.o debug64/volq.o debug64/washp.o debug64/watbal.o debug64/water_hru.o debug64/watqual.o debug64/watqual2.o debug64/wattable.o debug64/watuse.o debug64/weatgn.o debug64/wetlan.o debug64/wmeas.o debug64/wndgen.o debug64/writea.o debug64/writeaa.o debug64/writed.o debug64/writem.o debug64/xmon.o debug64/ysed.o debug64/zero0.o debug64/zero1.o debug64/zero2.o debug64/zeroini.o debug64/zero_urbn.o

NAMEDEBUG64=swat_debug64
debug64:debug64_mkdir ${NAMEDEBUG64}

debug64_mkdir:
	mkdir -p debug64

${NAMEDEBUG64}: ${OBJECTS_DEBUG64}
	${FC} ${OBJECTS_DEBUG64} ${ARCH64} -static -o ${NAMEDEBUG64}


debug64/addh.o: addh.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  addh.f -o debug64/addh.o -I debug64

debug64/albedo.o: albedo.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  albedo.f -o debug64/albedo.o -I debug64

debug64/allocate_parms.o: allocate_parms.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  allocate_parms.f -o debug64/allocate_parms.o -I debug64

debug64/alph.o: alph.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  alph.f -o debug64/alph.o -I debug64

debug64/anfert.o: anfert.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  anfert.f -o debug64/anfert.o -I debug64

debug64/apex_day.o: apex_day.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  apex_day.f -o debug64/apex_day.o -I debug64

debug64/apply.o: apply.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  apply.f -o debug64/apply.o -I debug64

debug64/ascrv.o: ascrv.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ascrv.f -o debug64/ascrv.o -I debug64

debug64/atri.o: atri.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  atri.f -o debug64/atri.o -I debug64

debug64/aunif.o: aunif.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  aunif.f -o debug64/aunif.o -I debug64

debug64/autoirr.o: autoirr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  autoirr.f -o debug64/autoirr.o -I debug64

debug64/aveval.o: aveval.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  aveval.f -o debug64/aveval.o -I debug64

debug64/bacteria.o: bacteria.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bacteria.f -o debug64/bacteria.o -I debug64

debug64/biofilm.o: biofilm.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  biofilm.f -o debug64/biofilm.o -I debug64

debug64/biozone.o: biozone.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} biozone.f -o debug64/biozone.o -I debug64

debug64/bmpfixed.o: bmpfixed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmpfixed.f -o debug64/bmpfixed.o -I debug64

debug64/bmpinit.o: bmpinit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} bmpinit.f -o debug64/bmpinit.o -I debug64

debug64/bmp_det_pond.o: bmp_det_pond.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_det_pond.f -o debug64/bmp_det_pond.o -I debug64

debug64/bmp_ri_pond.o: bmp_ri_pond.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_ri_pond.f -o debug64/bmp_ri_pond.o -I debug64

debug64/bmp_sand_filter.o: bmp_sand_filter.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_sand_filter.f -o debug64/bmp_sand_filter.o -I debug64

debug64/bmp_sed_pond.o: bmp_sed_pond.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_sed_pond.f -o debug64/bmp_sed_pond.o -I debug64

debug64/bmp_wet_pond.o: bmp_wet_pond.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  bmp_wet_pond.f -o debug64/bmp_wet_pond.o -I debug64

debug64/buffer.o: buffer.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  buffer.f -o debug64/buffer.o -I debug64

debug64/burnop.o: burnop.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  burnop.f -o debug64/burnop.o -I debug64

debug64/canopyint.o: canopyint.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  canopyint.f -o debug64/canopyint.o -I debug64

debug64/caps.o: caps.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  caps.f -o debug64/caps.o -I debug64

debug64/carbon_new.o: carbon_new.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  carbon_new.f -o debug64/carbon_new.o -I debug64

debug64/carbon_zhang2.o: carbon_zhang2.f90 debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFREE} carbon_zhang2.f90 -o debug64/carbon_zhang2.o -I debug64

debug64/cfactor.o: cfactor.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  cfactor.f -o debug64/cfactor.o -I debug64

debug64/chkcst.o: chkcst.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  chkcst.f -o debug64/chkcst.o -I debug64

debug64/clgen.o: clgen.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  clgen.f -o debug64/clgen.o -I debug64

debug64/clicon.o: clicon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  clicon.f -o debug64/clicon.o -I debug64

debug64/command.o: command.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  command.f -o debug64/command.o -I debug64

debug64/conapply.o: conapply.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  conapply.f -o debug64/conapply.o -I debug64

debug64/confert.o: confert.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  confert.f -o debug64/confert.o -I debug64

debug64/crackflow.o: crackflow.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  crackflow.f -o debug64/crackflow.o -I debug64

debug64/crackvol.o: crackvol.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  crackvol.f -o debug64/crackvol.o -I debug64

debug64/curno.o: curno.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  curno.f -o debug64/curno.o -I debug64

debug64/dailycn.o: dailycn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  dailycn.f -o debug64/dailycn.o -I debug64

debug64/decay.o: decay.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  decay.f -o debug64/decay.o -I debug64

debug64/depstor.o: depstor.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  depstor.f -o debug64/depstor.o -I debug64

debug64/distrib_bmps.o: distrib_bmps.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  distrib_bmps.f -o debug64/distrib_bmps.o -I debug64

debug64/dormant.o: dormant.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  dormant.f -o debug64/dormant.o -I debug64

debug64/drains.o: drains.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  drains.f -o debug64/drains.o -I debug64

debug64/dstn1.o: dstn1.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  dstn1.f -o debug64/dstn1.o -I debug64

debug64/ee.o: ee.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ee.f -o debug64/ee.o -I debug64

debug64/eiusle.o: eiusle.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  eiusle.f -o debug64/eiusle.o -I debug64

debug64/enrsb.o: enrsb.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  enrsb.f -o debug64/enrsb.o -I debug64

debug64/erfc.o: erfc.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  erfc.f -o debug64/erfc.o -I debug64

debug64/estimate_ksat.o: estimate_ksat.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  estimate_ksat.f -o debug64/estimate_ksat.o -I debug64

debug64/etact.o: etact.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  etact.f -o debug64/etact.o -I debug64

debug64/etpot.o: etpot.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  etpot.f -o debug64/etpot.o -I debug64

debug64/expo.o: expo.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  expo.f -o debug64/expo.o -I debug64

debug64/fert.o: fert.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  fert.f -o debug64/fert.o -I debug64

debug64/filter.o: filter.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  filter.f -o debug64/filter.o -I debug64

debug64/filtw.o: filtw.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  filtw.f -o debug64/filtw.o -I debug64

debug64/finalbal.o: finalbal.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  finalbal.f -o debug64/finalbal.o -I debug64

debug64/gcycl.o: gcycl.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gcycl.f -o debug64/gcycl.o -I debug64

debug64/getallo.o: getallo.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  getallo.f -o debug64/getallo.o -I debug64

debug64/grass_wway.o: grass_wway.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  grass_wway.f -o debug64/grass_wway.o -I debug64

debug64/graze.o: graze.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  graze.f -o debug64/graze.o -I debug64

debug64/grow.o: grow.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  grow.f -o debug64/grow.o -I debug64

debug64/gwmod.o: gwmod.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gwmod.f -o debug64/gwmod.o -I debug64

debug64/gwmod_deep.o: gwmod_deep.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gwmod_deep.f -o debug64/gwmod_deep.o -I debug64

debug64/gwnutr.o: gwnutr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gwnutr.f -o debug64/gwnutr.o -I debug64

debug64/gw_no3.o: gw_no3.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  gw_no3.f -o debug64/gw_no3.o -I debug64

debug64/h2omgt_init.o: h2omgt_init.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  h2omgt_init.f -o debug64/h2omgt_init.o -I debug64

debug64/harvestop.o: harvestop.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  harvestop.f -o debug64/harvestop.o -I debug64

debug64/harvgrainop.o: harvgrainop.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  harvgrainop.f -o debug64/harvgrainop.o -I debug64

debug64/harvkillop.o: harvkillop.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  harvkillop.f -o debug64/harvkillop.o -I debug64

debug64/header.o: header.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  header.f -o debug64/header.o -I debug64

debug64/headout.o: headout.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  headout.f -o debug64/headout.o -I debug64

debug64/hhnoqual.o: hhnoqual.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hhnoqual.f -o debug64/hhnoqual.o -I debug64

debug64/hhwatqual.o: hhwatqual.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hhwatqual.f -o debug64/hhwatqual.o -I debug64

debug64/hmeas.o: hmeas.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hmeas.f -o debug64/hmeas.o -I debug64

debug64/hruaa.o: hruaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruaa.f -o debug64/hruaa.o -I debug64

debug64/hruallo.o: hruallo.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruallo.f -o debug64/hruallo.o -I debug64

debug64/hruday.o: hruday.f90 debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruday.f90 -o debug64/hruday.o -I debug64

debug64/hrumon.o: hrumon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hrumon.f -o debug64/hrumon.o -I debug64

debug64/hrupond.o: hrupond.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hrupond.f -o debug64/hrupond.o -I debug64

debug64/hrupondhr.o: hrupondhr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hrupondhr.f -o debug64/hrupondhr.o -I debug64

debug64/hruyr.o: hruyr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hruyr.f -o debug64/hruyr.o -I debug64

debug64/hydroinit.o: hydroinit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  hydroinit.f -o debug64/hydroinit.o -I debug64

debug64/icl.o: icl.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  icl.f -o debug64/icl.o -I debug64

debug64/impndaa.o: impndaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndaa.f -o debug64/impndaa.o -I debug64

debug64/impndday.o: impndday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndday.f -o debug64/impndday.o -I debug64

debug64/impndmon.o: impndmon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndmon.f -o debug64/impndmon.o -I debug64

debug64/impndyr.o: impndyr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impndyr.f -o debug64/impndyr.o -I debug64

debug64/impnd_init.o: impnd_init.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  impnd_init.f -o debug64/impnd_init.o -I debug64

debug64/irrigate.o: irrigate.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irrigate.f -o debug64/irrigate.o -I debug64

debug64/irrsub.o: irrsub.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irrsub.f -o debug64/irrsub.o -I debug64

debug64/irr_rch.o: irr_rch.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irr_rch.f -o debug64/irr_rch.o -I debug64

debug64/irr_res.o: irr_res.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  irr_res.f -o debug64/irr_res.o -I debug64

debug64/jdt.o: jdt.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  jdt.f -o debug64/jdt.o -I debug64

debug64/killop.o: killop.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  killop.f -o debug64/killop.o -I debug64

debug64/lakeq.o: lakeq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lakeq.f -o debug64/lakeq.o -I debug64

debug64/latsed.o: latsed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  latsed.f -o debug64/latsed.o -I debug64

debug64/layersplit.o: layersplit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  layersplit.f -o debug64/layersplit.o -I debug64

debug64/lwqdef.o: lwqdef.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  lwqdef.f -o debug64/lwqdef.o -I debug64

debug64/main.o: main.f modparm.f
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} main.f -o debug64/main.o -J debug64

debug64/ncsed_leach.o: NCsed_leach.f90 debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  NCsed_leach.f90 -o debug64/ncsed_leach.o -I debug64

debug64/ndenit.o: ndenit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ndenit.f -o debug64/ndenit.o -I debug64

debug64/newtillmix.o: newtillmix.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  newtillmix.f -o debug64/newtillmix.o -I debug64

debug64/nfix.o: nfix.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nfix.f -o debug64/nfix.o -I debug64

debug64/nitvol.o: nitvol.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nitvol.f -o debug64/nitvol.o -I debug64

debug64/nlch.o: nlch.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nlch.f -o debug64/nlch.o -I debug64

debug64/nminrl.o: nminrl.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nminrl.f -o debug64/nminrl.o -I debug64

debug64/noqual.o: noqual.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  noqual.f -o debug64/noqual.o -I debug64

debug64/npup.o: npup.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  npup.f -o debug64/npup.o -I debug64

debug64/nrain.o: nrain.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nrain.f -o debug64/nrain.o -I debug64

debug64/nup.o: nup.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nup.f -o debug64/nup.o -I debug64

debug64/nuts.o: nuts.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  nuts.f -o debug64/nuts.o -I debug64

debug64/openwth.o: openwth.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  openwth.f -o debug64/openwth.o -I debug64

debug64/operatn.o: operatn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  operatn.f -o debug64/operatn.o -I debug64

debug64/orgn.o: orgn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  orgn.f -o debug64/orgn.o -I debug64

debug64/orgncswat.o: orgncswat.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  orgncswat.f -o debug64/orgncswat.o -I debug64

debug64/origtile.o: origtile.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  origtile.f -o debug64/origtile.o -I debug64

debug64/ovr_sed.o: ovr_sed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} ovr_sed.f -o debug64/ovr_sed.o -I debug64

debug64/percmacro.o: percmacro.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  percmacro.f -o debug64/percmacro.o -I debug64

debug64/percmain.o: percmain.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} percmain.f -o debug64/percmain.o -I debug64

debug64/percmicro.o: percmicro.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  percmicro.f -o debug64/percmicro.o -I debug64

debug64/pestlch.o: pestlch.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pestlch.f -o debug64/pestlch.o -I debug64

debug64/pestw.o: pestw.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pestw.f -o debug64/pestw.o -I debug64

debug64/pesty.o: pesty.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pesty.f -o debug64/pesty.o -I debug64

debug64/pgen.o: pgen.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pgen.f -o debug64/pgen.o -I debug64

debug64/pgenhr.o: pgenhr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pgenhr.f -o debug64/pgenhr.o -I debug64

debug64/pkq.o: pkq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pkq.f -o debug64/pkq.o -I debug64

debug64/plantmod.o: plantmod.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  plantmod.f -o debug64/plantmod.o -I debug64

debug64/plantop.o: plantop.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  plantop.f -o debug64/plantop.o -I debug64

debug64/pmeas.o: pmeas.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pmeas.f -o debug64/pmeas.o -I debug64

debug64/pminrl.o: pminrl.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pminrl.f -o debug64/pminrl.o -I debug64

debug64/pminrl2.o: pminrl2.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pminrl2.f -o debug64/pminrl2.o -I debug64

debug64/pond.o: pond.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pond.f -o debug64/pond.o -I debug64

debug64/pondhr.o: pondhr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pondhr.f -o debug64/pondhr.o -I debug64

debug64/pothole.o: pothole.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  pothole.f -o debug64/pothole.o -I debug64

debug64/potholehr.o: potholehr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  potholehr.f -o debug64/potholehr.o -I debug64

debug64/print_hyd.o: print_hyd.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  print_hyd.f -o debug64/print_hyd.o -I debug64

debug64/psed.o: psed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  psed.f -o debug64/psed.o -I debug64

debug64/qman.o: qman.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  qman.f -o debug64/qman.o -I debug64

debug64/ran1.o: ran1.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ran1.f -o debug64/ran1.o -I debug64

debug64/rchaa.o: rchaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchaa.f -o debug64/rchaa.o -I debug64

debug64/rchday.o: rchday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchday.f -o debug64/rchday.o -I debug64

debug64/rchinit.o: rchinit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchinit.f -o debug64/rchinit.o -I debug64

debug64/rchmon.o: rchmon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchmon.f -o debug64/rchmon.o -I debug64

debug64/rchuse.o: rchuse.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchuse.f -o debug64/rchuse.o -I debug64

debug64/rchyr.o: rchyr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rchyr.f -o debug64/rchyr.o -I debug64

debug64/reachout.o: reachout.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  reachout.f -o debug64/reachout.o -I debug64

debug64/readatmodep.o: readatmodep.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readatmodep.f -o debug64/readatmodep.o -I debug64

debug64/readbsn.o: readbsn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readbsn.f -o debug64/readbsn.o -I debug64

debug64/readchm.o: readchm.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readchm.f -o debug64/readchm.o -I debug64

debug64/readcnst.o: readcnst.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readcnst.f -o debug64/readcnst.o -I debug64

debug64/readfcst.o: readfcst.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfcst.f -o debug64/readfcst.o -I debug64

debug64/readfert.o: readfert.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfert.f -o debug64/readfert.o -I debug64

debug64/readfig.o: readfig.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfig.f -o debug64/readfig.o -I debug64

debug64/readfile.o: readfile.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readfile.f -o debug64/readfile.o -I debug64

debug64/readgw.o: readgw.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readgw.f -o debug64/readgw.o -I debug64

debug64/readhru.o: readhru.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readhru.f -o debug64/readhru.o -I debug64

debug64/readinpt.o: readinpt.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readinpt.f -o debug64/readinpt.o -I debug64

debug64/readlup.o: readlup.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readlup.f -o debug64/readlup.o -I debug64

debug64/readlwq.o: readlwq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readlwq.f -o debug64/readlwq.o -I debug64

debug64/readmgt.o: readmgt.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readmgt.f -o debug64/readmgt.o -I debug64

debug64/readmon.o: readmon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readmon.f -o debug64/readmon.o -I debug64

debug64/readops.o: readops.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readops.f -o debug64/readops.o -I debug64

debug64/readpest.o: readpest.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readpest.f -o debug64/readpest.o -I debug64

debug64/readplant.o: readplant.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readplant.f -o debug64/readplant.o -I debug64

debug64/readpnd.o: readpnd.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readpnd.f -o debug64/readpnd.o -I debug64

debug64/readres.o: readres.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readres.f -o debug64/readres.o -I debug64

debug64/readrte.o: readrte.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readrte.f -o debug64/readrte.o -I debug64

debug64/readru.o: readru.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readru.f -o debug64/readru.o -I debug64

debug64/readsdr.o: readsdr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsdr.f -o debug64/readsdr.o -I debug64

debug64/readsepticbz.o: readsepticbz.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsepticbz.f -o debug64/readsepticbz.o -I debug64

debug64/readseptwq.o: readseptwq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readseptwq.f -o debug64/readseptwq.o -I debug64

debug64/readsno.o: readsno.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsno.f -o debug64/readsno.o -I debug64

debug64/readsol.o: readsol.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsol.f -o debug64/readsol.o -I debug64

debug64/readsub.o: readsub.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readsub.f -o debug64/readsub.o -I debug64

debug64/readswq.o: readswq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readswq.f -o debug64/readswq.o -I debug64

debug64/readtill.o: readtill.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readtill.f -o debug64/readtill.o -I debug64

debug64/readurban.o: readurban.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readurban.f -o debug64/readurban.o -I debug64

debug64/readwgn.o: readwgn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readwgn.f -o debug64/readwgn.o -I debug64

debug64/readwus.o: readwus.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readwus.f -o debug64/readwus.o -I debug64

debug64/readwwq.o: readwwq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readwwq.f -o debug64/readwwq.o -I debug64

debug64/readyr.o: readyr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  readyr.f -o debug64/readyr.o -I debug64

debug64/reccnst.o: reccnst.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  reccnst.f -o debug64/reccnst.o -I debug64

debug64/recday.o: recday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  recday.f -o debug64/recday.o -I debug64

debug64/rechour.o: rechour.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rechour.f -o debug64/rechour.o -I debug64

debug64/recmon.o: recmon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  recmon.f -o debug64/recmon.o -I debug64

debug64/recyear.o: recyear.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  recyear.f -o debug64/recyear.o -I debug64

debug64/regres.o: regres.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  regres.f -o debug64/regres.o -I debug64

debug64/res.o: res.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  res.f -o debug64/res.o -I debug64

debug64/resbact.o: resbact.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resbact.f -o debug64/resbact.o -I debug64

debug64/resetlu.o: resetlu.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resetlu.f -o debug64/resetlu.o -I debug64

debug64/reshr.o: reshr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  reshr.f -o debug64/reshr.o -I debug64

debug64/resinit.o: resinit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resinit.f -o debug64/resinit.o -I debug64

debug64/resnut.o: resnut.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  resnut.f -o debug64/resnut.o -I debug64

debug64/rewind_init.o: rewind_init.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rewind_init.f -o debug64/rewind_init.o -I debug64

debug64/rhgen.o: rhgen.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rhgen.f -o debug64/rhgen.o -I debug64

debug64/rootfr.o: rootfr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rootfr.f -o debug64/rootfr.o -I debug64

debug64/route.o: route.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  route.f -o debug64/route.o -I debug64

debug64/routels.o: routels.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  routels.f -o debug64/routels.o -I debug64

debug64/routeunit.o: routeunit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  routeunit.f -o debug64/routeunit.o -I debug64

debug64/routres.o: routres.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  routres.f -o debug64/routres.o -I debug64

debug64/rsedaa.o: rsedaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rsedaa.f -o debug64/rsedaa.o -I debug64

debug64/rseday.o: rseday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rseday.f -o debug64/rseday.o -I debug64

debug64/rsedmon.o: rsedmon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rsedmon.f -o debug64/rsedmon.o -I debug64

debug64/rsedyr.o: rsedyr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rsedyr.f -o debug64/rsedyr.o -I debug64

debug64/rtbact.o: rtbact.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtbact.f -o debug64/rtbact.o -I debug64

debug64/rtday.o: rtday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtday.f -o debug64/rtday.o -I debug64

debug64/rteinit.o: rteinit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rteinit.f -o debug64/rteinit.o -I debug64

debug64/rthmusk.o: rthmusk.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rthmusk.f -o debug64/rthmusk.o -I debug64

debug64/rthpest.o: rthpest.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rthpest.f -o debug64/rthpest.o -I debug64

debug64/rthr.o: rthr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rthr.f -o debug64/rthr.o -I debug64

debug64/rthsed.o: rthsed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} rthsed.f -o debug64/rthsed.o -I debug64

debug64/rtmusk.o: rtmusk.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtmusk.f -o debug64/rtmusk.o -I debug64

debug64/rtout.o: rtout.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtout.f -o debug64/rtout.o -I debug64

debug64/rtpest.o: rtpest.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtpest.f -o debug64/rtpest.o -I debug64

debug64/rtsed.o: rtsed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed.f -o debug64/rtsed.o -I debug64

debug64/rtsed_bagnold.o: rtsed_bagnold.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_bagnold.f -o debug64/rtsed_bagnold.o -I debug64

debug64/rtsed_kodatie.o: rtsed_kodatie.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_kodatie.f -o debug64/rtsed_kodatie.o -I debug64

debug64/rtsed_molinas_wu.o: rtsed_Molinas_Wu.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_Molinas_Wu.f -o debug64/rtsed_molinas_wu.o -I debug64

debug64/rtsed_yangsand.o: rtsed_yangsand.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  rtsed_yangsand.f -o debug64/rtsed_yangsand.o -I debug64

debug64/sat_excess.o: sat_excess.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sat_excess.f -o debug64/sat_excess.o -I debug64

debug64/save.o: save.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  save.f -o debug64/save.o -I debug64

debug64/saveconc.o: saveconc.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  saveconc.f -o debug64/saveconc.o -I debug64

debug64/schedule_ops.o: schedule_ops.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  schedule_ops.f -o debug64/schedule_ops.o -I debug64

debug64/sched_mgt.o: sched_mgt.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sched_mgt.f -o debug64/sched_mgt.o -I debug64

debug64/simulate.o: simulate.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  simulate.f -o debug64/simulate.o -I debug64

debug64/sim_initday.o: sim_initday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sim_initday.f -o debug64/sim_initday.o -I debug64

debug64/sim_inityr.o: sim_inityr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sim_inityr.f -o debug64/sim_inityr.o -I debug64

debug64/slrgen.o: slrgen.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  slrgen.f -o debug64/slrgen.o -I debug64

debug64/smeas.o: smeas.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  smeas.f -o debug64/smeas.o -I debug64

debug64/snom.o: snom.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  snom.f -o debug64/snom.o -I debug64

debug64/soil_chem.o: soil_chem.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_chem.f -o debug64/soil_chem.o -I debug64

debug64/soil_par.o: soil_par.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_par.f -o debug64/soil_par.o -I debug64

debug64/soil_phys.o: soil_phys.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_phys.f -o debug64/soil_phys.o -I debug64

debug64/soil_write.o: soil_write.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  soil_write.f -o debug64/soil_write.o -I debug64

debug64/solp.o: solp.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  solp.f -o debug64/solp.o -I debug64

debug64/solt.o: solt.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  solt.f -o debug64/solt.o -I debug64

debug64/std1.o: std1.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  std1.f -o debug64/std1.o -I debug64

debug64/std2.o: std2.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  std2.f -o debug64/std2.o -I debug64

debug64/std3.o: std3.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  std3.f -o debug64/std3.o -I debug64

debug64/stdaa.o: stdaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  stdaa.f -o debug64/stdaa.o -I debug64

debug64/storeinitial.o: storeinitial.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  storeinitial.f -o debug64/storeinitial.o -I debug64

debug64/structure.o: structure.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  structure.f -o debug64/structure.o -I debug64

debug64/subaa.o: subaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subaa.f -o debug64/subaa.o -I debug64

debug64/subbasin.o: subbasin.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subbasin.f -o debug64/subbasin.o -I debug64

debug64/subday.o: subday.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subday.f -o debug64/subday.o -I debug64

debug64/submon.o: submon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  submon.f -o debug64/submon.o -I debug64

debug64/substor.o: substor.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  substor.f -o debug64/substor.o -I debug64

debug64/subwq.o: subwq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subwq.f -o debug64/subwq.o -I debug64

debug64/subyr.o: subyr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  subyr.f -o debug64/subyr.o -I debug64

debug64/sub_subbasin.o: sub_subbasin.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sub_subbasin.f -o debug64/sub_subbasin.o -I debug64

debug64/sumhyd.o: sumhyd.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sumhyd.f -o debug64/sumhyd.o -I debug64

debug64/sumv.o: sumv.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sumv.f -o debug64/sumv.o -I debug64

debug64/surface.o: surface.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surface.f -o debug64/surface.o -I debug64

debug64/surfstor.o: surfstor.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surfstor.f -o debug64/surfstor.o -I debug64

debug64/surfst_h2o.o: surfst_h2o.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surfst_h2o.f -o debug64/surfst_h2o.o -I debug64

debug64/surq_daycn.o: surq_daycn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surq_daycn.f -o debug64/surq_daycn.o -I debug64

debug64/surq_greenampt.o: surq_greenampt.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  surq_greenampt.f -o debug64/surq_greenampt.o -I debug64

debug64/swbl.o: swbl.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  swbl.f -o debug64/swbl.o -I debug64

debug64/sweep.o: sweep.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  sweep.f -o debug64/sweep.o -I debug64

debug64/swu.o: swu.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  swu.f -o debug64/swu.o -I debug64

debug64/tair.o: tair.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tair.f -o debug64/tair.o -I debug64

debug64/tgen.o: tgen.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tgen.f -o debug64/tgen.o -I debug64

debug64/theta.o: theta.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  theta.f -o debug64/theta.o -I debug64

debug64/tillfactor.o: tillfactor.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tillfactor.f -o debug64/tillfactor.o -I debug64

debug64/tillmix.o: tillmix.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tillmix.f -o debug64/tillmix.o -I debug64

debug64/tmeas.o: tmeas.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tmeas.f -o debug64/tmeas.o -I debug64

debug64/tran.o: tran.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tran.f -o debug64/tran.o -I debug64

debug64/transfer.o: transfer.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  transfer.f -o debug64/transfer.o -I debug64

debug64/tstr.o: tstr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  tstr.f -o debug64/tstr.o -I debug64

debug64/ttcoef.o: ttcoef.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ttcoef.f -o debug64/ttcoef.o -I debug64

debug64/ttcoef_wway.o: ttcoef_wway.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ttcoef_wway.f -o debug64/ttcoef_wway.o -I debug64

debug64/urban.o: urban.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  urban.f -o debug64/urban.o -I debug64

debug64/urbanhr.o: urbanhr.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  urbanhr.f -o debug64/urbanhr.o -I debug64

debug64/urb_bmp.o: urb_bmp.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  urb_bmp.f -o debug64/urb_bmp.o -I debug64

debug64/varinit.o: varinit.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  varinit.f -o debug64/varinit.o -I debug64

debug64/vbl.o: vbl.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  vbl.f -o debug64/vbl.o -I debug64

debug64/virtual.o: virtual.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  virtual.f -o debug64/virtual.o -I debug64

debug64/volq.o: volq.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  volq.f -o debug64/volq.o -I debug64

debug64/washp.o: washp.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  washp.f -o debug64/washp.o -I debug64

debug64/watbal.o: watbal.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watbal.f -o debug64/watbal.o -I debug64

debug64/water_hru.o: water_hru.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  water_hru.f -o debug64/water_hru.o -I debug64

debug64/watqual.o: watqual.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watqual.f -o debug64/watqual.o -I debug64

debug64/watqual2.o: watqual2.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watqual2.f -o debug64/watqual2.o -I debug64

debug64/wattable.o: wattable.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wattable.f -o debug64/wattable.o -I debug64

debug64/watuse.o: watuse.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  watuse.f -o debug64/watuse.o -I debug64

debug64/weatgn.o: weatgn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  weatgn.f -o debug64/weatgn.o -I debug64

debug64/wetlan.o: wetlan.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wetlan.f -o debug64/wetlan.o -I debug64

debug64/wmeas.o: wmeas.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wmeas.f -o debug64/wmeas.o -I debug64

debug64/wndgen.o: wndgen.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  wndgen.f -o debug64/wndgen.o -I debug64

debug64/writea.o: writea.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writea.f -o debug64/writea.o -I debug64

debug64/writeaa.o: writeaa.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writeaa.f -o debug64/writeaa.o -I debug64

debug64/writed.o: writed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writed.f -o debug64/writed.o -I debug64

debug64/writem.o: writem.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  writem.f -o debug64/writem.o -I debug64

debug64/xmon.o: xmon.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  xmon.f -o debug64/xmon.o -I debug64

debug64/ysed.o: ysed.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ysed.f -o debug64/ysed.o -I debug64

debug64/zero0.o: zero0.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero0.f -o debug64/zero0.o -I debug64

debug64/zero1.o: zero1.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero1.f -o debug64/zero1.o -I debug64

debug64/zero2.o: zero2.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero2.f -o debug64/zero2.o -I debug64

debug64/zeroini.o: zeroini.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zeroini.f -o debug64/zeroini.o -I debug64

debug64/zero_urbn.o: zero_urbn.f debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  zero_urbn.f -o debug64/zero_urbn.o -I debug64

debug64_clean:
	rm -f ${NAMEDEBUG64}.exe
	rm -f debug64/*.o
	rm -f debug64/*.mod
	rm -f debug64/*~

OBJECTS_REL32=  rel32/addh.o rel32/albedo.o rel32/allocate_parms.o rel32/alph.o rel32/anfert.o rel32/apex_day.o rel32/apply.o rel32/ascrv.o rel32/atri.o rel32/aunif.o rel32/autoirr.o rel32/aveval.o rel32/bacteria.o rel32/biofilm.o rel32/biozone.o rel32/bmpfixed.o rel32/bmpinit.o rel32/bmp_det_pond.o rel32/bmp_ri_pond.o rel32/bmp_sand_filter.o rel32/bmp_sed_pond.o rel32/bmp_wet_pond.o rel32/buffer.o rel32/burnop.o rel32/canopyint.o rel32/caps.o rel32/carbon_new.o rel32/carbon_zhang2.o rel32/cfactor.o rel32/chkcst.o rel32/clgen.o rel32/clicon.o rel32/command.o rel32/conapply.o rel32/confert.o rel32/crackflow.o rel32/crackvol.o rel32/curno.o rel32/dailycn.o rel32/decay.o rel32/depstor.o rel32/distrib_bmps.o rel32/dormant.o rel32/drains.o rel32/dstn1.o rel32/ee.o rel32/eiusle.o rel32/enrsb.o rel32/erfc.o rel32/estimate_ksat.o rel32/etact.o rel32/etpot.o rel32/expo.o rel32/fert.o rel32/filter.o rel32/filtw.o rel32/finalbal.o rel32/gcycl.o rel32/getallo.o rel32/grass_wway.o rel32/graze.o rel32/grow.o rel32/gwmod.o rel32/gwmod_deep.o rel32/gwnutr.o rel32/gw_no3.o rel32/h2omgt_init.o rel32/harvestop.o rel32/harvgrainop.o rel32/harvkillop.o rel32/header.o rel32/headout.o rel32/hhnoqual.o rel32/hhwatqual.o rel32/hmeas.o rel32/hruaa.o rel32/hruallo.o rel32/hruday.o rel32/hrumon.o rel32/hrupond.o rel32/hrupondhr.o rel32/hruyr.o rel32/hydroinit.o rel32/icl.o rel32/impndaa.o rel32/impndday.o rel32/impndmon.o rel32/impndyr.o rel32/impnd_init.o rel32/irrigate.o rel32/irrsub.o rel32/irr_rch.o rel32/irr_res.o rel32/jdt.o rel32/killop.o rel32/lakeq.o rel32/latsed.o rel32/layersplit.o rel32/lwqdef.o rel32/main.o rel32/ncsed_leach.o rel32/ndenit.o rel32/newtillmix.o rel32/nfix.o rel32/nitvol.o rel32/nlch.o rel32/nminrl.o rel32/noqual.o rel32/npup.o rel32/nrain.o rel32/nup.o rel32/nuts.o rel32/openwth.o rel32/operatn.o rel32/orgn.o rel32/orgncswat.o rel32/origtile.o rel32/ovr_sed.o rel32/percmacro.o rel32/percmain.o rel32/percmicro.o rel32/pestlch.o rel32/pestw.o rel32/pesty.o rel32/pgen.o rel32/pgenhr.o rel32/pkq.o rel32/plantmod.o rel32/plantop.o rel32/pmeas.o rel32/pminrl.o rel32/pminrl2.o rel32/pond.o rel32/pondhr.o rel32/pothole.o rel32/potholehr.o rel32/print_hyd.o rel32/psed.o rel32/qman.o rel32/ran1.o rel32/rchaa.o rel32/rchday.o rel32/rchinit.o rel32/rchmon.o rel32/rchuse.o rel32/rchyr.o rel32/reachout.o rel32/readatmodep.o rel32/readbsn.o rel32/readchm.o rel32/readcnst.o rel32/readfcst.o rel32/readfert.o rel32/readfig.o rel32/readfile.o rel32/readgw.o rel32/readhru.o rel32/readinpt.o rel32/readlup.o rel32/readlwq.o rel32/readmgt.o rel32/readmon.o rel32/readops.o rel32/readpest.o rel32/readplant.o rel32/readpnd.o rel32/readres.o rel32/readrte.o rel32/readru.o rel32/readsdr.o rel32/readsepticbz.o rel32/readseptwq.o rel32/readsno.o rel32/readsol.o rel32/readsub.o rel32/readswq.o rel32/readtill.o rel32/readurban.o rel32/readwgn.o rel32/readwus.o rel32/readwwq.o rel32/readyr.o rel32/reccnst.o rel32/recday.o rel32/rechour.o rel32/recmon.o rel32/recyear.o rel32/regres.o rel32/res.o rel32/resbact.o rel32/resetlu.o rel32/reshr.o rel32/resinit.o rel32/resnut.o rel32/rewind_init.o rel32/rhgen.o rel32/rootfr.o rel32/route.o rel32/routels.o rel32/routeunit.o rel32/routres.o rel32/rsedaa.o rel32/rseday.o rel32/rsedmon.o rel32/rsedyr.o rel32/rtbact.o rel32/rtday.o rel32/rteinit.o rel32/rthmusk.o rel32/rthpest.o rel32/rthr.o rel32/rthsed.o rel32/rtmusk.o rel32/rtout.o rel32/rtpest.o rel32/rtsed.o rel32/rtsed_bagnold.o rel32/rtsed_kodatie.o rel32/rtsed_molinas_wu.o rel32/rtsed_yangsand.o rel32/sat_excess.o rel32/save.o rel32/saveconc.o rel32/schedule_ops.o rel32/sched_mgt.o rel32/simulate.o rel32/sim_initday.o rel32/sim_inityr.o rel32/slrgen.o rel32/smeas.o rel32/snom.o rel32/soil_chem.o rel32/soil_par.o rel32/soil_phys.o rel32/soil_write.o rel32/solp.o rel32/solt.o rel32/std1.o rel32/std2.o rel32/std3.o rel32/stdaa.o rel32/storeinitial.o rel32/structure.o rel32/subaa.o rel32/subbasin.o rel32/subday.o rel32/submon.o rel32/substor.o rel32/subwq.o rel32/subyr.o rel32/sub_subbasin.o rel32/sumhyd.o rel32/sumv.o rel32/surface.o rel32/surfstor.o rel32/surfst_h2o.o rel32/surq_daycn.o rel32/surq_greenampt.o rel32/swbl.o rel32/sweep.o rel32/swu.o rel32/tair.o rel32/tgen.o rel32/theta.o rel32/tillfactor.o rel32/tillmix.o rel32/tmeas.o rel32/tran.o rel32/transfer.o rel32/tstr.o rel32/ttcoef.o rel32/ttcoef_wway.o rel32/urban.o rel32/urbanhr.o rel32/urb_bmp.o rel32/varinit.o rel32/vbl.o rel32/virtual.o rel32/volq.o rel32/washp.o rel32/watbal.o rel32/water_hru.o rel32/watqual.o rel32/watqual2.o rel32/wattable.o rel32/watuse.o rel32/weatgn.o rel32/wetlan.o rel32/wmeas.o rel32/wndgen.o rel32/writea.o rel32/writeaa.o rel32/writed.o rel32/writem.o rel32/xmon.o rel32/ysed.o rel32/zero0.o rel32/zero1.o rel32/zero2.o rel32/zeroini.o rel32/zero_urbn.o

NAMEREL32=swat_rel32
rel32:rel32_mkdir ${NAMEREL32}

rel32_mkdir:
	mkdir -p rel32

${NAMEREL32}: ${OBJECTS_REL32}
	${FC} ${OBJECTS_REL32} ${ARCH64} -static -o ${NAMEREL32}


rel32/addh.o: addh.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  addh.f -o rel32/addh.o -I rel32

rel32/albedo.o: albedo.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  albedo.f -o rel32/albedo.o -I rel32

rel32/allocate_parms.o: allocate_parms.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  allocate_parms.f -o rel32/allocate_parms.o -I rel32

rel32/alph.o: alph.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  alph.f -o rel32/alph.o -I rel32

rel32/anfert.o: anfert.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  anfert.f -o rel32/anfert.o -I rel32

rel32/apex_day.o: apex_day.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  apex_day.f -o rel32/apex_day.o -I rel32

rel32/apply.o: apply.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  apply.f -o rel32/apply.o -I rel32

rel32/ascrv.o: ascrv.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ascrv.f -o rel32/ascrv.o -I rel32

rel32/atri.o: atri.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  atri.f -o rel32/atri.o -I rel32

rel32/aunif.o: aunif.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  aunif.f -o rel32/aunif.o -I rel32

rel32/autoirr.o: autoirr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  autoirr.f -o rel32/autoirr.o -I rel32

rel32/aveval.o: aveval.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  aveval.f -o rel32/aveval.o -I rel32

rel32/bacteria.o: bacteria.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bacteria.f -o rel32/bacteria.o -I rel32

rel32/biofilm.o: biofilm.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  biofilm.f -o rel32/biofilm.o -I rel32

rel32/biozone.o: biozone.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} biozone.f -o rel32/biozone.o -I rel32

rel32/bmpfixed.o: bmpfixed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmpfixed.f -o rel32/bmpfixed.o -I rel32

rel32/bmpinit.o: bmpinit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} bmpinit.f -o rel32/bmpinit.o -I rel32

rel32/bmp_det_pond.o: bmp_det_pond.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_det_pond.f -o rel32/bmp_det_pond.o -I rel32

rel32/bmp_ri_pond.o: bmp_ri_pond.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_ri_pond.f -o rel32/bmp_ri_pond.o -I rel32

rel32/bmp_sand_filter.o: bmp_sand_filter.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_sand_filter.f -o rel32/bmp_sand_filter.o -I rel32

rel32/bmp_sed_pond.o: bmp_sed_pond.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_sed_pond.f -o rel32/bmp_sed_pond.o -I rel32

rel32/bmp_wet_pond.o: bmp_wet_pond.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_wet_pond.f -o rel32/bmp_wet_pond.o -I rel32

rel32/buffer.o: buffer.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  buffer.f -o rel32/buffer.o -I rel32

rel32/burnop.o: burnop.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  burnop.f -o rel32/burnop.o -I rel32

rel32/canopyint.o: canopyint.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  canopyint.f -o rel32/canopyint.o -I rel32

rel32/caps.o: caps.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  caps.f -o rel32/caps.o -I rel32

rel32/carbon_new.o: carbon_new.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  carbon_new.f -o rel32/carbon_new.o -I rel32

rel32/carbon_zhang2.o: carbon_zhang2.f90 rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFREE} carbon_zhang2.f90 -o rel32/carbon_zhang2.o -I rel32

rel32/cfactor.o: cfactor.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  cfactor.f -o rel32/cfactor.o -I rel32

rel32/chkcst.o: chkcst.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  chkcst.f -o rel32/chkcst.o -I rel32

rel32/clgen.o: clgen.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  clgen.f -o rel32/clgen.o -I rel32

rel32/clicon.o: clicon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  clicon.f -o rel32/clicon.o -I rel32

rel32/command.o: command.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  command.f -o rel32/command.o -I rel32

rel32/conapply.o: conapply.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  conapply.f -o rel32/conapply.o -I rel32

rel32/confert.o: confert.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  confert.f -o rel32/confert.o -I rel32

rel32/crackflow.o: crackflow.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  crackflow.f -o rel32/crackflow.o -I rel32

rel32/crackvol.o: crackvol.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  crackvol.f -o rel32/crackvol.o -I rel32

rel32/curno.o: curno.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  curno.f -o rel32/curno.o -I rel32

rel32/dailycn.o: dailycn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  dailycn.f -o rel32/dailycn.o -I rel32

rel32/decay.o: decay.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  decay.f -o rel32/decay.o -I rel32

rel32/depstor.o: depstor.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  depstor.f -o rel32/depstor.o -I rel32

rel32/distrib_bmps.o: distrib_bmps.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  distrib_bmps.f -o rel32/distrib_bmps.o -I rel32

rel32/dormant.o: dormant.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  dormant.f -o rel32/dormant.o -I rel32

rel32/drains.o: drains.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  drains.f -o rel32/drains.o -I rel32

rel32/dstn1.o: dstn1.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  dstn1.f -o rel32/dstn1.o -I rel32

rel32/ee.o: ee.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ee.f -o rel32/ee.o -I rel32

rel32/eiusle.o: eiusle.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  eiusle.f -o rel32/eiusle.o -I rel32

rel32/enrsb.o: enrsb.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  enrsb.f -o rel32/enrsb.o -I rel32

rel32/erfc.o: erfc.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  erfc.f -o rel32/erfc.o -I rel32

rel32/estimate_ksat.o: estimate_ksat.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  estimate_ksat.f -o rel32/estimate_ksat.o -I rel32

rel32/etact.o: etact.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  etact.f -o rel32/etact.o -I rel32

rel32/etpot.o: etpot.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  etpot.f -o rel32/etpot.o -I rel32

rel32/expo.o: expo.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  expo.f -o rel32/expo.o -I rel32

rel32/fert.o: fert.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  fert.f -o rel32/fert.o -I rel32

rel32/filter.o: filter.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  filter.f -o rel32/filter.o -I rel32

rel32/filtw.o: filtw.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  filtw.f -o rel32/filtw.o -I rel32

rel32/finalbal.o: finalbal.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  finalbal.f -o rel32/finalbal.o -I rel32

rel32/gcycl.o: gcycl.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gcycl.f -o rel32/gcycl.o -I rel32

rel32/getallo.o: getallo.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  getallo.f -o rel32/getallo.o -I rel32

rel32/grass_wway.o: grass_wway.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  grass_wway.f -o rel32/grass_wway.o -I rel32

rel32/graze.o: graze.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  graze.f -o rel32/graze.o -I rel32

rel32/grow.o: grow.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  grow.f -o rel32/grow.o -I rel32

rel32/gwmod.o: gwmod.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gwmod.f -o rel32/gwmod.o -I rel32

rel32/gwmod_deep.o: gwmod_deep.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gwmod_deep.f -o rel32/gwmod_deep.o -I rel32

rel32/gwnutr.o: gwnutr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gwnutr.f -o rel32/gwnutr.o -I rel32

rel32/gw_no3.o: gw_no3.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gw_no3.f -o rel32/gw_no3.o -I rel32

rel32/h2omgt_init.o: h2omgt_init.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  h2omgt_init.f -o rel32/h2omgt_init.o -I rel32

rel32/harvestop.o: harvestop.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  harvestop.f -o rel32/harvestop.o -I rel32

rel32/harvgrainop.o: harvgrainop.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  harvgrainop.f -o rel32/harvgrainop.o -I rel32

rel32/harvkillop.o: harvkillop.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  harvkillop.f -o rel32/harvkillop.o -I rel32

rel32/header.o: header.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  header.f -o rel32/header.o -I rel32

rel32/headout.o: headout.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  headout.f -o rel32/headout.o -I rel32

rel32/hhnoqual.o: hhnoqual.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hhnoqual.f -o rel32/hhnoqual.o -I rel32

rel32/hhwatqual.o: hhwatqual.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hhwatqual.f -o rel32/hhwatqual.o -I rel32

rel32/hmeas.o: hmeas.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hmeas.f -o rel32/hmeas.o -I rel32

rel32/hruaa.o: hruaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruaa.f -o rel32/hruaa.o -I rel32

rel32/hruallo.o: hruallo.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruallo.f -o rel32/hruallo.o -I rel32

rel32/hruday.o: hruday.f90 rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruday.f90 -o rel32/hruday.o -I rel32

rel32/hrumon.o: hrumon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hrumon.f -o rel32/hrumon.o -I rel32

rel32/hrupond.o: hrupond.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hrupond.f -o rel32/hrupond.o -I rel32

rel32/hrupondhr.o: hrupondhr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hrupondhr.f -o rel32/hrupondhr.o -I rel32

rel32/hruyr.o: hruyr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruyr.f -o rel32/hruyr.o -I rel32

rel32/hydroinit.o: hydroinit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hydroinit.f -o rel32/hydroinit.o -I rel32

rel32/icl.o: icl.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  icl.f -o rel32/icl.o -I rel32

rel32/impndaa.o: impndaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndaa.f -o rel32/impndaa.o -I rel32

rel32/impndday.o: impndday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndday.f -o rel32/impndday.o -I rel32

rel32/impndmon.o: impndmon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndmon.f -o rel32/impndmon.o -I rel32

rel32/impndyr.o: impndyr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndyr.f -o rel32/impndyr.o -I rel32

rel32/impnd_init.o: impnd_init.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impnd_init.f -o rel32/impnd_init.o -I rel32

rel32/irrigate.o: irrigate.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irrigate.f -o rel32/irrigate.o -I rel32

rel32/irrsub.o: irrsub.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irrsub.f -o rel32/irrsub.o -I rel32

rel32/irr_rch.o: irr_rch.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irr_rch.f -o rel32/irr_rch.o -I rel32

rel32/irr_res.o: irr_res.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irr_res.f -o rel32/irr_res.o -I rel32

rel32/jdt.o: jdt.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  jdt.f -o rel32/jdt.o -I rel32

rel32/killop.o: killop.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  killop.f -o rel32/killop.o -I rel32

rel32/lakeq.o: lakeq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  lakeq.f -o rel32/lakeq.o -I rel32

rel32/latsed.o: latsed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  latsed.f -o rel32/latsed.o -I rel32

rel32/layersplit.o: layersplit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  layersplit.f -o rel32/layersplit.o -I rel32

rel32/lwqdef.o: lwqdef.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  lwqdef.f -o rel32/lwqdef.o -I rel32

rel32/main.o: main.f modparm.f
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} main.f -o rel32/main.o -J rel32

rel32/ncsed_leach.o: NCsed_leach.f90 rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  NCsed_leach.f90 -o rel32/ncsed_leach.o -I rel32

rel32/ndenit.o: ndenit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ndenit.f -o rel32/ndenit.o -I rel32

rel32/newtillmix.o: newtillmix.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  newtillmix.f -o rel32/newtillmix.o -I rel32

rel32/nfix.o: nfix.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nfix.f -o rel32/nfix.o -I rel32

rel32/nitvol.o: nitvol.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nitvol.f -o rel32/nitvol.o -I rel32

rel32/nlch.o: nlch.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nlch.f -o rel32/nlch.o -I rel32

rel32/nminrl.o: nminrl.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nminrl.f -o rel32/nminrl.o -I rel32

rel32/noqual.o: noqual.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  noqual.f -o rel32/noqual.o -I rel32

rel32/npup.o: npup.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  npup.f -o rel32/npup.o -I rel32

rel32/nrain.o: nrain.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nrain.f -o rel32/nrain.o -I rel32

rel32/nup.o: nup.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nup.f -o rel32/nup.o -I rel32

rel32/nuts.o: nuts.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nuts.f -o rel32/nuts.o -I rel32

rel32/openwth.o: openwth.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  openwth.f -o rel32/openwth.o -I rel32

rel32/operatn.o: operatn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  operatn.f -o rel32/operatn.o -I rel32

rel32/orgn.o: orgn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  orgn.f -o rel32/orgn.o -I rel32

rel32/orgncswat.o: orgncswat.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  orgncswat.f -o rel32/orgncswat.o -I rel32

rel32/origtile.o: origtile.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  origtile.f -o rel32/origtile.o -I rel32

rel32/ovr_sed.o: ovr_sed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} ovr_sed.f -o rel32/ovr_sed.o -I rel32

rel32/percmacro.o: percmacro.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  percmacro.f -o rel32/percmacro.o -I rel32

rel32/percmain.o: percmain.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} percmain.f -o rel32/percmain.o -I rel32

rel32/percmicro.o: percmicro.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  percmicro.f -o rel32/percmicro.o -I rel32

rel32/pestlch.o: pestlch.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pestlch.f -o rel32/pestlch.o -I rel32

rel32/pestw.o: pestw.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pestw.f -o rel32/pestw.o -I rel32

rel32/pesty.o: pesty.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pesty.f -o rel32/pesty.o -I rel32

rel32/pgen.o: pgen.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pgen.f -o rel32/pgen.o -I rel32

rel32/pgenhr.o: pgenhr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pgenhr.f -o rel32/pgenhr.o -I rel32

rel32/pkq.o: pkq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pkq.f -o rel32/pkq.o -I rel32

rel32/plantmod.o: plantmod.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  plantmod.f -o rel32/plantmod.o -I rel32

rel32/plantop.o: plantop.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  plantop.f -o rel32/plantop.o -I rel32

rel32/pmeas.o: pmeas.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pmeas.f -o rel32/pmeas.o -I rel32

rel32/pminrl.o: pminrl.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pminrl.f -o rel32/pminrl.o -I rel32

rel32/pminrl2.o: pminrl2.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pminrl2.f -o rel32/pminrl2.o -I rel32

rel32/pond.o: pond.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pond.f -o rel32/pond.o -I rel32

rel32/pondhr.o: pondhr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pondhr.f -o rel32/pondhr.o -I rel32

rel32/pothole.o: pothole.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pothole.f -o rel32/pothole.o -I rel32

rel32/potholehr.o: potholehr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  potholehr.f -o rel32/potholehr.o -I rel32

rel32/print_hyd.o: print_hyd.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  print_hyd.f -o rel32/print_hyd.o -I rel32

rel32/psed.o: psed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  psed.f -o rel32/psed.o -I rel32

rel32/qman.o: qman.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  qman.f -o rel32/qman.o -I rel32

rel32/ran1.o: ran1.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ran1.f -o rel32/ran1.o -I rel32

rel32/rchaa.o: rchaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchaa.f -o rel32/rchaa.o -I rel32

rel32/rchday.o: rchday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchday.f -o rel32/rchday.o -I rel32

rel32/rchinit.o: rchinit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchinit.f -o rel32/rchinit.o -I rel32

rel32/rchmon.o: rchmon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchmon.f -o rel32/rchmon.o -I rel32

rel32/rchuse.o: rchuse.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchuse.f -o rel32/rchuse.o -I rel32

rel32/rchyr.o: rchyr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchyr.f -o rel32/rchyr.o -I rel32

rel32/reachout.o: reachout.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  reachout.f -o rel32/reachout.o -I rel32

rel32/readatmodep.o: readatmodep.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readatmodep.f -o rel32/readatmodep.o -I rel32

rel32/readbsn.o: readbsn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readbsn.f -o rel32/readbsn.o -I rel32

rel32/readchm.o: readchm.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readchm.f -o rel32/readchm.o -I rel32

rel32/readcnst.o: readcnst.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readcnst.f -o rel32/readcnst.o -I rel32

rel32/readfcst.o: readfcst.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfcst.f -o rel32/readfcst.o -I rel32

rel32/readfert.o: readfert.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfert.f -o rel32/readfert.o -I rel32

rel32/readfig.o: readfig.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfig.f -o rel32/readfig.o -I rel32

rel32/readfile.o: readfile.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfile.f -o rel32/readfile.o -I rel32

rel32/readgw.o: readgw.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readgw.f -o rel32/readgw.o -I rel32

rel32/readhru.o: readhru.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readhru.f -o rel32/readhru.o -I rel32

rel32/readinpt.o: readinpt.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readinpt.f -o rel32/readinpt.o -I rel32

rel32/readlup.o: readlup.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readlup.f -o rel32/readlup.o -I rel32

rel32/readlwq.o: readlwq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readlwq.f -o rel32/readlwq.o -I rel32

rel32/readmgt.o: readmgt.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readmgt.f -o rel32/readmgt.o -I rel32

rel32/readmon.o: readmon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readmon.f -o rel32/readmon.o -I rel32

rel32/readops.o: readops.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readops.f -o rel32/readops.o -I rel32

rel32/readpest.o: readpest.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readpest.f -o rel32/readpest.o -I rel32

rel32/readplant.o: readplant.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readplant.f -o rel32/readplant.o -I rel32

rel32/readpnd.o: readpnd.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readpnd.f -o rel32/readpnd.o -I rel32

rel32/readres.o: readres.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readres.f -o rel32/readres.o -I rel32

rel32/readrte.o: readrte.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readrte.f -o rel32/readrte.o -I rel32

rel32/readru.o: readru.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readru.f -o rel32/readru.o -I rel32

rel32/readsdr.o: readsdr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsdr.f -o rel32/readsdr.o -I rel32

rel32/readsepticbz.o: readsepticbz.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsepticbz.f -o rel32/readsepticbz.o -I rel32

rel32/readseptwq.o: readseptwq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readseptwq.f -o rel32/readseptwq.o -I rel32

rel32/readsno.o: readsno.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsno.f -o rel32/readsno.o -I rel32

rel32/readsol.o: readsol.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsol.f -o rel32/readsol.o -I rel32

rel32/readsub.o: readsub.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsub.f -o rel32/readsub.o -I rel32

rel32/readswq.o: readswq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readswq.f -o rel32/readswq.o -I rel32

rel32/readtill.o: readtill.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readtill.f -o rel32/readtill.o -I rel32

rel32/readurban.o: readurban.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readurban.f -o rel32/readurban.o -I rel32

rel32/readwgn.o: readwgn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readwgn.f -o rel32/readwgn.o -I rel32

rel32/readwus.o: readwus.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readwus.f -o rel32/readwus.o -I rel32

rel32/readwwq.o: readwwq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readwwq.f -o rel32/readwwq.o -I rel32

rel32/readyr.o: readyr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readyr.f -o rel32/readyr.o -I rel32

rel32/reccnst.o: reccnst.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  reccnst.f -o rel32/reccnst.o -I rel32

rel32/recday.o: recday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  recday.f -o rel32/recday.o -I rel32

rel32/rechour.o: rechour.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rechour.f -o rel32/rechour.o -I rel32

rel32/recmon.o: recmon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  recmon.f -o rel32/recmon.o -I rel32

rel32/recyear.o: recyear.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  recyear.f -o rel32/recyear.o -I rel32

rel32/regres.o: regres.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  regres.f -o rel32/regres.o -I rel32

rel32/res.o: res.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  res.f -o rel32/res.o -I rel32

rel32/resbact.o: resbact.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resbact.f -o rel32/resbact.o -I rel32

rel32/resetlu.o: resetlu.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resetlu.f -o rel32/resetlu.o -I rel32

rel32/reshr.o: reshr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  reshr.f -o rel32/reshr.o -I rel32

rel32/resinit.o: resinit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resinit.f -o rel32/resinit.o -I rel32

rel32/resnut.o: resnut.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resnut.f -o rel32/resnut.o -I rel32

rel32/rewind_init.o: rewind_init.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rewind_init.f -o rel32/rewind_init.o -I rel32

rel32/rhgen.o: rhgen.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rhgen.f -o rel32/rhgen.o -I rel32

rel32/rootfr.o: rootfr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rootfr.f -o rel32/rootfr.o -I rel32

rel32/route.o: route.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  route.f -o rel32/route.o -I rel32

rel32/routels.o: routels.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  routels.f -o rel32/routels.o -I rel32

rel32/routeunit.o: routeunit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  routeunit.f -o rel32/routeunit.o -I rel32

rel32/routres.o: routres.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  routres.f -o rel32/routres.o -I rel32

rel32/rsedaa.o: rsedaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rsedaa.f -o rel32/rsedaa.o -I rel32

rel32/rseday.o: rseday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rseday.f -o rel32/rseday.o -I rel32

rel32/rsedmon.o: rsedmon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rsedmon.f -o rel32/rsedmon.o -I rel32

rel32/rsedyr.o: rsedyr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rsedyr.f -o rel32/rsedyr.o -I rel32

rel32/rtbact.o: rtbact.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtbact.f -o rel32/rtbact.o -I rel32

rel32/rtday.o: rtday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtday.f -o rel32/rtday.o -I rel32

rel32/rteinit.o: rteinit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rteinit.f -o rel32/rteinit.o -I rel32

rel32/rthmusk.o: rthmusk.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rthmusk.f -o rel32/rthmusk.o -I rel32

rel32/rthpest.o: rthpest.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rthpest.f -o rel32/rthpest.o -I rel32

rel32/rthr.o: rthr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rthr.f -o rel32/rthr.o -I rel32

rel32/rthsed.o: rthsed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} rthsed.f -o rel32/rthsed.o -I rel32

rel32/rtmusk.o: rtmusk.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtmusk.f -o rel32/rtmusk.o -I rel32

rel32/rtout.o: rtout.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtout.f -o rel32/rtout.o -I rel32

rel32/rtpest.o: rtpest.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtpest.f -o rel32/rtpest.o -I rel32

rel32/rtsed.o: rtsed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed.f -o rel32/rtsed.o -I rel32

rel32/rtsed_bagnold.o: rtsed_bagnold.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_bagnold.f -o rel32/rtsed_bagnold.o -I rel32

rel32/rtsed_kodatie.o: rtsed_kodatie.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_kodatie.f -o rel32/rtsed_kodatie.o -I rel32

rel32/rtsed_molinas_wu.o: rtsed_Molinas_Wu.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_Molinas_Wu.f -o rel32/rtsed_molinas_wu.o -I rel32

rel32/rtsed_yangsand.o: rtsed_yangsand.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_yangsand.f -o rel32/rtsed_yangsand.o -I rel32

rel32/sat_excess.o: sat_excess.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sat_excess.f -o rel32/sat_excess.o -I rel32

rel32/save.o: save.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  save.f -o rel32/save.o -I rel32

rel32/saveconc.o: saveconc.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  saveconc.f -o rel32/saveconc.o -I rel32

rel32/schedule_ops.o: schedule_ops.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  schedule_ops.f -o rel32/schedule_ops.o -I rel32

rel32/sched_mgt.o: sched_mgt.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sched_mgt.f -o rel32/sched_mgt.o -I rel32

rel32/simulate.o: simulate.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  simulate.f -o rel32/simulate.o -I rel32

rel32/sim_initday.o: sim_initday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sim_initday.f -o rel32/sim_initday.o -I rel32

rel32/sim_inityr.o: sim_inityr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sim_inityr.f -o rel32/sim_inityr.o -I rel32

rel32/slrgen.o: slrgen.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  slrgen.f -o rel32/slrgen.o -I rel32

rel32/smeas.o: smeas.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  smeas.f -o rel32/smeas.o -I rel32

rel32/snom.o: snom.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  snom.f -o rel32/snom.o -I rel32

rel32/soil_chem.o: soil_chem.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_chem.f -o rel32/soil_chem.o -I rel32

rel32/soil_par.o: soil_par.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_par.f -o rel32/soil_par.o -I rel32

rel32/soil_phys.o: soil_phys.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_phys.f -o rel32/soil_phys.o -I rel32

rel32/soil_write.o: soil_write.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_write.f -o rel32/soil_write.o -I rel32

rel32/solp.o: solp.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  solp.f -o rel32/solp.o -I rel32

rel32/solt.o: solt.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  solt.f -o rel32/solt.o -I rel32

rel32/std1.o: std1.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  std1.f -o rel32/std1.o -I rel32

rel32/std2.o: std2.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  std2.f -o rel32/std2.o -I rel32

rel32/std3.o: std3.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  std3.f -o rel32/std3.o -I rel32

rel32/stdaa.o: stdaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  stdaa.f -o rel32/stdaa.o -I rel32

rel32/storeinitial.o: storeinitial.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  storeinitial.f -o rel32/storeinitial.o -I rel32

rel32/structure.o: structure.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  structure.f -o rel32/structure.o -I rel32

rel32/subaa.o: subaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subaa.f -o rel32/subaa.o -I rel32

rel32/subbasin.o: subbasin.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subbasin.f -o rel32/subbasin.o -I rel32

rel32/subday.o: subday.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subday.f -o rel32/subday.o -I rel32

rel32/submon.o: submon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  submon.f -o rel32/submon.o -I rel32

rel32/substor.o: substor.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  substor.f -o rel32/substor.o -I rel32

rel32/subwq.o: subwq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subwq.f -o rel32/subwq.o -I rel32

rel32/subyr.o: subyr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subyr.f -o rel32/subyr.o -I rel32

rel32/sub_subbasin.o: sub_subbasin.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sub_subbasin.f -o rel32/sub_subbasin.o -I rel32

rel32/sumhyd.o: sumhyd.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sumhyd.f -o rel32/sumhyd.o -I rel32

rel32/sumv.o: sumv.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sumv.f -o rel32/sumv.o -I rel32

rel32/surface.o: surface.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surface.f -o rel32/surface.o -I rel32

rel32/surfstor.o: surfstor.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surfstor.f -o rel32/surfstor.o -I rel32

rel32/surfst_h2o.o: surfst_h2o.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surfst_h2o.f -o rel32/surfst_h2o.o -I rel32

rel32/surq_daycn.o: surq_daycn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surq_daycn.f -o rel32/surq_daycn.o -I rel32

rel32/surq_greenampt.o: surq_greenampt.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surq_greenampt.f -o rel32/surq_greenampt.o -I rel32

rel32/swbl.o: swbl.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  swbl.f -o rel32/swbl.o -I rel32

rel32/sweep.o: sweep.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sweep.f -o rel32/sweep.o -I rel32

rel32/swu.o: swu.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  swu.f -o rel32/swu.o -I rel32

rel32/tair.o: tair.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tair.f -o rel32/tair.o -I rel32

rel32/tgen.o: tgen.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tgen.f -o rel32/tgen.o -I rel32

rel32/theta.o: theta.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  theta.f -o rel32/theta.o -I rel32

rel32/tillfactor.o: tillfactor.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tillfactor.f -o rel32/tillfactor.o -I rel32

rel32/tillmix.o: tillmix.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tillmix.f -o rel32/tillmix.o -I rel32

rel32/tmeas.o: tmeas.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tmeas.f -o rel32/tmeas.o -I rel32

rel32/tran.o: tran.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tran.f -o rel32/tran.o -I rel32

rel32/transfer.o: transfer.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  transfer.f -o rel32/transfer.o -I rel32

rel32/tstr.o: tstr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tstr.f -o rel32/tstr.o -I rel32

rel32/ttcoef.o: ttcoef.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ttcoef.f -o rel32/ttcoef.o -I rel32

rel32/ttcoef_wway.o: ttcoef_wway.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ttcoef_wway.f -o rel32/ttcoef_wway.o -I rel32

rel32/urban.o: urban.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  urban.f -o rel32/urban.o -I rel32

rel32/urbanhr.o: urbanhr.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  urbanhr.f -o rel32/urbanhr.o -I rel32

rel32/urb_bmp.o: urb_bmp.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  urb_bmp.f -o rel32/urb_bmp.o -I rel32

rel32/varinit.o: varinit.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  varinit.f -o rel32/varinit.o -I rel32

rel32/vbl.o: vbl.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  vbl.f -o rel32/vbl.o -I rel32

rel32/virtual.o: virtual.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  virtual.f -o rel32/virtual.o -I rel32

rel32/volq.o: volq.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  volq.f -o rel32/volq.o -I rel32

rel32/washp.o: washp.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  washp.f -o rel32/washp.o -I rel32

rel32/watbal.o: watbal.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watbal.f -o rel32/watbal.o -I rel32

rel32/water_hru.o: water_hru.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  water_hru.f -o rel32/water_hru.o -I rel32

rel32/watqual.o: watqual.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watqual.f -o rel32/watqual.o -I rel32

rel32/watqual2.o: watqual2.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watqual2.f -o rel32/watqual2.o -I rel32

rel32/wattable.o: wattable.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wattable.f -o rel32/wattable.o -I rel32

rel32/watuse.o: watuse.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watuse.f -o rel32/watuse.o -I rel32

rel32/weatgn.o: weatgn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  weatgn.f -o rel32/weatgn.o -I rel32

rel32/wetlan.o: wetlan.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wetlan.f -o rel32/wetlan.o -I rel32

rel32/wmeas.o: wmeas.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wmeas.f -o rel32/wmeas.o -I rel32

rel32/wndgen.o: wndgen.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wndgen.f -o rel32/wndgen.o -I rel32

rel32/writea.o: writea.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writea.f -o rel32/writea.o -I rel32

rel32/writeaa.o: writeaa.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writeaa.f -o rel32/writeaa.o -I rel32

rel32/writed.o: writed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writed.f -o rel32/writed.o -I rel32

rel32/writem.o: writem.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writem.f -o rel32/writem.o -I rel32

rel32/xmon.o: xmon.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  xmon.f -o rel32/xmon.o -I rel32

rel32/ysed.o: ysed.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ysed.f -o rel32/ysed.o -I rel32

rel32/zero0.o: zero0.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero0.f -o rel32/zero0.o -I rel32

rel32/zero1.o: zero1.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero1.f -o rel32/zero1.o -I rel32

rel32/zero2.o: zero2.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero2.f -o rel32/zero2.o -I rel32

rel32/zeroini.o: zeroini.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zeroini.f -o rel32/zeroini.o -I rel32

rel32/zero_urbn.o: zero_urbn.f rel32/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero_urbn.f -o rel32/zero_urbn.o -I rel32

rel32_clean:
	rm -f ${NAMEREL32}.exe
	rm -f rel32/*.o
	rm -f rel32/*.mod
	rm -f rel32/*~

OBJECTS_REL64=  rel64/addh.o rel64/albedo.o rel64/allocate_parms.o rel64/alph.o rel64/anfert.o rel64/apex_day.o rel64/apply.o rel64/ascrv.o rel64/atri.o rel64/aunif.o rel64/autoirr.o rel64/aveval.o rel64/bacteria.o rel64/biofilm.o rel64/biozone.o rel64/bmpfixed.o rel64/bmpinit.o rel64/bmp_det_pond.o rel64/bmp_ri_pond.o rel64/bmp_sand_filter.o rel64/bmp_sed_pond.o rel64/bmp_wet_pond.o rel64/buffer.o rel64/burnop.o rel64/canopyint.o rel64/caps.o rel64/carbon_new.o rel64/carbon_zhang2.o rel64/cfactor.o rel64/chkcst.o rel64/clgen.o rel64/clicon.o rel64/command.o rel64/conapply.o rel64/confert.o rel64/crackflow.o rel64/crackvol.o rel64/curno.o rel64/dailycn.o rel64/decay.o rel64/depstor.o rel64/distrib_bmps.o rel64/dormant.o rel64/drains.o rel64/dstn1.o rel64/ee.o rel64/eiusle.o rel64/enrsb.o rel64/erfc.o rel64/estimate_ksat.o rel64/etact.o rel64/etpot.o rel64/expo.o rel64/fert.o rel64/filter.o rel64/filtw.o rel64/finalbal.o rel64/gcycl.o rel64/getallo.o rel64/grass_wway.o rel64/graze.o rel64/grow.o rel64/gwmod.o rel64/gwmod_deep.o rel64/gwnutr.o rel64/gw_no3.o rel64/h2omgt_init.o rel64/harvestop.o rel64/harvgrainop.o rel64/harvkillop.o rel64/header.o rel64/headout.o rel64/hhnoqual.o rel64/hhwatqual.o rel64/hmeas.o rel64/hruaa.o rel64/hruallo.o rel64/hruday.o rel64/hrumon.o rel64/hrupond.o rel64/hrupondhr.o rel64/hruyr.o rel64/hydroinit.o rel64/icl.o rel64/impndaa.o rel64/impndday.o rel64/impndmon.o rel64/impndyr.o rel64/impnd_init.o rel64/irrigate.o rel64/irrsub.o rel64/irr_rch.o rel64/irr_res.o rel64/jdt.o rel64/killop.o rel64/lakeq.o rel64/latsed.o rel64/layersplit.o rel64/lwqdef.o rel64/main.o rel64/ncsed_leach.o rel64/ndenit.o rel64/newtillmix.o rel64/nfix.o rel64/nitvol.o rel64/nlch.o rel64/nminrl.o rel64/noqual.o rel64/npup.o rel64/nrain.o rel64/nup.o rel64/nuts.o rel64/openwth.o rel64/operatn.o rel64/orgn.o rel64/orgncswat.o rel64/origtile.o rel64/ovr_sed.o rel64/percmacro.o rel64/percmain.o rel64/percmicro.o rel64/pestlch.o rel64/pestw.o rel64/pesty.o rel64/pgen.o rel64/pgenhr.o rel64/pkq.o rel64/plantmod.o rel64/plantop.o rel64/pmeas.o rel64/pminrl.o rel64/pminrl2.o rel64/pond.o rel64/pondhr.o rel64/pothole.o rel64/potholehr.o rel64/print_hyd.o rel64/psed.o rel64/qman.o rel64/ran1.o rel64/rchaa.o rel64/rchday.o rel64/rchinit.o rel64/rchmon.o rel64/rchuse.o rel64/rchyr.o rel64/reachout.o rel64/readatmodep.o rel64/readbsn.o rel64/readchm.o rel64/readcnst.o rel64/readfcst.o rel64/readfert.o rel64/readfig.o rel64/readfile.o rel64/readgw.o rel64/readhru.o rel64/readinpt.o rel64/readlup.o rel64/readlwq.o rel64/readmgt.o rel64/readmon.o rel64/readops.o rel64/readpest.o rel64/readplant.o rel64/readpnd.o rel64/readres.o rel64/readrte.o rel64/readru.o rel64/readsdr.o rel64/readsepticbz.o rel64/readseptwq.o rel64/readsno.o rel64/readsol.o rel64/readsub.o rel64/readswq.o rel64/readtill.o rel64/readurban.o rel64/readwgn.o rel64/readwus.o rel64/readwwq.o rel64/readyr.o rel64/reccnst.o rel64/recday.o rel64/rechour.o rel64/recmon.o rel64/recyear.o rel64/regres.o rel64/res.o rel64/resbact.o rel64/resetlu.o rel64/reshr.o rel64/resinit.o rel64/resnut.o rel64/rewind_init.o rel64/rhgen.o rel64/rootfr.o rel64/route.o rel64/routels.o rel64/routeunit.o rel64/routres.o rel64/rsedaa.o rel64/rseday.o rel64/rsedmon.o rel64/rsedyr.o rel64/rtbact.o rel64/rtday.o rel64/rteinit.o rel64/rthmusk.o rel64/rthpest.o rel64/rthr.o rel64/rthsed.o rel64/rtmusk.o rel64/rtout.o rel64/rtpest.o rel64/rtsed.o rel64/rtsed_bagnold.o rel64/rtsed_kodatie.o rel64/rtsed_molinas_wu.o rel64/rtsed_yangsand.o rel64/sat_excess.o rel64/save.o rel64/saveconc.o rel64/schedule_ops.o rel64/sched_mgt.o rel64/simulate.o rel64/sim_initday.o rel64/sim_inityr.o rel64/slrgen.o rel64/smeas.o rel64/snom.o rel64/soil_chem.o rel64/soil_par.o rel64/soil_phys.o rel64/soil_write.o rel64/solp.o rel64/solt.o rel64/std1.o rel64/std2.o rel64/std3.o rel64/stdaa.o rel64/storeinitial.o rel64/structure.o rel64/subaa.o rel64/subbasin.o rel64/subday.o rel64/submon.o rel64/substor.o rel64/subwq.o rel64/subyr.o rel64/sub_subbasin.o rel64/sumhyd.o rel64/sumv.o rel64/surface.o rel64/surfstor.o rel64/surfst_h2o.o rel64/surq_daycn.o rel64/surq_greenampt.o rel64/swbl.o rel64/sweep.o rel64/swu.o rel64/tair.o rel64/tgen.o rel64/theta.o rel64/tillfactor.o rel64/tillmix.o rel64/tmeas.o rel64/tran.o rel64/transfer.o rel64/tstr.o rel64/ttcoef.o rel64/ttcoef_wway.o rel64/urban.o rel64/urbanhr.o rel64/urb_bmp.o rel64/varinit.o rel64/vbl.o rel64/virtual.o rel64/volq.o rel64/washp.o rel64/watbal.o rel64/water_hru.o rel64/watqual.o rel64/watqual2.o rel64/wattable.o rel64/watuse.o rel64/weatgn.o rel64/wetlan.o rel64/wmeas.o rel64/wndgen.o rel64/writea.o rel64/writeaa.o rel64/writed.o rel64/writem.o rel64/xmon.o rel64/ysed.o rel64/zero0.o rel64/zero1.o rel64/zero2.o rel64/zeroini.o rel64/zero_urbn.o

NAMEREL64=swat_rel64
rel64:rel64_mkdir ${NAMEREL64}

rel64_mkdir:
	mkdir -p rel64

${NAMEREL64}: ${OBJECTS_REL64}
	${FC} ${OBJECTS_REL64} ${ARCH64} -static -o ${NAMEREL64}


rel64/addh.o: addh.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  addh.f -o rel64/addh.o -I rel64

rel64/albedo.o: albedo.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  albedo.f -o rel64/albedo.o -I rel64

rel64/allocate_parms.o: allocate_parms.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  allocate_parms.f -o rel64/allocate_parms.o -I rel64

rel64/alph.o: alph.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  alph.f -o rel64/alph.o -I rel64

rel64/anfert.o: anfert.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  anfert.f -o rel64/anfert.o -I rel64

rel64/apex_day.o: apex_day.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  apex_day.f -o rel64/apex_day.o -I rel64

rel64/apply.o: apply.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  apply.f -o rel64/apply.o -I rel64

rel64/ascrv.o: ascrv.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ascrv.f -o rel64/ascrv.o -I rel64

rel64/atri.o: atri.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  atri.f -o rel64/atri.o -I rel64

rel64/aunif.o: aunif.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  aunif.f -o rel64/aunif.o -I rel64

rel64/autoirr.o: autoirr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  autoirr.f -o rel64/autoirr.o -I rel64

rel64/aveval.o: aveval.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  aveval.f -o rel64/aveval.o -I rel64

rel64/bacteria.o: bacteria.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bacteria.f -o rel64/bacteria.o -I rel64

rel64/biofilm.o: biofilm.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  biofilm.f -o rel64/biofilm.o -I rel64

rel64/biozone.o: biozone.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} biozone.f -o rel64/biozone.o -I rel64

rel64/bmpfixed.o: bmpfixed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmpfixed.f -o rel64/bmpfixed.o -I rel64

rel64/bmpinit.o: bmpinit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} bmpinit.f -o rel64/bmpinit.o -I rel64

rel64/bmp_det_pond.o: bmp_det_pond.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_det_pond.f -o rel64/bmp_det_pond.o -I rel64

rel64/bmp_ri_pond.o: bmp_ri_pond.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_ri_pond.f -o rel64/bmp_ri_pond.o -I rel64

rel64/bmp_sand_filter.o: bmp_sand_filter.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_sand_filter.f -o rel64/bmp_sand_filter.o -I rel64

rel64/bmp_sed_pond.o: bmp_sed_pond.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_sed_pond.f -o rel64/bmp_sed_pond.o -I rel64

rel64/bmp_wet_pond.o: bmp_wet_pond.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  bmp_wet_pond.f -o rel64/bmp_wet_pond.o -I rel64

rel64/buffer.o: buffer.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  buffer.f -o rel64/buffer.o -I rel64

rel64/burnop.o: burnop.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  burnop.f -o rel64/burnop.o -I rel64

rel64/canopyint.o: canopyint.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  canopyint.f -o rel64/canopyint.o -I rel64

rel64/caps.o: caps.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  caps.f -o rel64/caps.o -I rel64

rel64/carbon_new.o: carbon_new.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  carbon_new.f -o rel64/carbon_new.o -I rel64

rel64/carbon_zhang2.o: carbon_zhang2.f90 rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFREE} carbon_zhang2.f90 -o rel64/carbon_zhang2.o -I rel64

rel64/cfactor.o: cfactor.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  cfactor.f -o rel64/cfactor.o -I rel64

rel64/chkcst.o: chkcst.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  chkcst.f -o rel64/chkcst.o -I rel64

rel64/clgen.o: clgen.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  clgen.f -o rel64/clgen.o -I rel64

rel64/clicon.o: clicon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  clicon.f -o rel64/clicon.o -I rel64

rel64/command.o: command.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  command.f -o rel64/command.o -I rel64

rel64/conapply.o: conapply.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  conapply.f -o rel64/conapply.o -I rel64

rel64/confert.o: confert.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  confert.f -o rel64/confert.o -I rel64

rel64/crackflow.o: crackflow.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  crackflow.f -o rel64/crackflow.o -I rel64

rel64/crackvol.o: crackvol.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  crackvol.f -o rel64/crackvol.o -I rel64

rel64/curno.o: curno.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  curno.f -o rel64/curno.o -I rel64

rel64/dailycn.o: dailycn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  dailycn.f -o rel64/dailycn.o -I rel64

rel64/decay.o: decay.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  decay.f -o rel64/decay.o -I rel64

rel64/depstor.o: depstor.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  depstor.f -o rel64/depstor.o -I rel64

rel64/distrib_bmps.o: distrib_bmps.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  distrib_bmps.f -o rel64/distrib_bmps.o -I rel64

rel64/dormant.o: dormant.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  dormant.f -o rel64/dormant.o -I rel64

rel64/drains.o: drains.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  drains.f -o rel64/drains.o -I rel64

rel64/dstn1.o: dstn1.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  dstn1.f -o rel64/dstn1.o -I rel64

rel64/ee.o: ee.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ee.f -o rel64/ee.o -I rel64

rel64/eiusle.o: eiusle.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  eiusle.f -o rel64/eiusle.o -I rel64

rel64/enrsb.o: enrsb.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  enrsb.f -o rel64/enrsb.o -I rel64

rel64/erfc.o: erfc.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  erfc.f -o rel64/erfc.o -I rel64

rel64/estimate_ksat.o: estimate_ksat.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  estimate_ksat.f -o rel64/estimate_ksat.o -I rel64

rel64/etact.o: etact.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  etact.f -o rel64/etact.o -I rel64

rel64/etpot.o: etpot.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  etpot.f -o rel64/etpot.o -I rel64

rel64/expo.o: expo.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  expo.f -o rel64/expo.o -I rel64

rel64/fert.o: fert.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  fert.f -o rel64/fert.o -I rel64

rel64/filter.o: filter.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  filter.f -o rel64/filter.o -I rel64

rel64/filtw.o: filtw.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  filtw.f -o rel64/filtw.o -I rel64

rel64/finalbal.o: finalbal.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  finalbal.f -o rel64/finalbal.o -I rel64

rel64/gcycl.o: gcycl.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gcycl.f -o rel64/gcycl.o -I rel64

rel64/getallo.o: getallo.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  getallo.f -o rel64/getallo.o -I rel64

rel64/grass_wway.o: grass_wway.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  grass_wway.f -o rel64/grass_wway.o -I rel64

rel64/graze.o: graze.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  graze.f -o rel64/graze.o -I rel64

rel64/grow.o: grow.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  grow.f -o rel64/grow.o -I rel64

rel64/gwmod.o: gwmod.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gwmod.f -o rel64/gwmod.o -I rel64

rel64/gwmod_deep.o: gwmod_deep.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gwmod_deep.f -o rel64/gwmod_deep.o -I rel64

rel64/gwnutr.o: gwnutr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gwnutr.f -o rel64/gwnutr.o -I rel64

rel64/gw_no3.o: gw_no3.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  gw_no3.f -o rel64/gw_no3.o -I rel64

rel64/h2omgt_init.o: h2omgt_init.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  h2omgt_init.f -o rel64/h2omgt_init.o -I rel64

rel64/harvestop.o: harvestop.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  harvestop.f -o rel64/harvestop.o -I rel64

rel64/harvgrainop.o: harvgrainop.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  harvgrainop.f -o rel64/harvgrainop.o -I rel64

rel64/harvkillop.o: harvkillop.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  harvkillop.f -o rel64/harvkillop.o -I rel64

rel64/header.o: header.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  header.f -o rel64/header.o -I rel64

rel64/headout.o: headout.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  headout.f -o rel64/headout.o -I rel64

rel64/hhnoqual.o: hhnoqual.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hhnoqual.f -o rel64/hhnoqual.o -I rel64

rel64/hhwatqual.o: hhwatqual.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hhwatqual.f -o rel64/hhwatqual.o -I rel64

rel64/hmeas.o: hmeas.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hmeas.f -o rel64/hmeas.o -I rel64

rel64/hruaa.o: hruaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruaa.f -o rel64/hruaa.o -I rel64

rel64/hruallo.o: hruallo.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruallo.f -o rel64/hruallo.o -I rel64

rel64/hruday.o: hruday.f90 rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruday.f90 -o rel64/hruday.o -I rel64

rel64/hrumon.o: hrumon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hrumon.f -o rel64/hrumon.o -I rel64

rel64/hrupond.o: hrupond.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hrupond.f -o rel64/hrupond.o -I rel64

rel64/hrupondhr.o: hrupondhr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hrupondhr.f -o rel64/hrupondhr.o -I rel64

rel64/hruyr.o: hruyr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hruyr.f -o rel64/hruyr.o -I rel64

rel64/hydroinit.o: hydroinit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  hydroinit.f -o rel64/hydroinit.o -I rel64

rel64/icl.o: icl.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  icl.f -o rel64/icl.o -I rel64

rel64/impndaa.o: impndaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndaa.f -o rel64/impndaa.o -I rel64

rel64/impndday.o: impndday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndday.f -o rel64/impndday.o -I rel64

rel64/impndmon.o: impndmon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndmon.f -o rel64/impndmon.o -I rel64

rel64/impndyr.o: impndyr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impndyr.f -o rel64/impndyr.o -I rel64

rel64/impnd_init.o: impnd_init.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  impnd_init.f -o rel64/impnd_init.o -I rel64

rel64/irrigate.o: irrigate.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irrigate.f -o rel64/irrigate.o -I rel64

rel64/irrsub.o: irrsub.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irrsub.f -o rel64/irrsub.o -I rel64

rel64/irr_rch.o: irr_rch.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irr_rch.f -o rel64/irr_rch.o -I rel64

rel64/irr_res.o: irr_res.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  irr_res.f -o rel64/irr_res.o -I rel64

rel64/jdt.o: jdt.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  jdt.f -o rel64/jdt.o -I rel64

rel64/killop.o: killop.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  killop.f -o rel64/killop.o -I rel64

rel64/lakeq.o: lakeq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  lakeq.f -o rel64/lakeq.o -I rel64

rel64/latsed.o: latsed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  latsed.f -o rel64/latsed.o -I rel64

rel64/layersplit.o: layersplit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  layersplit.f -o rel64/layersplit.o -I rel64

rel64/lwqdef.o: lwqdef.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  lwqdef.f -o rel64/lwqdef.o -I rel64

rel64/main.o: main.f modparm.f
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} main.f -o rel64/main.o -J rel64

rel64/ncsed_leach.o: NCsed_leach.f90 rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  NCsed_leach.f90 -o rel64/ncsed_leach.o -I rel64

rel64/ndenit.o: ndenit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ndenit.f -o rel64/ndenit.o -I rel64

rel64/newtillmix.o: newtillmix.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  newtillmix.f -o rel64/newtillmix.o -I rel64

rel64/nfix.o: nfix.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nfix.f -o rel64/nfix.o -I rel64

rel64/nitvol.o: nitvol.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nitvol.f -o rel64/nitvol.o -I rel64

rel64/nlch.o: nlch.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nlch.f -o rel64/nlch.o -I rel64

rel64/nminrl.o: nminrl.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nminrl.f -o rel64/nminrl.o -I rel64

rel64/noqual.o: noqual.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  noqual.f -o rel64/noqual.o -I rel64

rel64/npup.o: npup.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  npup.f -o rel64/npup.o -I rel64

rel64/nrain.o: nrain.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nrain.f -o rel64/nrain.o -I rel64

rel64/nup.o: nup.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nup.f -o rel64/nup.o -I rel64

rel64/nuts.o: nuts.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  nuts.f -o rel64/nuts.o -I rel64

rel64/openwth.o: openwth.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  openwth.f -o rel64/openwth.o -I rel64

rel64/operatn.o: operatn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  operatn.f -o rel64/operatn.o -I rel64

rel64/orgn.o: orgn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  orgn.f -o rel64/orgn.o -I rel64

rel64/orgncswat.o: orgncswat.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  orgncswat.f -o rel64/orgncswat.o -I rel64

rel64/origtile.o: origtile.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  origtile.f -o rel64/origtile.o -I rel64

rel64/ovr_sed.o: ovr_sed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} ovr_sed.f -o rel64/ovr_sed.o -I rel64

rel64/percmacro.o: percmacro.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  percmacro.f -o rel64/percmacro.o -I rel64

rel64/percmain.o: percmain.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} percmain.f -o rel64/percmain.o -I rel64

rel64/percmicro.o: percmicro.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  percmicro.f -o rel64/percmicro.o -I rel64

rel64/pestlch.o: pestlch.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pestlch.f -o rel64/pestlch.o -I rel64

rel64/pestw.o: pestw.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pestw.f -o rel64/pestw.o -I rel64

rel64/pesty.o: pesty.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pesty.f -o rel64/pesty.o -I rel64

rel64/pgen.o: pgen.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pgen.f -o rel64/pgen.o -I rel64

rel64/pgenhr.o: pgenhr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pgenhr.f -o rel64/pgenhr.o -I rel64

rel64/pkq.o: pkq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pkq.f -o rel64/pkq.o -I rel64

rel64/plantmod.o: plantmod.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  plantmod.f -o rel64/plantmod.o -I rel64

rel64/plantop.o: plantop.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  plantop.f -o rel64/plantop.o -I rel64

rel64/pmeas.o: pmeas.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pmeas.f -o rel64/pmeas.o -I rel64

rel64/pminrl.o: pminrl.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pminrl.f -o rel64/pminrl.o -I rel64

rel64/pminrl2.o: pminrl2.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pminrl2.f -o rel64/pminrl2.o -I rel64

rel64/pond.o: pond.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pond.f -o rel64/pond.o -I rel64

rel64/pondhr.o: pondhr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pondhr.f -o rel64/pondhr.o -I rel64

rel64/pothole.o: pothole.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  pothole.f -o rel64/pothole.o -I rel64

rel64/potholehr.o: potholehr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  potholehr.f -o rel64/potholehr.o -I rel64

rel64/print_hyd.o: print_hyd.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  print_hyd.f -o rel64/print_hyd.o -I rel64

rel64/psed.o: psed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  psed.f -o rel64/psed.o -I rel64

rel64/qman.o: qman.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  qman.f -o rel64/qman.o -I rel64

rel64/ran1.o: ran1.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ran1.f -o rel64/ran1.o -I rel64

rel64/rchaa.o: rchaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchaa.f -o rel64/rchaa.o -I rel64

rel64/rchday.o: rchday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchday.f -o rel64/rchday.o -I rel64

rel64/rchinit.o: rchinit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchinit.f -o rel64/rchinit.o -I rel64

rel64/rchmon.o: rchmon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchmon.f -o rel64/rchmon.o -I rel64

rel64/rchuse.o: rchuse.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchuse.f -o rel64/rchuse.o -I rel64

rel64/rchyr.o: rchyr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rchyr.f -o rel64/rchyr.o -I rel64

rel64/reachout.o: reachout.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  reachout.f -o rel64/reachout.o -I rel64

rel64/readatmodep.o: readatmodep.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readatmodep.f -o rel64/readatmodep.o -I rel64

rel64/readbsn.o: readbsn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readbsn.f -o rel64/readbsn.o -I rel64

rel64/readchm.o: readchm.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readchm.f -o rel64/readchm.o -I rel64

rel64/readcnst.o: readcnst.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readcnst.f -o rel64/readcnst.o -I rel64

rel64/readfcst.o: readfcst.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfcst.f -o rel64/readfcst.o -I rel64

rel64/readfert.o: readfert.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfert.f -o rel64/readfert.o -I rel64

rel64/readfig.o: readfig.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfig.f -o rel64/readfig.o -I rel64

rel64/readfile.o: readfile.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readfile.f -o rel64/readfile.o -I rel64

rel64/readgw.o: readgw.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readgw.f -o rel64/readgw.o -I rel64

rel64/readhru.o: readhru.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readhru.f -o rel64/readhru.o -I rel64

rel64/readinpt.o: readinpt.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readinpt.f -o rel64/readinpt.o -I rel64

rel64/readlup.o: readlup.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readlup.f -o rel64/readlup.o -I rel64

rel64/readlwq.o: readlwq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readlwq.f -o rel64/readlwq.o -I rel64

rel64/readmgt.o: readmgt.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readmgt.f -o rel64/readmgt.o -I rel64

rel64/readmon.o: readmon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readmon.f -o rel64/readmon.o -I rel64

rel64/readops.o: readops.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readops.f -o rel64/readops.o -I rel64

rel64/readpest.o: readpest.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readpest.f -o rel64/readpest.o -I rel64

rel64/readplant.o: readplant.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readplant.f -o rel64/readplant.o -I rel64

rel64/readpnd.o: readpnd.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readpnd.f -o rel64/readpnd.o -I rel64

rel64/readres.o: readres.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readres.f -o rel64/readres.o -I rel64

rel64/readrte.o: readrte.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readrte.f -o rel64/readrte.o -I rel64

rel64/readru.o: readru.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readru.f -o rel64/readru.o -I rel64

rel64/readsdr.o: readsdr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsdr.f -o rel64/readsdr.o -I rel64

rel64/readsepticbz.o: readsepticbz.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsepticbz.f -o rel64/readsepticbz.o -I rel64

rel64/readseptwq.o: readseptwq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readseptwq.f -o rel64/readseptwq.o -I rel64

rel64/readsno.o: readsno.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsno.f -o rel64/readsno.o -I rel64

rel64/readsol.o: readsol.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsol.f -o rel64/readsol.o -I rel64

rel64/readsub.o: readsub.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readsub.f -o rel64/readsub.o -I rel64

rel64/readswq.o: readswq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readswq.f -o rel64/readswq.o -I rel64

rel64/readtill.o: readtill.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readtill.f -o rel64/readtill.o -I rel64

rel64/readurban.o: readurban.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readurban.f -o rel64/readurban.o -I rel64

rel64/readwgn.o: readwgn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readwgn.f -o rel64/readwgn.o -I rel64

rel64/readwus.o: readwus.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readwus.f -o rel64/readwus.o -I rel64

rel64/readwwq.o: readwwq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readwwq.f -o rel64/readwwq.o -I rel64

rel64/readyr.o: readyr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  readyr.f -o rel64/readyr.o -I rel64

rel64/reccnst.o: reccnst.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  reccnst.f -o rel64/reccnst.o -I rel64

rel64/recday.o: recday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  recday.f -o rel64/recday.o -I rel64

rel64/rechour.o: rechour.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rechour.f -o rel64/rechour.o -I rel64

rel64/recmon.o: recmon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  recmon.f -o rel64/recmon.o -I rel64

rel64/recyear.o: recyear.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  recyear.f -o rel64/recyear.o -I rel64

rel64/regres.o: regres.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  regres.f -o rel64/regres.o -I rel64

rel64/res.o: res.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  res.f -o rel64/res.o -I rel64

rel64/resbact.o: resbact.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resbact.f -o rel64/resbact.o -I rel64

rel64/resetlu.o: resetlu.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resetlu.f -o rel64/resetlu.o -I rel64

rel64/reshr.o: reshr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  reshr.f -o rel64/reshr.o -I rel64

rel64/resinit.o: resinit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resinit.f -o rel64/resinit.o -I rel64

rel64/resnut.o: resnut.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  resnut.f -o rel64/resnut.o -I rel64

rel64/rewind_init.o: rewind_init.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rewind_init.f -o rel64/rewind_init.o -I rel64

rel64/rhgen.o: rhgen.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rhgen.f -o rel64/rhgen.o -I rel64

rel64/rootfr.o: rootfr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rootfr.f -o rel64/rootfr.o -I rel64

rel64/route.o: route.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  route.f -o rel64/route.o -I rel64

rel64/routels.o: routels.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  routels.f -o rel64/routels.o -I rel64

rel64/routeunit.o: routeunit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  routeunit.f -o rel64/routeunit.o -I rel64

rel64/routres.o: routres.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  routres.f -o rel64/routres.o -I rel64

rel64/rsedaa.o: rsedaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rsedaa.f -o rel64/rsedaa.o -I rel64

rel64/rseday.o: rseday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rseday.f -o rel64/rseday.o -I rel64

rel64/rsedmon.o: rsedmon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rsedmon.f -o rel64/rsedmon.o -I rel64

rel64/rsedyr.o: rsedyr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rsedyr.f -o rel64/rsedyr.o -I rel64

rel64/rtbact.o: rtbact.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtbact.f -o rel64/rtbact.o -I rel64

rel64/rtday.o: rtday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtday.f -o rel64/rtday.o -I rel64

rel64/rteinit.o: rteinit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rteinit.f -o rel64/rteinit.o -I rel64

rel64/rthmusk.o: rthmusk.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rthmusk.f -o rel64/rthmusk.o -I rel64

rel64/rthpest.o: rthpest.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rthpest.f -o rel64/rthpest.o -I rel64

rel64/rthr.o: rthr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rthr.f -o rel64/rthr.o -I rel64

rel64/rthsed.o: rthsed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} rthsed.f -o rel64/rthsed.o -I rel64

rel64/rtmusk.o: rtmusk.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtmusk.f -o rel64/rtmusk.o -I rel64

rel64/rtout.o: rtout.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtout.f -o rel64/rtout.o -I rel64

rel64/rtpest.o: rtpest.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtpest.f -o rel64/rtpest.o -I rel64

rel64/rtsed.o: rtsed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed.f -o rel64/rtsed.o -I rel64

rel64/rtsed_bagnold.o: rtsed_bagnold.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_bagnold.f -o rel64/rtsed_bagnold.o -I rel64

rel64/rtsed_kodatie.o: rtsed_kodatie.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_kodatie.f -o rel64/rtsed_kodatie.o -I rel64

rel64/rtsed_molinas_wu.o: rtsed_Molinas_Wu.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_Molinas_Wu.f -o rel64/rtsed_molinas_wu.o -I rel64

rel64/rtsed_yangsand.o: rtsed_yangsand.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  rtsed_yangsand.f -o rel64/rtsed_yangsand.o -I rel64

rel64/sat_excess.o: sat_excess.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sat_excess.f -o rel64/sat_excess.o -I rel64

rel64/save.o: save.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  save.f -o rel64/save.o -I rel64

rel64/saveconc.o: saveconc.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  saveconc.f -o rel64/saveconc.o -I rel64

rel64/schedule_ops.o: schedule_ops.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  schedule_ops.f -o rel64/schedule_ops.o -I rel64

rel64/sched_mgt.o: sched_mgt.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sched_mgt.f -o rel64/sched_mgt.o -I rel64

rel64/simulate.o: simulate.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  simulate.f -o rel64/simulate.o -I rel64

rel64/sim_initday.o: sim_initday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sim_initday.f -o rel64/sim_initday.o -I rel64

rel64/sim_inityr.o: sim_inityr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sim_inityr.f -o rel64/sim_inityr.o -I rel64

rel64/slrgen.o: slrgen.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  slrgen.f -o rel64/slrgen.o -I rel64

rel64/smeas.o: smeas.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  smeas.f -o rel64/smeas.o -I rel64

rel64/snom.o: snom.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  snom.f -o rel64/snom.o -I rel64

rel64/soil_chem.o: soil_chem.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_chem.f -o rel64/soil_chem.o -I rel64

rel64/soil_par.o: soil_par.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_par.f -o rel64/soil_par.o -I rel64

rel64/soil_phys.o: soil_phys.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_phys.f -o rel64/soil_phys.o -I rel64

rel64/soil_write.o: soil_write.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  soil_write.f -o rel64/soil_write.o -I rel64

rel64/solp.o: solp.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  solp.f -o rel64/solp.o -I rel64

rel64/solt.o: solt.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  solt.f -o rel64/solt.o -I rel64

rel64/std1.o: std1.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  std1.f -o rel64/std1.o -I rel64

rel64/std2.o: std2.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  std2.f -o rel64/std2.o -I rel64

rel64/std3.o: std3.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  std3.f -o rel64/std3.o -I rel64

rel64/stdaa.o: stdaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  stdaa.f -o rel64/stdaa.o -I rel64

rel64/storeinitial.o: storeinitial.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  storeinitial.f -o rel64/storeinitial.o -I rel64

rel64/structure.o: structure.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  structure.f -o rel64/structure.o -I rel64

rel64/subaa.o: subaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subaa.f -o rel64/subaa.o -I rel64

rel64/subbasin.o: subbasin.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subbasin.f -o rel64/subbasin.o -I rel64

rel64/subday.o: subday.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subday.f -o rel64/subday.o -I rel64

rel64/submon.o: submon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  submon.f -o rel64/submon.o -I rel64

rel64/substor.o: substor.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  substor.f -o rel64/substor.o -I rel64

rel64/subwq.o: subwq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subwq.f -o rel64/subwq.o -I rel64

rel64/subyr.o: subyr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  subyr.f -o rel64/subyr.o -I rel64

rel64/sub_subbasin.o: sub_subbasin.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sub_subbasin.f -o rel64/sub_subbasin.o -I rel64

rel64/sumhyd.o: sumhyd.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sumhyd.f -o rel64/sumhyd.o -I rel64

rel64/sumv.o: sumv.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sumv.f -o rel64/sumv.o -I rel64

rel64/surface.o: surface.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surface.f -o rel64/surface.o -I rel64

rel64/surfstor.o: surfstor.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surfstor.f -o rel64/surfstor.o -I rel64

rel64/surfst_h2o.o: surfst_h2o.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surfst_h2o.f -o rel64/surfst_h2o.o -I rel64

rel64/surq_daycn.o: surq_daycn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surq_daycn.f -o rel64/surq_daycn.o -I rel64

rel64/surq_greenampt.o: surq_greenampt.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  surq_greenampt.f -o rel64/surq_greenampt.o -I rel64

rel64/swbl.o: swbl.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  swbl.f -o rel64/swbl.o -I rel64

rel64/sweep.o: sweep.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  sweep.f -o rel64/sweep.o -I rel64

rel64/swu.o: swu.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  swu.f -o rel64/swu.o -I rel64

rel64/tair.o: tair.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tair.f -o rel64/tair.o -I rel64

rel64/tgen.o: tgen.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tgen.f -o rel64/tgen.o -I rel64

rel64/theta.o: theta.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  theta.f -o rel64/theta.o -I rel64

rel64/tillfactor.o: tillfactor.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tillfactor.f -o rel64/tillfactor.o -I rel64

rel64/tillmix.o: tillmix.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tillmix.f -o rel64/tillmix.o -I rel64

rel64/tmeas.o: tmeas.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tmeas.f -o rel64/tmeas.o -I rel64

rel64/tran.o: tran.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tran.f -o rel64/tran.o -I rel64

rel64/transfer.o: transfer.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  transfer.f -o rel64/transfer.o -I rel64

rel64/tstr.o: tstr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  tstr.f -o rel64/tstr.o -I rel64

rel64/ttcoef.o: ttcoef.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ttcoef.f -o rel64/ttcoef.o -I rel64

rel64/ttcoef_wway.o: ttcoef_wway.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ttcoef_wway.f -o rel64/ttcoef_wway.o -I rel64

rel64/urban.o: urban.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  urban.f -o rel64/urban.o -I rel64

rel64/urbanhr.o: urbanhr.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  urbanhr.f -o rel64/urbanhr.o -I rel64

rel64/urb_bmp.o: urb_bmp.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  urb_bmp.f -o rel64/urb_bmp.o -I rel64

rel64/varinit.o: varinit.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  varinit.f -o rel64/varinit.o -I rel64

rel64/vbl.o: vbl.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  vbl.f -o rel64/vbl.o -I rel64

rel64/virtual.o: virtual.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  virtual.f -o rel64/virtual.o -I rel64

rel64/volq.o: volq.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  volq.f -o rel64/volq.o -I rel64

rel64/washp.o: washp.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  washp.f -o rel64/washp.o -I rel64

rel64/watbal.o: watbal.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watbal.f -o rel64/watbal.o -I rel64

rel64/water_hru.o: water_hru.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  water_hru.f -o rel64/water_hru.o -I rel64

rel64/watqual.o: watqual.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watqual.f -o rel64/watqual.o -I rel64

rel64/watqual2.o: watqual2.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watqual2.f -o rel64/watqual2.o -I rel64

rel64/wattable.o: wattable.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wattable.f -o rel64/wattable.o -I rel64

rel64/watuse.o: watuse.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  watuse.f -o rel64/watuse.o -I rel64

rel64/weatgn.o: weatgn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  weatgn.f -o rel64/weatgn.o -I rel64

rel64/wetlan.o: wetlan.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wetlan.f -o rel64/wetlan.o -I rel64

rel64/wmeas.o: wmeas.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wmeas.f -o rel64/wmeas.o -I rel64

rel64/wndgen.o: wndgen.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  wndgen.f -o rel64/wndgen.o -I rel64

rel64/writea.o: writea.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writea.f -o rel64/writea.o -I rel64

rel64/writeaa.o: writeaa.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writeaa.f -o rel64/writeaa.o -I rel64

rel64/writed.o: writed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writed.f -o rel64/writed.o -I rel64

rel64/writem.o: writem.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  writem.f -o rel64/writem.o -I rel64

rel64/xmon.o: xmon.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  xmon.f -o rel64/xmon.o -I rel64

rel64/ysed.o: ysed.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ysed.f -o rel64/ysed.o -I rel64

rel64/zero0.o: zero0.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero0.f -o rel64/zero0.o -I rel64

rel64/zero1.o: zero1.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero1.f -o rel64/zero1.o -I rel64

rel64/zero2.o: zero2.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero2.f -o rel64/zero2.o -I rel64

rel64/zeroini.o: zeroini.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zeroini.f -o rel64/zeroini.o -I rel64

rel64/zero_urbn.o: zero_urbn.f rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  zero_urbn.f -o rel64/zero_urbn.o -I rel64

rel64_clean:
	rm -f ${NAMEREL64}.exe
	rm -f rel64/*.o
	rm -f rel64/*.mod
	rm -f rel64/*~

