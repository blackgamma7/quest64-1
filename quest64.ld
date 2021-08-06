SECTIONS
{
    __romPos = 0x0;
    . = __romPos;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(16)
    {
        header_TEXT_START = .;
        header_TEXT_END = .;
        header_DATA_START = .;
        header_s = .;
        build/asm/header.s.o(.data);
        header_DATA_END = .;
        header_BSS_START = .;
        header_BSS_END = .;
    }
    header_ROM_END = 0x40;
    __romPos = 0x40;

    __romPos = 0x40;
    . = __romPos;
    boot_ROM_START = __romPos;
    boot_VRAM = ADDR(.boot);
    .boot : AT(boot_ROM_START) SUBALIGN(16)
    {
        boot_TEXT_START = .;
        boot_TEXT_END = .;
        boot_DATA_START = .;
        boot_bin = .;
        build/assets/boot.bin.o(.data);
        boot_DATA_END = .;
        boot_BSS_START = .;
        boot_BSS_END = .;
    }
    boot_ROM_END = 0x1000;
    __romPos = 0x1000;

    __romPos = 0x1000;
    . = __romPos;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80000400 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/asm/1000.s.o(.text);
        build/src/init.c.o(.text);
        build/src/1130.c.o(.text);
        build/asm/1850.s.o(.text);
        build/asm/33D0.s.o(.text);
        build/asm/8650.s.o(.text);
        build/asm/97B0.s.o(.text);
        build/src/C120.c.o(.text);
        build/asm/C910.s.o(.text);
        build/src/FA60.c.o(.text);
        build/src/shadow.c.o(.text);
        build/asm/12740.s.o(.text);
        build/asm/15440.s.o(.text);
        build/asm/191F0.s.o(.text);
        build/asm/1BCD0.s.o(.text);
        build/asm/1D160.s.o(.text);
        build/asm/1E4B0.s.o(.text);
        build/src/1EDF0.c.o(.text);
        build/src/inventory.c.o(.text);
        build/asm/screen_dim.s.o(.text);
        build/asm/23740.s.o(.text);
        build/asm/srand.s.o(.text);
        build/asm/24E60.s.o(.text);
        build/src/25290.c.o(.text);
        build/asm/271F0.s.o(.text);
        build/src/27640.c.o(.text);
        build/asm/2C110.s.o(.text);
        build/asm/2F1E0.s.o(.text);
        build/asm/31A10.s.o(.text);
        build/asm/31F00.s.o(.text);
        build/asm/32840.s.o(.text);
        build/asm/328F0.s.o(.text);
        build/asm/initialize.s.o(.text);
        build/asm/createthread.s.o(.text);
        build/asm/startthread.s.o(.text);
        build/asm/pimgr.s.o(.text);
        build/asm/createmesgqueue.s.o(.text);
        build/asm/visetevent.s.o(.text);
        build/asm/seteventmesg.s.o(.text);
        build/asm/recvmesg.s.o(.text);
        build/asm/setintmask.s.o(.text);
        build/asm/sendmesg.s.o(.text);
        build/asm/writebackdcacheall.s.o(.text);
        build/asm/sptaskyield.s.o(.text);
        build/asm/sptaskyielded.s.o(.text);
        build/asm/sptask.s.o(.text);
        build/asm/virepeatline.s.o(.text);
        build/asm/viswapbuf.s.o(.text);
        build/asm/vigetcurrframebuf.s.o(.text);
        build/asm/vimgr.s.o(.text);
        build/asm/visetmode.s.o(.text);
        build/asm/visetspecial.s.o(.text);
        build/asm/virtualtophysical.s.o(.text);
        build/asm/writebackdcache.s.o(.text);
        build/asm/gettime.s.o(.text);
        build/asm/sqrtf.s.o(.text);
        build/asm/position.s.o(.text);
        build/asm/sins.s.o(.text);
        build/asm/mtxutil.s.o(.text);
        build/asm/mtxcatf.s.o(.text);
        build/asm/sinf.s.o(.text);
        build/asm/ortho.s.o(.text);
        build/asm/perspective.s.o(.text);
        build/asm/lookatref.s.o(.text);
        build/asm/translate.s.o(.text);
        build/asm/cosf.s.o(.text);
        build/asm/sprintf.s.o(.text);
        build/asm/invalicache.s.o(.text);
        build/asm/invaldcache.s.o(.text);
        build/asm/pidma.s.o(.text);
        build/asm/heapinit.s.o(.text);
        build/asm/heapalloc.s.o(.text);
        build/asm/aisetfreq.s.o(.text);
        build/asm/seqpsetvol.s.o(.text);
        build/asm/synthesizer.s.o(.text);
        build/asm/aigetlen.s.o(.text);
        build/asm/aisetnextbuf.s.o(.text);
        build/asm/n_alseqpgetvol.s.o(.text);
        build/asm/csplayer.s.o(.text);
        build/asm/bnkf.s.o(.text);
        build/asm/seqpsetbank.s.o(.text);
        build/asm/cseq.s.o(.text);
        build/asm/cspsetseq.s.o(.text);
        build/asm/seqpplay.s.o(.text);
        build/asm/seqpstop.s.o(.text);
        build/asm/seqpgetstate.s.o(.text);
        build/asm/sndplayer.s.o(.text);
        build/asm/sndpallocate.s.o(.text);
        build/asm/sndpsetsound.s.o(.text);
        build/asm/sndpgetstate.s.o(.text);
        build/asm/sndplay.s.o(.text);
        build/asm/sndpstop.s.o(.text);
        build/asm/sndpsetpitch.s.o(.text);
        build/asm/sndpsetvol.s.o(.text);
        build/asm/sndpsetpan.s.o(.text);
        build/asm/ll.s.o(.text);
        build/asm/pfsinitpak.s.o(.text);
        build/asm/motor.s.o(.text);
        build/asm/deletedfuncs.s.o(.text);
        build/asm/controller.s.o(.text);
        build/asm/contsetch.s.o(.text);
        build/asm/contreaddata.s.o(.text);
        build/asm/pfsfilestate.s.o(.text);
        build/asm/pfsfreeblocks.s.o(.text);
        build/asm/pfsallocatefile.s.o(.text);
        build/asm/pfsdeletefile.s.o(.text);
        build/asm/pfsreadwritefile.s.o(.text);
        build/asm/__osGetId.s.o(.text);
        build/asm/pfsnumfiles.s.o(.text);
        build/asm/contquery.s.o(.text);
        build/asm/setsr.s.o(.text);
        build/asm/getsr.s.o(.text);
        build/asm/setfpccsr.s.o(.text);
        build/asm/sprawread.s.o(.text);
        build/asm/sprawwrite.s.o(.text);
        build/asm/exceptasm.s.o(.text);
        build/asm/maptlbrdb.s.o(.text);
        build/asm/pirawread.s.o(.text);
        build/asm/bzero.s.o(.text);
        build/asm/interrupt.s.o(.text);
        build/asm/thread.s.o(.text);
        build/asm/cartrominit.s.o(.text);
        build/asm/leodiskinit.s.o(.text);
        build/asm/siacsDuplicate.s.o(.text);
        build/asm/getthreadpri.s.o(.text);
        build/asm/setthreadpri.s.o(.text);
        build/asm/pirawdma.s.o(.text);
        build/asm/epiramdma.s.o(.text);
        build/asm/devmgr.s.o(.text);
        build/asm/vi.s.o(.text);
        build/asm/spsetstat.s.o(.text);
        build/asm/spgetstat.s.o(.text);
        build/asm/bcopy.s.o(.text);
        build/asm/spsetpc.s.o(.text);
        build/asm/sprawdma.s.o(.text);
        build/asm/sp.s.o(.text);
        build/asm/timerintr.s.o(.text);
        build/asm/vigetcurrcontext.s.o(.text);
        build/asm/viswapcontext.s.o(.text);
        build/asm/getcount.s.o(.text);
        build/asm/probetlb.s.o(.text);
        build/asm/xprintf.s.o(.text);
        build/asm/string.s.o(.text);
        build/asm/jammesg.s.o(.text);
        build/asm/syndelete.s.o(.text);
        build/asm/event.s.o(.text);
        build/asm/drvrNew.s.o(.text);
        build/asm/synallocfx.s.o(.text);
        build/asm/mainbus.s.o(.text);
        build/asm/load.s.o(.text);
        build/asm/resample.s.o(.text);
        build/asm/env.s.o(.text);
        build/asm/auxbus.s.o(.text);
        build/asm/save.s.o(.text);
        build/asm/ai.s.o(.text);
        build/asm/seqplayer.s.o(.text);
        build/asm/synaddplayer.s.o(.text);
        build/asm/synstopvoice.s.o(.text);
        build/asm/synfreevoice.s.o(.text);
        build/asm/synsetvol.s.o(.text);
        build/asm/synsetpitch.s.o(.text);
        build/asm/synallocvoice.s.o(.text);
        build/asm/cents2ratio.s.o(.text);
        build/asm/synstartvoiceparam.s.o(.text);
        build/asm/synsetpan.s.o(.text);
        build/asm/synsetfxmix.s.o(.text);
        build/asm/synstartvoice.s.o(.text);
        build/asm/siacs.s.o(.text);
        build/asm/pfsgetstatus.s.o(.text);
        build/asm/contpfs.s.o(.text);
        build/asm/contramread.s.o(.text);
        build/asm/pfschecker.s.o(.text);
        build/asm/pfsisplug.s.o(.text);
        build/asm/sirawdma.s.o(.text);
        build/asm/crc.s.o(.text);
        build/asm/contramwrite.s.o(.text);
        build/asm/settimer.s.o(.text);
        build/asm/pfssearchfile.s.o(.text);
        build/asm/si.s.o(.text);
        build/asm/leointerrupt.s.o(.text);
        build/asm/destroythread.s.o(.text);
        build/asm/resetglobalintmask.s.o(.text);
        build/asm/epirawwrite.s.o(.text);
        build/asm/epirawread.s.o(.text);
        build/asm/setglobalintmask.s.o(.text);
        build/asm/yieldthread.s.o(.text);
        build/asm/setcompare.s.o(.text);
        build/asm/xlitob.s.o(.text);
        build/asm/xldtob.s.o(.text);
        build/asm/copy.s.o(.text);
        build/asm/filter.s.o(.text);
        build/asm/reverb.s.o(.text);
        build/asm/seq.s.o(.text);
        build/asm/synsetpriority.s.o(.text);
        main_TEXT_END = .;
        main_DATA_START = .;
        main_DATA_END = .;
        main_BSS_START = .;
        main_BSS_END = .;
    }
    main_ROM_END = 0x4AAF0;
    __romPos = 0x4AAF0;

    __romPos = 0x4AAF0;
    . = __romPos;
    ucode_boot_ROM_START = __romPos;
    ucode_boot_VRAM = ADDR(.ucode_boot);
    .ucode_boot : AT(ucode_boot_ROM_START) SUBALIGN(16)
    {
        ucode_boot_TEXT_START = .;
        ucode_boot_TEXT_END = .;
        ucode_boot_DATA_START = .;
        ucode_boot_bin = .;
        build/assets/ucode_boot.bin.o(.data);
        ucode_boot_DATA_END = .;
        ucode_boot_BSS_START = .;
        ucode_boot_BSS_END = .;
    }
    ucode_boot_ROM_END = 0x4ABC0;
    __romPos = 0x4ABC0;

    __romPos = 0x4ABC0;
    . = __romPos;
    ucode_ROM_START = __romPos;
    ucode_VRAM = ADDR(.ucode);
    .ucode : AT(ucode_ROM_START) SUBALIGN(16)
    {
        ucode_TEXT_START = .;
        ucode_TEXT_END = .;
        ucode_DATA_START = .;
        ucode_bin = .;
        build/assets/ucode.bin.o(.data);
        ucode_DATA_END = .;
        ucode_BSS_START = .;
        ucode_BSS_END = .;
    }
    ucode_ROM_END = 0x4BFF0;
    __romPos = 0x4BFF0;

    __romPos = 0x4BFF0;
    . = __romPos;
    _4BFF0_ROM_START = __romPos;
    _4BFF0_VRAM = ADDR(._4BFF0);
    ._4BFF0 : AT(_4BFF0_ROM_START) SUBALIGN(16)
    {
        _4BFF0_TEXT_START = .;
        _4BFF0_TEXT_END = .;
        _4BFF0_DATA_START = .;
        _4BFF0_bin = .;
        build/assets/4BFF0.bin.o(.data);
        _4BFF0_DATA_END = .;
        _4BFF0_BSS_START = .;
        _4BFF0_BSS_END = .;
    }
    _4BFF0_ROM_END = 0x72FD0;
    __romPos = 0x72FD0;

    __romPos = 0x72FD0;
    . = __romPos;
    ucode_data_ROM_START = __romPos;
    ucode_data_VRAM = ADDR(.ucode_data);
    .ucode_data : AT(ucode_data_ROM_START) SUBALIGN(16)
    {
        ucode_data_TEXT_START = .;
        ucode_data_TEXT_END = .;
        ucode_data_DATA_START = .;
        ucode_data_bin = .;
        build/assets/ucode_data.bin.o(.data);
        ucode_data_DATA_END = .;
        ucode_data_BSS_START = .;
        ucode_data_BSS_END = .;
    }
    ucode_data_ROM_END = 0x737D0;
    __romPos = 0x737D0;

    __romPos = 0x737D0;
    . = __romPos;
    _737D0_ROM_START = __romPos;
    _737D0_VRAM = ADDR(._737D0);
    ._737D0 : AT(_737D0_ROM_START) SUBALIGN(16)
    {
        _737D0_TEXT_START = .;
        _737D0_TEXT_END = .;
        _737D0_DATA_START = .;
        _737D0_bin = .;
        build/assets/737D0.bin.o(.data);
        _737D0_DATA_END = .;
        _737D0_BSS_START = .;
        _737D0_BSS_END = .;
    }
    _737D0_ROM_END = 0x73A90;
    __romPos = 0x73A90;

    __romPos = 0x73A90;
    . = __romPos;
    _73A90_ROM_START = __romPos;
    _73A90_VRAM = ADDR(._73A90);
    ._73A90 : AT(_73A90_ROM_START) SUBALIGN(16)
    {
        _73A90_TEXT_START = .;
        _73A90_TEXT_END = .;
        _73A90_DATA_START = .;
        _73A90_bin = .;
        build/assets/73A90.bin.o(.data);
        _73A90_DATA_END = .;
        _73A90_BSS_START = .;
        _73A90_BSS_END = .;
    }
    _73A90_ROM_END = 0xD4B3C0;
    __romPos = 0xD4B3C0;

    __romPos = 0xD4B3C0;
    . = __romPos;
    D4B3C0_ROM_START = __romPos;
    D4B3C0_VRAM = ADDR(.D4B3C0);
    .D4B3C0 : AT(D4B3C0_ROM_START) SUBALIGN(16)
    {
        D4B3C0_TEXT_START = .;
        D4B3C0_TEXT_END = .;
        D4B3C0_DATA_START = .;
        D4B3C0_bin = .;
        build/assets/D4B3C0.bin.o(.data);
        D4B3C0_DATA_END = .;
        D4B3C0_BSS_START = .;
        D4B3C0_BSS_END = .;
    }
    D4B3C0_ROM_END = 0xE7E800;
    __romPos = 0xE7E800;

    __romPos = 0xE7E800;
    . = __romPos;
    Instrument_ctl_ROM_START = __romPos;
    Instrument_ctl_VRAM = ADDR(.Instrument_ctl);
    .Instrument_ctl : AT(Instrument_ctl_ROM_START) SUBALIGN(16)
    {
        Instrument_ctl_TEXT_START = .;
        Instrument_ctl_TEXT_END = .;
        Instrument_ctl_DATA_START = .;
        Instrument_ctl_bin = .;
        build/assets/Instrument_ctl.bin.o(.data);
        Instrument_ctl_DATA_END = .;
        Instrument_ctl_BSS_START = .;
        Instrument_ctl_BSS_END = .;
    }
    Instrument_ctl_ROM_END = 0xE81610;
    __romPos = 0xE81610;

    __romPos = 0xE81610;
    . = __romPos;
    Instrument_tbl_ROM_START = __romPos;
    Instrument_tbl_VRAM = ADDR(.Instrument_tbl);
    .Instrument_tbl : AT(Instrument_tbl_ROM_START) SUBALIGN(16)
    {
        Instrument_tbl_TEXT_START = .;
        Instrument_tbl_TEXT_END = .;
        Instrument_tbl_DATA_START = .;
        Instrument_tbl_bin = .;
        build/assets/Instrument_tbl.bin.o(.data);
        Instrument_tbl_DATA_END = .;
        Instrument_tbl_BSS_START = .;
        Instrument_tbl_BSS_END = .;
    }
    Instrument_tbl_ROM_END = 0xEEE020;
    __romPos = 0xEEE020;

    __romPos = 0xEEE020;
    . = __romPos;
    SE_ctl_ROM_START = __romPos;
    SE_ctl_VRAM = ADDR(.SE_ctl);
    .SE_ctl : AT(SE_ctl_ROM_START) SUBALIGN(16)
    {
        SE_ctl_TEXT_START = .;
        SE_ctl_TEXT_END = .;
        SE_ctl_DATA_START = .;
        SE_ctl_bin = .;
        build/assets/SE_ctl.bin.o(.data);
        SE_ctl_DATA_END = .;
        SE_ctl_BSS_START = .;
        SE_ctl_BSS_END = .;
    }
    SE_ctl_ROM_END = 0xEEFCE0;
    __romPos = 0xEEFCE0;

    __romPos = 0xEEFCE0;
    . = __romPos;
    SE_tbl_ROM_START = __romPos;
    SE_tbl_VRAM = ADDR(.SE_tbl);
    .SE_tbl : AT(SE_tbl_ROM_START) SUBALIGN(16)
    {
        SE_tbl_TEXT_START = .;
        SE_tbl_TEXT_END = .;
        SE_tbl_DATA_START = .;
        SE_tbl_bin = .;
        build/assets/SE_tbl.bin.o(.data);
        SE_tbl_DATA_END = .;
        SE_tbl_BSS_START = .;
        SE_tbl_BSS_END = .;
    }
    SE_tbl_ROM_END = 0xF94380;
    __romPos = 0xF94380;

    __romPos = 0xF94380;
    . = __romPos;
    trailer_ROM_START = __romPos;
    trailer_VRAM = ADDR(.trailer);
    .trailer : AT(trailer_ROM_START) SUBALIGN(16)
    {
        trailer_TEXT_START = .;
        trailer_TEXT_END = .;
        trailer_DATA_START = .;
        trailer_bin = .;
        build/assets/trailer.bin.o(.data);
        trailer_DATA_END = .;
        trailer_BSS_START = .;
        trailer_BSS_END = .;
    }
    trailer_ROM_END = 0x1000000;
    __romPos = 0x1000000;

    /DISCARD/ :
    {
        *(*);
    }
}
