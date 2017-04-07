export CONFIG_ATH10K=m
export CONFIG_ATH10K_PCI=m
export CONFIG_ATH10K_DEBUG=y
export CONFIG_ATH10K_DEBUGFS=y
export CONFIG_ATH10K_DFS_CERTIFIED=y

obj-m += ath10k/

obj-m += ath.o

ath-objs :=	main.o \
		regd.o \
		hw.o \
		key.o \
		dfs_pattern_detector.o \
		dfs_pri_detector.o

ccflags-y += -D__CHECK_ENDIAN__
