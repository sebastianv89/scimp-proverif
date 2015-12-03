# 
# Author: Sebastian Verschoor
# Email: s.r.verschoor@student.tue.nl
# Last modified: <2015-10-11 16:45:26>
# 

all: scimp_backwards_secrecy_sas.res \
     scimp_backwards_secrecy_sync_first.res \
     scimp_backwards_secrecy_sync_warn.res \
     scimp_data_deniability.res \
     scimp_data.res \
     scimp_first_key_neg.res \
     scimp_key_neg_key_erasure.res \
     scimp_key_neg.res \
     scimp_progressive_enc.res

%.res: %.pv
	proverif $^ > $@

.PHONY: clean
clean:
	-rm *.res
