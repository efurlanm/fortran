# My personal notes on PAPI and hardware

http://icl.cs.utk.edu/papi/


```python
! hostnamectl
```

       Static hostname: sdumont18
             Icon name: computer-server
               Chassis: server
            Machine ID: b2e8ad25684d44b68de42a969adb33bb
               Boot ID: db5503ea9fda467baaa65b75646e5891
      Operating System: Red Hat Enterprise Linux Server 7.7 (Maipo)
           CPE OS Name: cpe:/o:redhat:enterprise_linux:7.7:GA:server
                Kernel: Linux 3.10.0-957.27.2.el7.x86_64
          Architecture: x86-64



```python
! lspci | grep NVIDIA
```

    3b:00.0 3D controller: NVIDIA Corporation GV100GL [Tesla V100 PCIe 32GB] (rev a1)
    5e:00.0 3D controller: NVIDIA Corporation GV100GL [Tesla V100 PCIe 32GB] (rev a1)
    86:00.0 3D controller: NVIDIA Corporation GV100GL [Tesla V100 PCIe 32GB] (rev a1)
    af:00.0 3D controller: NVIDIA Corporation GV100GL [Tesla V100 PCIe 32GB] (rev a1)



```python
! lscpu | egrep 'Model name|Socket|Thread|NUMA|CPU\(s\)'
```

    CPU(s):                88
    On-line CPU(s) list:   0-87
    Thread(s) per core:    2
    Socket(s):             2
    NUMA node(s):          2
    Model name:            Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz
    NUMA node0 CPU(s):     0-21,44-65
    NUMA node1 CPU(s):     22-43,66-87



```python
! echo "CPU threads: $(grep -c processor /proc/cpuinfo)"
```

    CPU threads: 88



```python
! nproc --all
```

    88



```python
! cat /proc/meminfo
```

    MemTotal:       791009752 kB
    MemFree:        705361836 kB
    MemAvailable:   773516612 kB
    Buffers:          399644 kB
    Cached:         68407188 kB
    SwapCached:            0 kB
    Active:         19929236 kB
    Inactive:       49909108 kB
    Active(anon):    1646308 kB
    Inactive(anon):   243172 kB
    Active(file):   18282928 kB
    Inactive(file): 49665936 kB
    Unevictable:           0 kB
    Mlocked:               0 kB
    SwapTotal:             0 kB
    SwapFree:              0 kB
    Dirty:                24 kB
    Writeback:             0 kB
    AnonPages:       1031572 kB
    Mapped:           221036 kB
    Shmem:            857964 kB
    Slab:            8127912 kB
    SReclaimable:    2029056 kB
    SUnreclaim:      6098856 kB
    KernelStack:       29440 kB
    PageTables:        37780 kB
    NFS_Unstable:          0 kB
    Bounce:                0 kB
    WritebackTmp:          0 kB
    CommitLimit:    395504876 kB
    Committed_AS:    5073604 kB
    VmallocTotal:   34359738367 kB
    VmallocUsed:     2426432 kB
    VmallocChunk:   33954576380 kB
    HardwareCorrupted:     0 kB
    AnonHugePages:    339968 kB
    CmaTotal:              0 kB
    CmaFree:               0 kB
    HugePages_Total:       0
    HugePages_Free:        0
    HugePages_Rsvd:        0
    HugePages_Surp:        0
    Hugepagesize:       2048 kB
    DirectMap4k:    38993104 kB
    DirectMap2M:    619157504 kB
    DirectMap1G:    147849216 kB



```python
! lsblk
```

    lsblk: /scratch/app/anaconda3/2020.11/lib/libuuid.so.1: no version information available (required by /usr/lib64/libblkid.so.1)
    NAME    MAJ:MIN RM   SIZE RO TYPE  MOUNTPOINT
    sda       8:0    0 894.3G  0 disk  
    ├─sda1    8:1    0     2G  0 part  
    │ └─md0   9:0    0     2G  0 raid1 /boot/efi
    ├─sda2    8:2    0     2G  0 part  
    │ └─md1   9:1    0     2G  0 raid1 /boot
    └─sda3    8:3    0 890.3G  0 part  
      └─md2   9:2    0 890.1G  0 raid1 /
    sdb       8:16   0 894.3G  0 disk  
    ├─sdb1    8:17   0     2G  0 part  
    │ └─md0   9:0    0     2G  0 raid1 /boot/efi
    ├─sdb2    8:18   0     2G  0 part  
    │ └─md1   9:1    0     2G  0 raid1 /boot
    └─sdb3    8:19   0 890.3G  0 part  
      └─md2   9:2    0 890.1G  0 raid1 /



```python
! module avail papi
```

    
    ------------------------ /usr/share/Modules/modulefiles ------------------------
    papi/5.5.1.0       papi-devel/5.5.1.0



```bash
%%bash
module load papi papi-devel
module display papi papi-devel
```

    -------------------------------------------------------------------
    /usr/share/Modules/modulefiles/papi/5.5.1.0:
    
    module-whatis	 loads the papi-5.5.1.0 environment 
    prepend-path	 PATH /opt/bullxde/perftools/papi/5.5.1.0/bin 
    append-path	 MANPATH /opt/bullxde/perftools/papi/5.5.1.0/man: 
    -------------------------------------------------------------------
    -------------------------------------------------------------------
    /usr/share/Modules/modulefiles/papi-devel/5.5.1.0:
    
    module-whatis	 loads the papi-devel-5.5.1.0 environment 
    append-path	 MANPATH /opt/bullxde/perftools/papi/5.5.1.0/man: 
    prepend-path	 CPATH /opt/bullxde/perftools/papi/5.5.1.0/include 
    prepend-path	 LIBRARY_PATH /opt/bullxde/perftools/papi/5.5.1.0/lib64 
    prepend-path	 LD_LIBRARY_PATH /opt/bullxde/perftools/papi/5.5.1.0/lib64 
    prepend-path	 CPATH /opt/bullxde/perftools/papi/5.5.1.0/include/perfmon 
    -------------------------------------------------------------------
    



```bash
%%bash
module load papi papi-devel
papi_avail
```

    Available PAPI preset and user defined events plus hardware information.
    --------------------------------------------------------------------------------
    PAPI Version             : 5.5.1.0
    Vendor string and code   : GenuineIntel (1)
    Model string and code    : Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz (85)
    CPU Revision             : 4.000000
    CPUID Info               : Family: 6  Model: 85  Stepping: 4
    CPU Max Megahertz        : 2101
    CPU Min Megahertz        : 1000
    Hdw Threads per core     : 2
    Cores per Socket         : 22
    Sockets                  : 2
    NUMA Nodes               : 2
    CPUs per Node            : 44
    Total CPUs               : 88
    Running in a VM          : no
    Number Hardware Counters : 11
    Max Multiplex Counters   : 384
    --------------------------------------------------------------------------------
    
    ================================================================================
      PAPI Preset Events
    ================================================================================
        Name        Code    Avail Deriv Description (Note)
    PAPI_L1_DCM  0x80000000  Yes   No   Level 1 data cache misses
    PAPI_L1_ICM  0x80000001  Yes   No   Level 1 instruction cache misses
    PAPI_L2_DCM  0x80000002  Yes   Yes  Level 2 data cache misses
    PAPI_L2_ICM  0x80000003  Yes   No   Level 2 instruction cache misses
    PAPI_L3_DCM  0x80000004  No    No   Level 3 data cache misses
    PAPI_L3_ICM  0x80000005  No    No   Level 3 instruction cache misses
    PAPI_L1_TCM  0x80000006  Yes   Yes  Level 1 cache misses
    PAPI_L2_TCM  0x80000007  Yes   No   Level 2 cache misses
    PAPI_L3_TCM  0x80000008  Yes   No   Level 3 cache misses
    PAPI_CA_SNP  0x80000009  Yes   No   Requests for a snoop
    PAPI_CA_SHR  0x8000000a  Yes   No   Requests for exclusive access to shared cache line
    PAPI_CA_CLN  0x8000000b  Yes   No   Requests for exclusive access to clean cache line
    PAPI_CA_INV  0x8000000c  No    No   Requests for cache line invalidation
    PAPI_CA_ITV  0x8000000d  Yes   No   Requests for cache line intervention
    PAPI_L3_LDM  0x8000000e  Yes   No   Level 3 load misses
    PAPI_L3_STM  0x8000000f  No    No   Level 3 store misses
    PAPI_BRU_IDL 0x80000010  No    No   Cycles branch units are idle
    PAPI_FXU_IDL 0x80000011  No    No   Cycles integer units are idle
    PAPI_FPU_IDL 0x80000012  No    No   Cycles floating point units are idle
    PAPI_LSU_IDL 0x80000013  No    No   Cycles load/store units are idle
    PAPI_TLB_DM  0x80000014  Yes   Yes  Data translation lookaside buffer misses
    PAPI_TLB_IM  0x80000015  Yes   No   Instruction translation lookaside buffer misses
    PAPI_TLB_TL  0x80000016  No    No   Total translation lookaside buffer misses
    PAPI_L1_LDM  0x80000017  Yes   No   Level 1 load misses
    PAPI_L1_STM  0x80000018  Yes   No   Level 1 store misses
    PAPI_L2_LDM  0x80000019  Yes   No   Level 2 load misses
    PAPI_L2_STM  0x8000001a  Yes   No   Level 2 store misses
    PAPI_BTAC_M  0x8000001b  No    No   Branch target address cache misses
    PAPI_PRF_DM  0x8000001c  Yes   No   Data prefetch cache misses
    PAPI_L3_DCH  0x8000001d  No    No   Level 3 data cache hits
    PAPI_TLB_SD  0x8000001e  No    No   Translation lookaside buffer shootdowns
    PAPI_CSR_FAL 0x8000001f  No    No   Failed store conditional instructions
    PAPI_CSR_SUC 0x80000020  No    No   Successful store conditional instructions
    PAPI_CSR_TOT 0x80000021  No    No   Total store conditional instructions
    PAPI_MEM_SCY 0x80000022  No    No   Cycles Stalled Waiting for memory accesses
    PAPI_MEM_RCY 0x80000023  No    No   Cycles Stalled Waiting for memory Reads
    PAPI_MEM_WCY 0x80000024  Yes   No   Cycles Stalled Waiting for memory writes
    PAPI_STL_ICY 0x80000025  Yes   No   Cycles with no instruction issue
    PAPI_FUL_ICY 0x80000026  Yes   Yes  Cycles with maximum instruction issue
    PAPI_STL_CCY 0x80000027  Yes   No   Cycles with no instructions completed
    PAPI_FUL_CCY 0x80000028  Yes   No   Cycles with maximum instructions completed
    PAPI_HW_INT  0x80000029  No    No   Hardware interrupts
    PAPI_BR_UCN  0x8000002a  Yes   Yes  Unconditional branch instructions
    PAPI_BR_CN   0x8000002b  Yes   No   Conditional branch instructions
    PAPI_BR_TKN  0x8000002c  Yes   Yes  Conditional branch instructions taken
    PAPI_BR_NTK  0x8000002d  Yes   No   Conditional branch instructions not taken
    PAPI_BR_MSP  0x8000002e  Yes   No   Conditional branch instructions mispredicted
    PAPI_BR_PRC  0x8000002f  Yes   Yes  Conditional branch instructions correctly predicted
    PAPI_FMA_INS 0x80000030  No    No   FMA instructions completed
    PAPI_TOT_IIS 0x80000031  No    No   Instructions issued
    PAPI_TOT_INS 0x80000032  Yes   No   Instructions completed
    PAPI_INT_INS 0x80000033  No    No   Integer instructions
    PAPI_FP_INS  0x80000034  No    No   Floating point instructions
    PAPI_LD_INS  0x80000035  Yes   No   Load instructions
    PAPI_SR_INS  0x80000036  Yes   No   Store instructions
    PAPI_BR_INS  0x80000037  Yes   No   Branch instructions
    PAPI_VEC_INS 0x80000038  No    No   Vector/SIMD instructions (could include integer)
    PAPI_RES_STL 0x80000039  Yes   No   Cycles stalled on any resource
    PAPI_FP_STAL 0x8000003a  No    No   Cycles the FP unit(s) are stalled
    PAPI_TOT_CYC 0x8000003b  Yes   No   Total cycles
    PAPI_LST_INS 0x8000003c  Yes   Yes  Load/store instructions completed
    PAPI_SYC_INS 0x8000003d  No    No   Synchronization instructions completed
    PAPI_L1_DCH  0x8000003e  No    No   Level 1 data cache hits
    PAPI_L2_DCH  0x8000003f  No    No   Level 2 data cache hits
    PAPI_L1_DCA  0x80000040  No    No   Level 1 data cache accesses
    PAPI_L2_DCA  0x80000041  Yes   No   Level 2 data cache accesses
    PAPI_L3_DCA  0x80000042  Yes   Yes  Level 3 data cache accesses
    PAPI_L1_DCR  0x80000043  No    No   Level 1 data cache reads
    PAPI_L2_DCR  0x80000044  Yes   No   Level 2 data cache reads
    PAPI_L3_DCR  0x80000045  Yes   No   Level 3 data cache reads
    PAPI_L1_DCW  0x80000046  No    No   Level 1 data cache writes
    PAPI_L2_DCW  0x80000047  Yes   Yes  Level 2 data cache writes
    PAPI_L3_DCW  0x80000048  Yes   No   Level 3 data cache writes
    PAPI_L1_ICH  0x80000049  No    No   Level 1 instruction cache hits
    PAPI_L2_ICH  0x8000004a  Yes   No   Level 2 instruction cache hits
    PAPI_L3_ICH  0x8000004b  No    No   Level 3 instruction cache hits
    PAPI_L1_ICA  0x8000004c  No    No   Level 1 instruction cache accesses
    PAPI_L2_ICA  0x8000004d  Yes   No   Level 2 instruction cache accesses
    PAPI_L3_ICA  0x8000004e  Yes   No   Level 3 instruction cache accesses
    PAPI_L1_ICR  0x8000004f  No    No   Level 1 instruction cache reads
    PAPI_L2_ICR  0x80000050  Yes   No   Level 2 instruction cache reads
    PAPI_L3_ICR  0x80000051  Yes   No   Level 3 instruction cache reads
    PAPI_L1_ICW  0x80000052  No    No   Level 1 instruction cache writes
    PAPI_L2_ICW  0x80000053  No    No   Level 2 instruction cache writes
    PAPI_L3_ICW  0x80000054  No    No   Level 3 instruction cache writes
    PAPI_L1_TCH  0x80000055  No    No   Level 1 total cache hits
    PAPI_L2_TCH  0x80000056  No    No   Level 2 total cache hits
    PAPI_L3_TCH  0x80000057  No    No   Level 3 total cache hits
    PAPI_L1_TCA  0x80000058  No    No   Level 1 total cache accesses
    PAPI_L2_TCA  0x80000059  Yes   Yes  Level 2 total cache accesses
    PAPI_L3_TCA  0x8000005a  Yes   No   Level 3 total cache accesses
    PAPI_L1_TCR  0x8000005b  No    No   Level 1 total cache reads
    PAPI_L2_TCR  0x8000005c  Yes   Yes  Level 2 total cache reads
    PAPI_L3_TCR  0x8000005d  Yes   Yes  Level 3 total cache reads
    PAPI_L1_TCW  0x8000005e  No    No   Level 1 total cache writes
    PAPI_L2_TCW  0x8000005f  Yes   Yes  Level 2 total cache writes
    PAPI_L3_TCW  0x80000060  Yes   No   Level 3 total cache writes
    PAPI_FML_INS 0x80000061  No    No   Floating point multiply instructions
    PAPI_FAD_INS 0x80000062  No    No   Floating point add instructions
    PAPI_FDV_INS 0x80000063  No    No   Floating point divide instructions
    PAPI_FSQ_INS 0x80000064  No    No   Floating point square root instructions
    PAPI_FNV_INS 0x80000065  No    No   Floating point inverse instructions
    PAPI_FP_OPS  0x80000066  No    No   Floating point operations
    PAPI_SP_OPS  0x80000067  Yes   Yes  Floating point operations; optimized to count scaled single precision vector operations
    PAPI_DP_OPS  0x80000068  Yes   Yes  Floating point operations; optimized to count scaled double precision vector operations
    PAPI_VEC_SP  0x80000069  Yes   Yes  Single precision vector/SIMD instructions
    PAPI_VEC_DP  0x8000006a  Yes   Yes  Double precision vector/SIMD instructions
    PAPI_REF_CYC 0x8000006b  Yes   No   Reference clock cycles
    --------------------------------------------------------------------------------
    Of 108 possible events, 59 are available, of which 18 are derived.
    
    avail.c                                     PASSED


#### Show only Avail


```bash
%%bash
module load papi papi-devel
papi_avail | egrep 'Deriv|Yes'
```

        Name        Code    Avail Deriv Description (Note)
    PAPI_L1_DCM  0x80000000  Yes   No   Level 1 data cache misses
    PAPI_L1_ICM  0x80000001  Yes   No   Level 1 instruction cache misses
    PAPI_L2_DCM  0x80000002  Yes   Yes  Level 2 data cache misses
    PAPI_L2_ICM  0x80000003  Yes   No   Level 2 instruction cache misses
    PAPI_L1_TCM  0x80000006  Yes   Yes  Level 1 cache misses
    PAPI_L2_TCM  0x80000007  Yes   No   Level 2 cache misses
    PAPI_L3_TCM  0x80000008  Yes   No   Level 3 cache misses
    PAPI_CA_SNP  0x80000009  Yes   No   Requests for a snoop
    PAPI_CA_SHR  0x8000000a  Yes   No   Requests for exclusive access to shared cache line
    PAPI_CA_CLN  0x8000000b  Yes   No   Requests for exclusive access to clean cache line
    PAPI_CA_ITV  0x8000000d  Yes   No   Requests for cache line intervention
    PAPI_L3_LDM  0x8000000e  Yes   No   Level 3 load misses
    PAPI_TLB_DM  0x80000014  Yes   Yes  Data translation lookaside buffer misses
    PAPI_TLB_IM  0x80000015  Yes   No   Instruction translation lookaside buffer misses
    PAPI_L1_LDM  0x80000017  Yes   No   Level 1 load misses
    PAPI_L1_STM  0x80000018  Yes   No   Level 1 store misses
    PAPI_L2_LDM  0x80000019  Yes   No   Level 2 load misses
    PAPI_L2_STM  0x8000001a  Yes   No   Level 2 store misses
    PAPI_PRF_DM  0x8000001c  Yes   No   Data prefetch cache misses
    PAPI_MEM_WCY 0x80000024  Yes   No   Cycles Stalled Waiting for memory writes
    PAPI_STL_ICY 0x80000025  Yes   No   Cycles with no instruction issue
    PAPI_FUL_ICY 0x80000026  Yes   Yes  Cycles with maximum instruction issue
    PAPI_STL_CCY 0x80000027  Yes   No   Cycles with no instructions completed
    PAPI_FUL_CCY 0x80000028  Yes   No   Cycles with maximum instructions completed
    PAPI_BR_UCN  0x8000002a  Yes   Yes  Unconditional branch instructions
    PAPI_BR_CN   0x8000002b  Yes   No   Conditional branch instructions
    PAPI_BR_TKN  0x8000002c  Yes   Yes  Conditional branch instructions taken
    PAPI_BR_NTK  0x8000002d  Yes   No   Conditional branch instructions not taken
    PAPI_BR_MSP  0x8000002e  Yes   No   Conditional branch instructions mispredicted
    PAPI_BR_PRC  0x8000002f  Yes   Yes  Conditional branch instructions correctly predicted
    PAPI_TOT_INS 0x80000032  Yes   No   Instructions completed
    PAPI_LD_INS  0x80000035  Yes   No   Load instructions
    PAPI_SR_INS  0x80000036  Yes   No   Store instructions
    PAPI_BR_INS  0x80000037  Yes   No   Branch instructions
    PAPI_RES_STL 0x80000039  Yes   No   Cycles stalled on any resource
    PAPI_TOT_CYC 0x8000003b  Yes   No   Total cycles
    PAPI_LST_INS 0x8000003c  Yes   Yes  Load/store instructions completed
    PAPI_L2_DCA  0x80000041  Yes   No   Level 2 data cache accesses
    PAPI_L3_DCA  0x80000042  Yes   Yes  Level 3 data cache accesses
    PAPI_L2_DCR  0x80000044  Yes   No   Level 2 data cache reads
    PAPI_L3_DCR  0x80000045  Yes   No   Level 3 data cache reads
    PAPI_L2_DCW  0x80000047  Yes   Yes  Level 2 data cache writes
    PAPI_L3_DCW  0x80000048  Yes   No   Level 3 data cache writes
    PAPI_L2_ICH  0x8000004a  Yes   No   Level 2 instruction cache hits
    PAPI_L2_ICA  0x8000004d  Yes   No   Level 2 instruction cache accesses
    PAPI_L3_ICA  0x8000004e  Yes   No   Level 3 instruction cache accesses
    PAPI_L2_ICR  0x80000050  Yes   No   Level 2 instruction cache reads
    PAPI_L3_ICR  0x80000051  Yes   No   Level 3 instruction cache reads
    PAPI_L2_TCA  0x80000059  Yes   Yes  Level 2 total cache accesses
    PAPI_L3_TCA  0x8000005a  Yes   No   Level 3 total cache accesses
    PAPI_L2_TCR  0x8000005c  Yes   Yes  Level 2 total cache reads
    PAPI_L3_TCR  0x8000005d  Yes   Yes  Level 3 total cache reads
    PAPI_L2_TCW  0x8000005f  Yes   Yes  Level 2 total cache writes
    PAPI_L3_TCW  0x80000060  Yes   No   Level 3 total cache writes
    PAPI_SP_OPS  0x80000067  Yes   Yes  Floating point operations; optimized to count scaled single precision vector operations
    PAPI_DP_OPS  0x80000068  Yes   Yes  Floating point operations; optimized to count scaled double precision vector operations
    PAPI_VEC_SP  0x80000069  Yes   Yes  Single precision vector/SIMD instructions
    PAPI_VEC_DP  0x8000006a  Yes   Yes  Double precision vector/SIMD instructions
    PAPI_REF_CYC 0x8000006b  Yes   No   Reference clock cycles



```bash
%%bash
module load papi papi-devel
papi_component_avail
```

    Available components and hardware information.
    --------------------------------------------------------------------------------
    PAPI Version             : 5.5.1.0
    Vendor string and code   : GenuineIntel (1)
    Model string and code    : Intel(R) Xeon(R) Gold 6152 CPU @ 2.10GHz (85)
    CPU Revision             : 4.000000
    CPUID Info               : Family: 6  Model: 85  Stepping: 4
    CPU Max Megahertz        : 2101
    CPU Min Megahertz        : 1000
    Hdw Threads per core     : 2
    Cores per Socket         : 22
    Sockets                  : 2
    NUMA Nodes               : 2
    CPUs per Node            : 44
    Total CPUs               : 88
    Running in a VM          : no
    Number Hardware Counters : 11
    Max Multiplex Counters   : 384
    --------------------------------------------------------------------------------
    
    Compiled-in components:
    Name:   perf_event              Linux perf_event CPU counters
    Name:   perf_event_uncore       Linux perf_event CPU uncore and northbridge
       \-> Disabled: No uncore PMUs or events found
    Name:   rapl                    Linux RAPL energy measurements
       \-> Disabled: CPU model not supported
    Name:   net                     Linux network driver statistics
    Name:   lustre                  Lustre filesystem statistics
       \-> Disabled: No lustre filesystems found
    Name:   infiniband              Linux Infiniband statistics using the sysfs interface
    
    Active components:
    Name:   perf_event              Linux perf_event CPU counters
                                    Native: 162, Preset: 59, Counters: 11
                                    PMU's supported: ix86arch, perf, perf_raw, skl
    
    Name:   net                     Linux network driver statistics
                                    Native: 128, Preset: 0, Counters: 320
                                    PMU's supported: 
    
    Name:   infiniband              Linux Infiniband statistics using the sysfs interface
                                    Native: 21, Preset: 0, Counters: 21
                                    PMU's supported: 
    
    
    --------------------------------------------------------------------------------
    component.c                             PASSED



```bash
%%bash
gfortran --version
```

    GNU Fortran (GCC) 4.8.5 20150623 (Red Hat 4.8.5-39)
    Copyright (C) 2015 Free Software Foundation, Inc.
    
    GNU Fortran comes with NO WARRANTY, to the extent permitted by law.
    You may redistribute copies of GNU Fortran
    under the terms of the GNU General Public License.
    For more information about these matters, see the file named COPYING
    



```bash
%%bash
module load papi papi-devel
echo $CPATH
echo $LIBRARY_PATH
```

    /opt/bullxde/perftools/papi/5.5.1.0/include/perfmon:/opt/bullxde/perftools/papi/5.5.1.0/include
    /opt/bullxde/perftools/papi/5.5.1.0/lib64



```python
! ls /opt/bullxde/perftools/papi/5.5.1.0/include
```

    f77papi.h  f90papi.h  fpapi.h  papi.h  papiStdEventDefs.h



```python
! ls /opt/bullxde/perftools/papi/5.5.1.0/lib64
```

    libpapi.a   libpapi.so.5      libpapi.so.5.5.1.0  libpfm.so    libpfm.so.4.8.0
    libpapi.so  libpapi.so.5.5.1  libpfm.a		  libpfm.so.4  pkgconfig


#### Test

Testing one small code only to see if works


```python
%%writefile test01.f90
!-----------------------------------------------------------------------
program test01
    implicit none
    include 'f90papi.h'

    integer, parameter :: N = 512
    double precision, dimension(N, N) :: a, b
    double precision :: t1, t2, rate
    integer :: i, j

    integer, parameter :: max_event = 3
    integer, dimension(max_event) :: event
    integer(kind=8), dimension(max_event) :: values
    integer :: retval

    event(1) = PAPI_LD_INS
    event(2) = PAPI_SR_INS
    !event(x) = PAPI_L1_TCM
    !event(x) = PAPI_L2_TCM
    event(3) = PAPI_L3_TCM

    call init01(a, b, N)            ! init matrix cels

    call PAPIF_start_counters (event, max_event, retval)
    if (retval /= PAPI_OK) then
        call PAPIF_perror('PAPIF_start_counters')
        stop
    endif

    call cpu_time(t1)               ! CPU elapsed time in seconds

    do j = 1, N                     ! transpose the matrix
        do i = 1, N
            b(i, j) = a(j, i)
        enddo
    enddo

    call cpu_time(t2)               ! CPU elapsed time in seconds
    
    ! Read out PAPI counters
    call PAPIF_read_counters(values, max_event, retval)
    if (retval /= PAPI_OK) then
        call PAPIF_perror('PAPIF_read_counters')
        stop
    endif

    call check01(a, b, N)           ! check the transpose

    ! Print Timings
    print*, 'PAPI_LD_INS', values(1)
    print*, 'PAPI_SR_INS', values(2)
    !print*, 'PAPI_L1_TCM', values(x)
    !print*, 'PAPI_L2_TCM', values(x)
    print*, 'PAPI_L3_TCM', values(3)
    rate = 2 * N * N / (1024 * 1024 * (t2 - t1))
    print '(a, i0, a, f10.6, a, f6.1, a)',  &
          "N=", N, ",  T=", t2 - t1, " s,  Rate=", rate, " MB/s"

contains
    
    subroutine init01(a, b, N)
        implicit none
        integer, intent(in) :: N
        double precision, intent(inout) :: a(N, N), b(N, N)
        integer :: i, j
        do i = 1, N
            do j = 1, N
                a(i, j) = 1.0
                b(i, j) = 0.0
            enddo
        enddo
    end subroutine

    subroutine check01(a, b, N)
        implicit none
        integer, intent(in) :: N
        double precision, intent(in) :: a(N, N), b(N, N)
        integer :: i, j
        do i = 1, N
            do j = 1, N
                if ( a(i, j) /= b(i, j) ) then
                    print *, "Error: ", i, j
                endif
            enddo
        enddo
    end subroutine

end program

```

    Overwriting test01.f90



```bash
%%bash
module load papi papi-devel
gfortran -lpapi -o test01 test01.f90 \
         -I /opt/bullxde/perftools/papi/5.5.1.0/include
```


```bash
%%bash
module load papi papi-devel
./test01
```

     PAPI_LD_INS              1838017
     PAPI_SR_INS               525961
     PAPI_L3_TCM                 1379
    N=512,  T=  0.001251 s,  Rate= 399.7 MB/s



```python

```
