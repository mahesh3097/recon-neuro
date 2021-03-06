# Makefile for 18-743 Lab Assignment 2
# Author: Prabhu Vellaisamy


.PHONY: help
help:
	@echo ""
	@echo "	S Y N T A X "
	@echo ""
	@echo " make [args.] "
	@echo ""
	@echo " Arguments: "
	@echo "   bitonic-sim:  RTL sim. of bitonic sorter (32-bits) "
	@echo "   bitonic-wave:  waveform gui of bitonic sorter (32-bits) "
	@echo "   synapse-sim: RTL sim. of SNL neuron "
	@echo "   synapse-wave: waveform gui of SNL neuron "
	@echo "   pulse_gen-sim: RTL sim. of RNL neuron "
	@echo "   pulse_gen-wave: waveform gui of RNL neuron "
	@echo "   snl-synth: synthesis run for SNL neuron "
	@echo "   rnl-synth: synthesis run for RNL neuron "
	@echo ""
	@echo " "

SIM := ${CURDIR}/SIM
SRC:= ${CURDIR}/src
SYNTH := $(CURDIR)/SYNTH
BACK := /afs/andrew/course/18/743/backend

.SILENT:
.PHONY: bitonic-sim
bitonic-sim:
	
	if [ ! -d "$(SIM)" ]; then \
        mkdir $(SIM) && mkdir $(SIM)/bitonic_sort;\
		cd $(SIM)/bitonic_sort && vcs -sverilog -debug_all -full64 -top bitonic_sort_test $(SRC)/tb/bitonic_sort_test.sv $(SRC)/rtl/neuron_snl_grl.sv && ./simv;\
	elif [ ! -d "$(SIM)/bitonic_sort" ]; then \
        mkdir $(SIM)/bitonic_sort;\
		cd $(SIM)/bitonic_sort && vcs -sverilog -debug_all -full64 -top bitonic_sort_test $(SRC)/tb/bitonic_sort_test.sv $(SRC)/rtl/neuron_snl_grl.sv && ./simv;\
	else \
		cd $(SIM)/bitonic_sort && vcs -sverilog -debug_all -full64 -top bitonic_sort_test $(SRC)/tb/bitonic_sort_test.sv $(SRC)/rtl/neuron_snl_grl.sv && ./simv;\
	fi;
	

.PHONY: bitonic-wave
bitonic-wave:
	
	if [ ! -d "$(SIM)" ]; then \
        @echo "Perform simulation first";\
	elif [ ! -d "$(SIM)/bitonic_sort" ]; then \
        @echo "Perform simulation first";\
	else \
		cd $(SIM)/bitonic_sort && ./simv -gui;\
	fi;
	
	

.PHONY: synapse-sim
synapse-sim:

	if [ ! -d "$(SIM)" ]; then \
        mkdir $(SIM) && mkdir $(SIM)/synapse;\
		cd $(SIM)/synapse && vcs -sverilog -debug_all -full64 -top synapse_tb $(SRC)/tb/synapse_tb.sv $(SRC)/rtl/neuron_rnl_ptt.sv && ./simv ; \
	elif [ ! -d "$(SIM)/synapse" ]; then \
        mkdir $(SIM)/synapse;\
		cd $(SIM)/synapse && vcs -sverilog -debug_all -full64 -top synapse_tb $(SRC)/tb/synapse_tb.sv $(SRC)/rtl/neuron_rnl_ptt.sv && ./simv ; \
	else \
		cd $(SIM)/synapse && vcs -sverilog -debug_all -full64 -top synapse_tb $(SRC)/tb/synapse_tb.sv $(SRC)/rtl/neuron_rnl_ptt.sv && ./simv ; \
	fi; 



.PHONY: synapse-wave
synapse-wave:
	if [ ! -d "$(SIM)" ]; then \
        @echo "Perform simulation first";\
	elif [ ! -d "$(SIM)/synapse" ]; then \
        @echo "Perform simulation first";\
	else \
		cd $(SIM)/synapse && ./simv -gui;\
	fi;


.PHONY: snl-synth
snl-synth:
	
	if [ ! -d "$(SYNTH)" ]; then \
		mkdir $(SYNTH) && mkdir $(SYNTH)/snl_neuron;\
		cd $(SYNTH)/snl_neuron && dc_shell -f $(CURDIR)/tcl/synth_snl.tcl;\
	elif [ ! -d "$(SYNTH)/snl_neuron" ]; then \
		mkdir $(SYNTH)/snl_neuron;\
		cd $(SYNTH)/snl_neuron && dc_shell -f $(CURDIR)/tcl/synth_snl.tcl;\
	else \
		cd $(SYNTH)/snl_neuron && dc_shell -f $(CURDIR)/tcl/synth_snl.tcl;\
	fi;
	
.PHONY: rnl-synth
rnl-synth:
		
	if [ ! -d "$(SYNTH)" ]; then \
		mkdir $(SYNTH) && mkdir $(SYNTH)/rnl_neuron;\
		cd $(SYNTH)/rnl_neuron && dc_shell -f $(CURDIR)/tcl/synth_rnl.tcl;\
	elif [ ! -d "$(SYNTH)/rnl_neuron" ]; then \
		mkdir $(SYNTH)/rnl_neuron;\
		cd $(SYNTH)/rnl_neuron && dc_shell -f $(CURDIR)/tcl/synth_rnl.tcl;\
	else \
		cd $(SYNTH)/rnl_neuron && dc_shell -f $(CURDIR)/tcl/synth_rnl.tcl;\
	fi;

.PHONY: bitonic-synth
bitonic-synth:
	
	if [ ! -d "$(SYNTH)" ]; then \
		mkdir $(SYNTH) && mkdir $(SYNTH)/bitonic;\
		cd $(SYNTH)/bitonic && dc_shell -f $(CURDIR)/tcl/synth_bitonic.tcl;\
	elif [ ! -d "$(SYNTH)/bitonic" ]; then \
		mkdir $(SYNTH)/bitonic;\
		cd $(SYNTH)/bitonic && dc_shell -f $(CURDIR)/tcl/synth_bitonic.tcl;\
	else \
		cd $(SYNTH)/bitonic && dc_shell -f $(CURDIR)/tcl/synth_bitonic.tcl;\
	fi;

.PHONY: comp_column-synth
comp_column-synth:
	
	if [ ! -d "$(SYNTH)" ]; then \
		mkdir $(SYNTH) && mkdir $(SYNTH)/comp_column;\
		cd $(SYNTH)/comp_column && dc_shell -f $(CURDIR)/tcl/comp_column.tcl;\
	elif [ ! -d "$(SYNTH)/comp_column" ]; then \
		mkdir $(SYNTH)/comp_column;\
		cd $(SYNTH)/comp_column && dc_shell -f $(CURDIR)/tcl/comp_column.tcl;\
	else \
		cd $(SYNTH)/comp_column && dc_shell -f $(CURDIR)/tcl/comp_column.tcl;\
	fi;
	
.PHONY: synapse-synth
synapse-synth:
		
	if [ ! -d "$(SYNTH)" ]; then \
		mkdir $(SYNTH) && mkdir $(SYNTH)/synapse;\
		cd $(SYNTH)/synapse && dc_shell -f $(CURDIR)/tcl/synth_synapse.tcl;\
	elif [ ! -d "$(SYNTH)/synapse" ]; then \
		mkdir $(SYNTH)/synapse;\
		cd $(SYNTH)/synapse && dc_shell -f $(CURDIR)/tcl/synth_synapse.tcl;\
	else \
		cd $(SYNTH)/synapse && dc_shell -f $(CURDIR)/tcl/synth_synapse.tcl;\
	fi;

.PHONY: top-sim
top-sim:
	
	if [ ! -d "$(SIM)" ]; then \
        mkdir $(SIM) && mkdir $(SIM)/top;\
		cd $(SIM)/top && vcs -sverilog -debug_all -full64 -top tb_column $(SRC)/tb/tb_column.sv $(SRC)/top.sv -v $(SRC)/control.sv $(SRC)/wta.sv $(SRC)/pulse2edge.sv $(SRC)/edge2pulse.sv $(SRC)/adder.sv $(SRC)/fsm_convert.sv $(SRC)/fsm_synapse.sv $(SRC)/incdec.sv $(SRC)/incdec.sv $(SRC)/less_equal.sv $(SRC)/neuron_body.sv $(SRC)/neuron.sv $(SRC)/pac.sv $(SRC)/stabilize_func.sv $(SRC)/stdp_case_gen.sv  $(SRC)/stdp.sv $(SRC)/lib.sv && ./simv;\
	elif [ ! -d "$(SIM)/top" ]; then \
        mkdir $(SIM)/top;\
		cd $(SIM)/top && vcs -sverilog -debug_all -full64 -top tb_column $(SRC)/tb/tb_column.sv $(SRC)/top.sv -v $(SRC)/control.sv $(SRC)/wta.sv $(SRC)/pulse2edge.sv $(SRC)/edge2pulse.sv $(SRC)/adder.sv $(SRC)/fsm_convert.sv $(SRC)/fsm_synapse.sv $(SRC)/incdec.sv $(SRC)/incdec.sv $(SRC)/less_equal.sv $(SRC)/neuron_body.sv $(SRC)/neuron.sv $(SRC)/pac.sv $(SRC)/stabilize_func.sv $(SRC)/stdp_case_gen.sv  $(SRC)/stdp.sv $(SRC)/lib.sv && ./simv;\
	else \
		cd $(SIM)/top && vcs -sverilog -debug_all -full64 -top tb_column $(SRC)/tb/tb_column.sv $(SRC)/top.sv -v $(SRC)/control.sv $(SRC)/wta.sv $(SRC)/pulse2edge.sv $(SRC)/edge2pulse.sv $(SRC)/adder.sv $(SRC)/fsm_convert.sv $(SRC)/fsm_synapse.sv $(SRC)/incdec.sv $(SRC)/incdec.sv $(SRC)/less_equal.sv $(SRC)/neuron_body.sv $(SRC)/neuron.sv $(SRC)/pac.sv $(SRC)/stabilize_func.sv $(SRC)/stdp_case_gen.sv  $(SRC)/stdp.sv $(SRC)/lib.sv && ./simv;\
	fi;

.PHONY: top-wave
top-wave:
	if [ ! -d "$(SIM)" ]; then \
        @echo "Perform simulation first";\
	elif [ ! -d "$(SIM)/top" ]; then \
        @echo "Perform simulation first";\
	else \
		cd $(SIM)/top && ./simv -gui;\
	fi;

.PHONY: cleanall
cleanall:
	rm -rf $(CURDIR)/SIM $(CURDIR)/SYNTH $(CURDIR)/PNR
	#find . -maxdepth 1 -type d | grep "./" | xargs -I {} make clean -C {}
