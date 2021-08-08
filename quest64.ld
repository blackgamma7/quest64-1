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
    _73A90_ROM_END = 0x77560;
    __romPos = 0x77560;

    __romPos = 0x77560;
    . = __romPos;
    map_data_common_ROM_START = __romPos;
    map_data_common_VRAM = ADDR(.map_data_common);
    .map_data_common : AT(map_data_common_ROM_START) SUBALIGN(16)
    {
        map_data_common_TEXT_START = .;
        map_data_common_TEXT_END = .;
        map_data_common_DATA_START = .;
        map_data_common_bin = .;
        build/assets/map_data_common.bin.o(.data);
        map_data_common_DATA_END = .;
        map_data_common_BSS_START = .;
        map_data_common_BSS_END = .;
    }
    map_data_common_ROM_END = 0x87360;
    __romPos = 0x87360;

    __romPos = 0x87360;
    . = __romPos;
    map_town_common_ROM_START = __romPos;
    map_town_common_VRAM = ADDR(.map_town_common);
    .map_town_common : AT(map_town_common_ROM_START) SUBALIGN(16)
    {
        map_town_common_TEXT_START = .;
        map_town_common_TEXT_END = .;
        map_town_common_DATA_START = .;
        map_town_common_bin = .;
        build/assets/map_town_common.bin.o(.data);
        map_town_common_DATA_END = .;
        map_town_common_BSS_START = .;
        map_town_common_BSS_END = .;
    }
    map_town_common_ROM_END = 0xF13F0;
    __romPos = 0xF13F0;

    __romPos = 0xF13F0;
    . = __romPos;
    map_melrode_ROM_START = __romPos;
    map_melrode_VRAM = ADDR(.map_melrode);
    .map_melrode : AT(map_melrode_ROM_START) SUBALIGN(16)
    {
        map_melrode_TEXT_START = .;
        map_melrode_TEXT_END = .;
        map_melrode_DATA_START = .;
        map_melrode_bin = .;
        build/assets/map_melrode.bin.o(.data);
        map_melrode_DATA_END = .;
        map_melrode_BSS_START = .;
        map_melrode_BSS_END = .;
    }
    map_melrode_ROM_END = 0x136090;
    __romPos = 0x136090;

    __romPos = 0x136090;
    . = __romPos;
    map_dondoran_ROM_START = __romPos;
    map_dondoran_VRAM = ADDR(.map_dondoran);
    .map_dondoran : AT(map_dondoran_ROM_START) SUBALIGN(16)
    {
        map_dondoran_TEXT_START = .;
        map_dondoran_TEXT_END = .;
        map_dondoran_DATA_START = .;
        map_dondoran_bin = .;
        build/assets/map_dondoran.bin.o(.data);
        map_dondoran_DATA_END = .;
        map_dondoran_BSS_START = .;
        map_dondoran_BSS_END = .;
    }
    map_dondoran_ROM_END = 0x167FE0;
    __romPos = 0x167FE0;

    __romPos = 0x167FE0;
    . = __romPos;
    map_holy_plain_ROM_START = __romPos;
    map_holy_plain_VRAM = ADDR(.map_holy_plain);
    .map_holy_plain : AT(map_holy_plain_ROM_START) SUBALIGN(16)
    {
        map_holy_plain_TEXT_START = .;
        map_holy_plain_TEXT_END = .;
        map_holy_plain_DATA_START = .;
        map_holy_plain_bin = .;
        build/assets/map_holy_plain.bin.o(.data);
        map_holy_plain_DATA_END = .;
        map_holy_plain_BSS_START = .;
        map_holy_plain_BSS_END = .;
    }
    map_holy_plain_ROM_END = 0x19E340;
    __romPos = 0x19E340;

    __romPos = 0x19E340;
    . = __romPos;
    map_dondoran_flats_ROM_START = __romPos;
    map_dondoran_flats_VRAM = ADDR(.map_dondoran_flats);
    .map_dondoran_flats : AT(map_dondoran_flats_ROM_START) SUBALIGN(16)
    {
        map_dondoran_flats_TEXT_START = .;
        map_dondoran_flats_TEXT_END = .;
        map_dondoran_flats_DATA_START = .;
        map_dondoran_flats_bin = .;
        build/assets/map_dondoran_flats.bin.o(.data);
        map_dondoran_flats_DATA_END = .;
        map_dondoran_flats_BSS_START = .;
        map_dondoran_flats_BSS_END = .;
    }
    map_dondoran_flats_ROM_END = 0x1CCA30;
    __romPos = 0x1CCA30;

    __romPos = 0x1CCA30;
    . = __romPos;
    map_larapool_ROM_START = __romPos;
    map_larapool_VRAM = ADDR(.map_larapool);
    .map_larapool : AT(map_larapool_ROM_START) SUBALIGN(16)
    {
        map_larapool_TEXT_START = .;
        map_larapool_TEXT_END = .;
        map_larapool_DATA_START = .;
        map_larapool_bin = .;
        build/assets/map_larapool.bin.o(.data);
        map_larapool_DATA_END = .;
        map_larapool_BSS_START = .;
        map_larapool_BSS_END = .;
    }
    map_larapool_ROM_END = 0x208EE0;
    __romPos = 0x208EE0;

    __romPos = 0x208EE0;
    . = __romPos;
    map_west_carmagh_ROM_START = __romPos;
    map_west_carmagh_VRAM = ADDR(.map_west_carmagh);
    .map_west_carmagh : AT(map_west_carmagh_ROM_START) SUBALIGN(16)
    {
        map_west_carmagh_TEXT_START = .;
        map_west_carmagh_TEXT_END = .;
        map_west_carmagh_DATA_START = .;
        map_west_carmagh_bin = .;
        build/assets/map_west_carmagh.bin.o(.data);
        map_west_carmagh_DATA_END = .;
        map_west_carmagh_BSS_START = .;
        map_west_carmagh_BSS_END = .;
    }
    map_west_carmagh_ROM_END = 0x253EA0;
    __romPos = 0x253EA0;

    __romPos = 0x253EA0;
    . = __romPos;
    map_normoon_ROM_START = __romPos;
    map_normoon_VRAM = ADDR(.map_normoon);
    .map_normoon : AT(map_normoon_ROM_START) SUBALIGN(16)
    {
        map_normoon_TEXT_START = .;
        map_normoon_TEXT_END = .;
        map_normoon_DATA_START = .;
        map_normoon_bin = .;
        build/assets/map_normoon.bin.o(.data);
        map_normoon_DATA_END = .;
        map_normoon_BSS_START = .;
        map_normoon_BSS_END = .;
    }
    map_normoon_ROM_END = 0x278A20;
    __romPos = 0x278A20;

    __romPos = 0x278A20;
    . = __romPos;
    map_east_limelin_ROM_START = __romPos;
    map_east_limelin_VRAM = ADDR(.map_east_limelin);
    .map_east_limelin : AT(map_east_limelin_ROM_START) SUBALIGN(16)
    {
        map_east_limelin_TEXT_START = .;
        map_east_limelin_TEXT_END = .;
        map_east_limelin_DATA_START = .;
        map_east_limelin_bin = .;
        build/assets/map_east_limelin.bin.o(.data);
        map_east_limelin_DATA_END = .;
        map_east_limelin_BSS_START = .;
        map_east_limelin_BSS_END = .;
    }
    map_east_limelin_ROM_END = 0x2AA680;
    __romPos = 0x2AA680;

    __romPos = 0x2AA680;
    . = __romPos;
    map_limelin_ROM_START = __romPos;
    map_limelin_VRAM = ADDR(.map_limelin);
    .map_limelin : AT(map_limelin_ROM_START) SUBALIGN(16)
    {
        map_limelin_TEXT_START = .;
        map_limelin_TEXT_END = .;
        map_limelin_DATA_START = .;
        map_limelin_bin = .;
        build/assets/map_limelin.bin.o(.data);
        map_limelin_DATA_END = .;
        map_limelin_BSS_START = .;
        map_limelin_BSS_END = .;
    }
    map_limelin_ROM_END = 0x2F8520;
    __romPos = 0x2F8520;

    __romPos = 0x2F8520;
    . = __romPos;
    map_dindom_dries_ROM_START = __romPos;
    map_dindom_dries_VRAM = ADDR(.map_dindom_dries);
    .map_dindom_dries : AT(map_dindom_dries_ROM_START) SUBALIGN(16)
    {
        map_dindom_dries_TEXT_START = .;
        map_dindom_dries_TEXT_END = .;
        map_dindom_dries_DATA_START = .;
        map_dindom_dries_bin = .;
        build/assets/map_dindom_dries.bin.o(.data);
        map_dindom_dries_DATA_END = .;
        map_dindom_dries_BSS_START = .;
        map_dindom_dries_BSS_END = .;
    }
    map_dindom_dries_ROM_END = 0x347960;
    __romPos = 0x347960;

    __romPos = 0x347960;
    . = __romPos;
    map_shamwood_ROM_START = __romPos;
    map_shamwood_VRAM = ADDR(.map_shamwood);
    .map_shamwood : AT(map_shamwood_ROM_START) SUBALIGN(16)
    {
        map_shamwood_TEXT_START = .;
        map_shamwood_TEXT_END = .;
        map_shamwood_DATA_START = .;
        map_shamwood_bin = .;
        build/assets/map_shamwood.bin.o(.data);
        map_shamwood_DATA_END = .;
        map_shamwood_BSS_START = .;
        map_shamwood_BSS_END = .;
    }
    map_shamwood_ROM_END = 0x36D970;
    __romPos = 0x36D970;

    __romPos = 0x36D970;
    . = __romPos;
    map_brannoch_ROM_START = __romPos;
    map_brannoch_VRAM = ADDR(.map_brannoch);
    .map_brannoch : AT(map_brannoch_ROM_START) SUBALIGN(16)
    {
        map_brannoch_TEXT_START = .;
        map_brannoch_TEXT_END = .;
        map_brannoch_DATA_START = .;
        map_brannoch_bin = .;
        build/assets/map_brannoch.bin.o(.data);
        map_brannoch_DATA_END = .;
        map_brannoch_BSS_START = .;
        map_brannoch_BSS_END = .;
    }
    map_brannoch_ROM_END = 0x3CB600;
    __romPos = 0x3CB600;

    __romPos = 0x3CB600;
    . = __romPos;
    map_skye_ROM_START = __romPos;
    map_skye_VRAM = ADDR(.map_skye);
    .map_skye : AT(map_skye_ROM_START) SUBALIGN(16)
    {
        map_skye_TEXT_START = .;
        map_skye_TEXT_END = .;
        map_skye_DATA_START = .;
        map_skye_bin = .;
        build/assets/map_skye.bin.o(.data);
        map_skye_DATA_END = .;
        map_skye_BSS_START = .;
        map_skye_BSS_END = .;
    }
    map_skye_ROM_END = 0x3E3200;
    __romPos = 0x3E3200;

    __romPos = 0x3E3200;
    . = __romPos;
    map_ship_ROM_START = __romPos;
    map_ship_VRAM = ADDR(.map_ship);
    .map_ship : AT(map_ship_ROM_START) SUBALIGN(16)
    {
        map_ship_TEXT_START = .;
        map_ship_TEXT_END = .;
        map_ship_DATA_START = .;
        map_ship_bin = .;
        build/assets/map_ship.bin.o(.data);
        map_ship_DATA_END = .;
        map_ship_BSS_START = .;
        map_ship_BSS_END = .;
    }
    map_ship_ROM_END = 0x439660;
    __romPos = 0x439660;

    __romPos = 0x439660;
    . = __romPos;
    map_dondoran_castle_ROM_START = __romPos;
    map_dondoran_castle_VRAM = ADDR(.map_dondoran_castle);
    .map_dondoran_castle : AT(map_dondoran_castle_ROM_START) SUBALIGN(16)
    {
        map_dondoran_castle_TEXT_START = .;
        map_dondoran_castle_TEXT_END = .;
        map_dondoran_castle_DATA_START = .;
        map_dondoran_castle_bin = .;
        build/assets/map_dondoran_castle.bin.o(.data);
        map_dondoran_castle_DATA_END = .;
        map_dondoran_castle_BSS_START = .;
        map_dondoran_castle_BSS_END = .;
    }
    map_dondoran_castle_ROM_END = 0x489A00;
    __romPos = 0x489A00;

    __romPos = 0x489A00;
    . = __romPos;
    map_melrode_houses_ROM_START = __romPos;
    map_melrode_houses_VRAM = ADDR(.map_melrode_houses);
    .map_melrode_houses : AT(map_melrode_houses_ROM_START) SUBALIGN(16)
    {
        map_melrode_houses_TEXT_START = .;
        map_melrode_houses_TEXT_END = .;
        map_melrode_houses_DATA_START = .;
        map_melrode_houses_bin = .;
        build/assets/map_melrode_houses.bin.o(.data);
        map_melrode_houses_DATA_END = .;
        map_melrode_houses_BSS_START = .;
        map_melrode_houses_BSS_END = .;
    }
    map_melrode_houses_ROM_END = 0x49F9A0;
    __romPos = 0x49F9A0;

    __romPos = 0x49F9A0;
    . = __romPos;
    map_dondoran_houses_ROM_START = __romPos;
    map_dondoran_houses_VRAM = ADDR(.map_dondoran_houses);
    .map_dondoran_houses : AT(map_dondoran_houses_ROM_START) SUBALIGN(16)
    {
        map_dondoran_houses_TEXT_START = .;
        map_dondoran_houses_TEXT_END = .;
        map_dondoran_houses_DATA_START = .;
        map_dondoran_houses_bin = .;
        build/assets/map_dondoran_houses.bin.o(.data);
        map_dondoran_houses_DATA_END = .;
        map_dondoran_houses_BSS_START = .;
        map_dondoran_houses_BSS_END = .;
    }
    map_dondoran_houses_ROM_END = 0x4CF450;
    __romPos = 0x4CF450;

    __romPos = 0x4CF450;
    . = __romPos;
    map_larapool_houses_ROM_START = __romPos;
    map_larapool_houses_VRAM = ADDR(.map_larapool_houses);
    .map_larapool_houses : AT(map_larapool_houses_ROM_START) SUBALIGN(16)
    {
        map_larapool_houses_TEXT_START = .;
        map_larapool_houses_TEXT_END = .;
        map_larapool_houses_DATA_START = .;
        map_larapool_houses_bin = .;
        build/assets/map_larapool_houses.bin.o(.data);
        map_larapool_houses_DATA_END = .;
        map_larapool_houses_BSS_START = .;
        map_larapool_houses_BSS_END = .;
    }
    map_larapool_houses_ROM_END = 0x4E6610;
    __romPos = 0x4E6610;

    __romPos = 0x4E6610;
    . = __romPos;
    map_larapool_houses_2_ROM_START = __romPos;
    map_larapool_houses_2_VRAM = ADDR(.map_larapool_houses_2);
    .map_larapool_houses_2 : AT(map_larapool_houses_2_ROM_START) SUBALIGN(16)
    {
        map_larapool_houses_2_TEXT_START = .;
        map_larapool_houses_2_TEXT_END = .;
        map_larapool_houses_2_DATA_START = .;
        map_larapool_houses_2_bin = .;
        build/assets/map_larapool_houses_2.bin.o(.data);
        map_larapool_houses_2_DATA_END = .;
        map_larapool_houses_2_BSS_START = .;
        map_larapool_houses_2_BSS_END = .;
    }
    map_larapool_houses_2_ROM_END = 0x4F6FE0;
    __romPos = 0x4F6FE0;

    __romPos = 0x4F6FE0;
    . = __romPos;
    map_windmills_ROM_START = __romPos;
    map_windmills_VRAM = ADDR(.map_windmills);
    .map_windmills : AT(map_windmills_ROM_START) SUBALIGN(16)
    {
        map_windmills_TEXT_START = .;
        map_windmills_TEXT_END = .;
        map_windmills_DATA_START = .;
        map_windmills_bin = .;
        build/assets/map_windmills.bin.o(.data);
        map_windmills_DATA_END = .;
        map_windmills_BSS_START = .;
        map_windmills_BSS_END = .;
    }
    map_windmills_ROM_END = 0x502150;
    __romPos = 0x502150;

    __romPos = 0x502150;
    . = __romPos;
    map_houses_5_ROM_START = __romPos;
    map_houses_5_VRAM = ADDR(.map_houses_5);
    .map_houses_5 : AT(map_houses_5_ROM_START) SUBALIGN(16)
    {
        map_houses_5_TEXT_START = .;
        map_houses_5_TEXT_END = .;
        map_houses_5_DATA_START = .;
        map_houses_5_bin = .;
        build/assets/map_houses_5.bin.o(.data);
        map_houses_5_DATA_END = .;
        map_houses_5_BSS_START = .;
        map_houses_5_BSS_END = .;
    }
    map_houses_5_ROM_END = 0x51C830;
    __romPos = 0x51C830;

    __romPos = 0x51C830;
    . = __romPos;
    map_limelin_castle_ROM_START = __romPos;
    map_limelin_castle_VRAM = ADDR(.map_limelin_castle);
    .map_limelin_castle : AT(map_limelin_castle_ROM_START) SUBALIGN(16)
    {
        map_limelin_castle_TEXT_START = .;
        map_limelin_castle_TEXT_END = .;
        map_limelin_castle_DATA_START = .;
        map_limelin_castle_bin = .;
        build/assets/map_limelin_castle.bin.o(.data);
        map_limelin_castle_DATA_END = .;
        map_limelin_castle_BSS_START = .;
        map_limelin_castle_BSS_END = .;
    }
    map_limelin_castle_ROM_END = 0x56FCB0;
    __romPos = 0x56FCB0;

    __romPos = 0x56FCB0;
    . = __romPos;
    map_houses_6_ROM_START = __romPos;
    map_houses_6_VRAM = ADDR(.map_houses_6);
    .map_houses_6 : AT(map_houses_6_ROM_START) SUBALIGN(16)
    {
        map_houses_6_TEXT_START = .;
        map_houses_6_TEXT_END = .;
        map_houses_6_DATA_START = .;
        map_houses_6_bin = .;
        build/assets/map_houses_6.bin.o(.data);
        map_houses_6_DATA_END = .;
        map_houses_6_BSS_START = .;
        map_houses_6_BSS_END = .;
    }
    map_houses_6_ROM_END = 0x59F860;
    __romPos = 0x59F860;

    __romPos = 0x59F860;
    . = __romPos;
    map_houses_7_ROM_START = __romPos;
    map_houses_7_VRAM = ADDR(.map_houses_7);
    .map_houses_7 : AT(map_houses_7_ROM_START) SUBALIGN(16)
    {
        map_houses_7_TEXT_START = .;
        map_houses_7_TEXT_END = .;
        map_houses_7_DATA_START = .;
        map_houses_7_bin = .;
        build/assets/map_houses_7.bin.o(.data);
        map_houses_7_DATA_END = .;
        map_houses_7_BSS_START = .;
        map_houses_7_BSS_END = .;
    }
    map_houses_7_ROM_END = 0x5D8E90;
    __romPos = 0x5D8E90;

    __romPos = 0x5D8E90;
    . = __romPos;
    map_shamwood_pyramid_ROM_START = __romPos;
    map_shamwood_pyramid_VRAM = ADDR(.map_shamwood_pyramid);
    .map_shamwood_pyramid : AT(map_shamwood_pyramid_ROM_START) SUBALIGN(16)
    {
        map_shamwood_pyramid_TEXT_START = .;
        map_shamwood_pyramid_TEXT_END = .;
        map_shamwood_pyramid_DATA_START = .;
        map_shamwood_pyramid_bin = .;
        build/assets/map_shamwood_pyramid.bin.o(.data);
        map_shamwood_pyramid_DATA_END = .;
        map_shamwood_pyramid_BSS_START = .;
        map_shamwood_pyramid_BSS_END = .;
    }
    map_shamwood_pyramid_ROM_END = 0x5EBB50;
    __romPos = 0x5EBB50;

    __romPos = 0x5EBB50;
    . = __romPos;
    map_ships_ROM_START = __romPos;
    map_ships_VRAM = ADDR(.map_ships);
    .map_ships : AT(map_ships_ROM_START) SUBALIGN(16)
    {
        map_ships_TEXT_START = .;
        map_ships_TEXT_END = .;
        map_ships_DATA_START = .;
        map_ships_bin = .;
        build/assets/map_ships.bin.o(.data);
        map_ships_DATA_END = .;
        map_ships_BSS_START = .;
        map_ships_BSS_END = .;
    }
    map_ships_ROM_END = 0x609A40;
    __romPos = 0x609A40;

    __romPos = 0x609A40;
    . = __romPos;
    map_blue_cave_ROM_START = __romPos;
    map_blue_cave_VRAM = ADDR(.map_blue_cave);
    .map_blue_cave : AT(map_blue_cave_ROM_START) SUBALIGN(16)
    {
        map_blue_cave_TEXT_START = .;
        map_blue_cave_TEXT_END = .;
        map_blue_cave_DATA_START = .;
        map_blue_cave_bin = .;
        build/assets/map_blue_cave.bin.o(.data);
        map_blue_cave_DATA_END = .;
        map_blue_cave_BSS_START = .;
        map_blue_cave_BSS_END = .;
    }
    map_blue_cave_ROM_END = 0x6677E0;
    __romPos = 0x6677E0;

    __romPos = 0x6677E0;
    . = __romPos;
    map_cull_hazard_ROM_START = __romPos;
    map_cull_hazard_VRAM = ADDR(.map_cull_hazard);
    .map_cull_hazard : AT(map_cull_hazard_ROM_START) SUBALIGN(16)
    {
        map_cull_hazard_TEXT_START = .;
        map_cull_hazard_TEXT_END = .;
        map_cull_hazard_DATA_START = .;
        map_cull_hazard_bin = .;
        build/assets/map_cull_hazard.bin.o(.data);
        map_cull_hazard_DATA_END = .;
        map_cull_hazard_BSS_START = .;
        map_cull_hazard_BSS_END = .;
    }
    map_cull_hazard_ROM_END = 0x6C69F0;
    __romPos = 0x6C69F0;

    __romPos = 0x6C69F0;
    . = __romPos;
    map_baragoon_tunnel_ROM_START = __romPos;
    map_baragoon_tunnel_VRAM = ADDR(.map_baragoon_tunnel);
    .map_baragoon_tunnel : AT(map_baragoon_tunnel_ROM_START) SUBALIGN(16)
    {
        map_baragoon_tunnel_TEXT_START = .;
        map_baragoon_tunnel_TEXT_END = .;
        map_baragoon_tunnel_DATA_START = .;
        map_baragoon_tunnel_bin = .;
        build/assets/map_baragoon_tunnel.bin.o(.data);
        map_baragoon_tunnel_DATA_END = .;
        map_baragoon_tunnel_BSS_START = .;
        map_baragoon_tunnel_BSS_END = .;
    }
    map_baragoon_tunnel_ROM_END = 0x720D60;
    __romPos = 0x720D60;

    __romPos = 0x720D60;
    . = __romPos;
    map_boil_hole_ROM_START = __romPos;
    map_boil_hole_VRAM = ADDR(.map_boil_hole);
    .map_boil_hole : AT(map_boil_hole_ROM_START) SUBALIGN(16)
    {
        map_boil_hole_TEXT_START = .;
        map_boil_hole_TEXT_END = .;
        map_boil_hole_DATA_START = .;
        map_boil_hole_bin = .;
        build/assets/map_boil_hole.bin.o(.data);
        map_boil_hole_DATA_END = .;
        map_boil_hole_BSS_START = .;
        map_boil_hole_BSS_END = .;
    }
    map_boil_hole_ROM_END = 0x7878A0;
    __romPos = 0x7878A0;

    __romPos = 0x7878A0;
    . = __romPos;
    map_connor_fortress_ROM_START = __romPos;
    map_connor_fortress_VRAM = ADDR(.map_connor_fortress);
    .map_connor_fortress : AT(map_connor_fortress_ROM_START) SUBALIGN(16)
    {
        map_connor_fortress_TEXT_START = .;
        map_connor_fortress_TEXT_END = .;
        map_connor_fortress_DATA_START = .;
        map_connor_fortress_bin = .;
        build/assets/map_connor_fortress.bin.o(.data);
        map_connor_fortress_DATA_END = .;
        map_connor_fortress_BSS_START = .;
        map_connor_fortress_BSS_END = .;
    }
    map_connor_fortress_ROM_END = 0x7C3EF0;
    __romPos = 0x7C3EF0;

    __romPos = 0x7C3EF0;
    . = __romPos;
    map_glencoe_forest_ROM_START = __romPos;
    map_glencoe_forest_VRAM = ADDR(.map_glencoe_forest);
    .map_glencoe_forest : AT(map_glencoe_forest_ROM_START) SUBALIGN(16)
    {
        map_glencoe_forest_TEXT_START = .;
        map_glencoe_forest_TEXT_END = .;
        map_glencoe_forest_DATA_START = .;
        map_glencoe_forest_bin = .;
        build/assets/map_glencoe_forest.bin.o(.data);
        map_glencoe_forest_DATA_END = .;
        map_glencoe_forest_BSS_START = .;
        map_glencoe_forest_BSS_END = .;
    }
    map_glencoe_forest_ROM_END = 0x7F1B40;
    __romPos = 0x7F1B40;

    __romPos = 0x7F1B40;
    . = __romPos;
    map_windward_forest_ROM_START = __romPos;
    map_windward_forest_VRAM = ADDR(.map_windward_forest);
    .map_windward_forest : AT(map_windward_forest_ROM_START) SUBALIGN(16)
    {
        map_windward_forest_TEXT_START = .;
        map_windward_forest_TEXT_END = .;
        map_windward_forest_DATA_START = .;
        map_windward_forest_bin = .;
        build/assets/map_windward_forest.bin.o(.data);
        map_windward_forest_DATA_END = .;
        map_windward_forest_BSS_START = .;
        map_windward_forest_BSS_END = .;
    }
    map_windward_forest_ROM_END = 0x825400;
    __romPos = 0x825400;

    __romPos = 0x825400;
    . = __romPos;
    map_world_of_mammon_ROM_START = __romPos;
    map_world_of_mammon_VRAM = ADDR(.map_world_of_mammon);
    .map_world_of_mammon : AT(map_world_of_mammon_ROM_START) SUBALIGN(16)
    {
        map_world_of_mammon_TEXT_START = .;
        map_world_of_mammon_TEXT_END = .;
        map_world_of_mammon_DATA_START = .;
        map_world_of_mammon_bin = .;
        build/assets/map_world_of_mammon.bin.o(.data);
        map_world_of_mammon_DATA_END = .;
        map_world_of_mammon_BSS_START = .;
        map_world_of_mammon_BSS_END = .;
    }
    map_world_of_mammon_ROM_END = 0x853450;
    __romPos = 0x853450;

    __romPos = 0x853450;
    . = __romPos;
    map_nepty_ROM_START = __romPos;
    map_nepty_VRAM = ADDR(.map_nepty);
    .map_nepty : AT(map_nepty_ROM_START) SUBALIGN(16)
    {
        map_nepty_TEXT_START = .;
        map_nepty_TEXT_END = .;
        map_nepty_DATA_START = .;
        map_nepty_bin = .;
        build/assets/map_nepty.bin.o(.data);
        map_nepty_DATA_END = .;
        map_nepty_BSS_START = .;
        map_nepty_BSS_END = .;
    }
    map_nepty_ROM_END = 0x86B830;
    __romPos = 0x86B830;

    __romPos = 0x86B830;
    . = __romPos;
    actor_Brian_ROM_START = __romPos;
    actor_Brian_VRAM = ADDR(.actor_Brian);
    .actor_Brian : AT(actor_Brian_ROM_START) SUBALIGN(16)
    {
        actor_Brian_TEXT_START = .;
        actor_Brian_TEXT_END = .;
        actor_Brian_DATA_START = .;
        actor_Brian_bin = .;
        build/assets/actor_Brian.bin.o(.data);
        actor_Brian_DATA_END = .;
        actor_Brian_BSS_START = .;
        actor_Brian_BSS_END = .;
    }
    actor_Brian_ROM_END = 0x871900;
    __romPos = 0x871900;

    __romPos = 0x871900;
    . = __romPos;
    actor_unk_Knights_ROM_START = __romPos;
    actor_unk_Knights_VRAM = ADDR(.actor_unk_Knights);
    .actor_unk_Knights : AT(actor_unk_Knights_ROM_START) SUBALIGN(16)
    {
        actor_unk_Knights_TEXT_START = .;
        actor_unk_Knights_TEXT_END = .;
        actor_unk_Knights_DATA_START = .;
        actor_unk_Knights_bin = .;
        build/assets/actor_unk_Knights.bin.o(.data);
        actor_unk_Knights_DATA_END = .;
        actor_unk_Knights_BSS_START = .;
        actor_unk_Knights_BSS_END = .;
    }
    actor_unk_Knights_ROM_END = 0x873F20;
    __romPos = 0x873F20;

    __romPos = 0x873F20;
    . = __romPos;
    NPC_Blob_ROM_START = __romPos;
    NPC_Blob_VRAM = ADDR(.NPC_Blob);
    .NPC_Blob : AT(NPC_Blob_ROM_START) SUBALIGN(16)
    {
        NPC_Blob_TEXT_START = .;
        NPC_Blob_TEXT_END = .;
        NPC_Blob_DATA_START = .;
        NPC_Blob_bin = .;
        build/assets/NPC_Blob.bin.o(.data);
        NPC_Blob_DATA_END = .;
        NPC_Blob_BSS_START = .;
        NPC_Blob_BSS_END = .;
    }
    NPC_Blob_ROM_END = 0xA725D0;
    __romPos = 0xA725D0;

    __romPos = 0xA725D0;
    . = __romPos;
    actor_Shannon_ROM_START = __romPos;
    actor_Shannon_VRAM = ADDR(.actor_Shannon);
    .actor_Shannon : AT(actor_Shannon_ROM_START) SUBALIGN(16)
    {
        actor_Shannon_TEXT_START = .;
        actor_Shannon_TEXT_END = .;
        actor_Shannon_DATA_START = .;
        actor_Shannon_bin = .;
        build/assets/actor_Shannon.bin.o(.data);
        actor_Shannon_DATA_END = .;
        actor_Shannon_BSS_START = .;
        actor_Shannon_BSS_END = .;
    }
    actor_Shannon_ROM_END = 0xA7A190;
    __romPos = 0xA7A190;

    __romPos = 0xA7A190;
    . = __romPos;
    HolyPlainsMonsters_ROM_START = __romPos;
    HolyPlainsMonsters_VRAM = ADDR(.HolyPlainsMonsters);
    .HolyPlainsMonsters : AT(HolyPlainsMonsters_ROM_START) SUBALIGN(16)
    {
        HolyPlainsMonsters_TEXT_START = .;
        HolyPlainsMonsters_TEXT_END = .;
        HolyPlainsMonsters_DATA_START = .;
        HolyPlainsMonsters_bin = .;
        build/assets/HolyPlainsMonsters.bin.o(.data);
        HolyPlainsMonsters_DATA_END = .;
        HolyPlainsMonsters_BSS_START = .;
        HolyPlainsMonsters_BSS_END = .;
    }
    HolyPlainsMonsters_ROM_END = 0xADC420;
    __romPos = 0xADC420;

    __romPos = 0xADC420;
    . = __romPos;
    DondoranMonsters_ROM_START = __romPos;
    DondoranMonsters_VRAM = ADDR(.DondoranMonsters);
    .DondoranMonsters : AT(DondoranMonsters_ROM_START) SUBALIGN(16)
    {
        DondoranMonsters_TEXT_START = .;
        DondoranMonsters_TEXT_END = .;
        DondoranMonsters_DATA_START = .;
        DondoranMonsters_bin = .;
        build/assets/DondoranMonsters.bin.o(.data);
        DondoranMonsters_DATA_END = .;
        DondoranMonsters_BSS_START = .;
        DondoranMonsters_BSS_END = .;
    }
    DondoranMonsters_ROM_END = 0xB637E0;
    __romPos = 0xB637E0;

    __romPos = 0xB637E0;
    . = __romPos;
    BlueCaveMonsters_ROM_START = __romPos;
    BlueCaveMonsters_VRAM = ADDR(.BlueCaveMonsters);
    .BlueCaveMonsters : AT(BlueCaveMonsters_ROM_START) SUBALIGN(16)
    {
        BlueCaveMonsters_TEXT_START = .;
        BlueCaveMonsters_TEXT_END = .;
        BlueCaveMonsters_DATA_START = .;
        BlueCaveMonsters_bin = .;
        build/assets/BlueCaveMonsters.bin.o(.data);
        BlueCaveMonsters_DATA_END = .;
        BlueCaveMonsters_BSS_START = .;
        BlueCaveMonsters_BSS_END = .;
    }
    BlueCaveMonsters_ROM_END = 0xBBE1E0;
    __romPos = 0xBBE1E0;

    __romPos = 0xBBE1E0;
    . = __romPos;
    DesertMonsters_ROM_START = __romPos;
    DesertMonsters_VRAM = ADDR(.DesertMonsters);
    .DesertMonsters : AT(DesertMonsters_ROM_START) SUBALIGN(16)
    {
        DesertMonsters_TEXT_START = .;
        DesertMonsters_TEXT_END = .;
        DesertMonsters_DATA_START = .;
        DesertMonsters_bin = .;
        build/assets/DesertMonsters.bin.o(.data);
        DesertMonsters_DATA_END = .;
        DesertMonsters_BSS_START = .;
        DesertMonsters_BSS_END = .;
    }
    DesertMonsters_ROM_END = 0xC31BD0;
    __romPos = 0xC31BD0;

    __romPos = 0xC31BD0;
    . = __romPos;
    NormoonMonsters_ROM_START = __romPos;
    NormoonMonsters_VRAM = ADDR(.NormoonMonsters);
    .NormoonMonsters : AT(NormoonMonsters_ROM_START) SUBALIGN(16)
    {
        NormoonMonsters_TEXT_START = .;
        NormoonMonsters_TEXT_END = .;
        NormoonMonsters_DATA_START = .;
        NormoonMonsters_bin = .;
        build/assets/NormoonMonsters.bin.o(.data);
        NormoonMonsters_DATA_END = .;
        NormoonMonsters_BSS_START = .;
        NormoonMonsters_BSS_END = .;
    }
    NormoonMonsters_ROM_END = 0xC9C1D0;
    __romPos = 0xC9C1D0;

    __romPos = 0xC9C1D0;
    . = __romPos;
    MammonMonsters_ROM_START = __romPos;
    MammonMonsters_VRAM = ADDR(.MammonMonsters);
    .MammonMonsters : AT(MammonMonsters_ROM_START) SUBALIGN(16)
    {
        MammonMonsters_TEXT_START = .;
        MammonMonsters_TEXT_END = .;
        MammonMonsters_DATA_START = .;
        MammonMonsters_bin = .;
        build/assets/MammonMonsters.bin.o(.data);
        MammonMonsters_DATA_END = .;
        MammonMonsters_BSS_START = .;
        MammonMonsters_BSS_END = .;
    }
    MammonMonsters_ROM_END = 0xCC4570;
    __romPos = 0xCC4570;

    __romPos = 0xCC4570;
    . = __romPos;
    boss_Nepty_ROM_START = __romPos;
    boss_Nepty_VRAM = ADDR(.boss_Nepty);
    .boss_Nepty : AT(boss_Nepty_ROM_START) SUBALIGN(16)
    {
        boss_Nepty_TEXT_START = .;
        boss_Nepty_TEXT_END = .;
        boss_Nepty_DATA_START = .;
        boss_Nepty_bin = .;
        build/assets/boss_Nepty.bin.o(.data);
        boss_Nepty_DATA_END = .;
        boss_Nepty_BSS_START = .;
        boss_Nepty_BSS_END = .;
    }
    boss_Nepty_ROM_END = 0xCCF460;
    __romPos = 0xCCF460;

    __romPos = 0xCCF460;
    . = __romPos;
    boss_Solvaring_ROM_START = __romPos;
    boss_Solvaring_VRAM = ADDR(.boss_Solvaring);
    .boss_Solvaring : AT(boss_Solvaring_ROM_START) SUBALIGN(16)
    {
        boss_Solvaring_TEXT_START = .;
        boss_Solvaring_TEXT_END = .;
        boss_Solvaring_DATA_START = .;
        boss_Solvaring_bin = .;
        build/assets/boss_Solvaring.bin.o(.data);
        boss_Solvaring_DATA_END = .;
        boss_Solvaring_BSS_START = .;
        boss_Solvaring_BSS_END = .;
    }
    boss_Solvaring_ROM_END = 0xCDB730;
    __romPos = 0xCDB730;

    __romPos = 0xCDB730;
    . = __romPos;
    boss_Zelse_ROM_START = __romPos;
    boss_Zelse_VRAM = ADDR(.boss_Zelse);
    .boss_Zelse : AT(boss_Zelse_ROM_START) SUBALIGN(16)
    {
        boss_Zelse_TEXT_START = .;
        boss_Zelse_TEXT_END = .;
        boss_Zelse_DATA_START = .;
        boss_Zelse_bin = .;
        build/assets/boss_Zelse.bin.o(.data);
        boss_Zelse_DATA_END = .;
        boss_Zelse_BSS_START = .;
        boss_Zelse_BSS_END = .;
    }
    boss_Zelse_ROM_END = 0xCE53E0;
    __romPos = 0xCE53E0;

    __romPos = 0xCE53E0;
    . = __romPos;
    boss_Shilf_ROM_START = __romPos;
    boss_Shilf_VRAM = ADDR(.boss_Shilf);
    .boss_Shilf : AT(boss_Shilf_ROM_START) SUBALIGN(16)
    {
        boss_Shilf_TEXT_START = .;
        boss_Shilf_TEXT_END = .;
        boss_Shilf_DATA_START = .;
        boss_Shilf_bin = .;
        build/assets/boss_Shilf.bin.o(.data);
        boss_Shilf_DATA_END = .;
        boss_Shilf_BSS_START = .;
        boss_Shilf_BSS_END = .;
    }
    boss_Shilf_ROM_END = 0xCF2A10;
    __romPos = 0xCF2A10;

    __romPos = 0xCF2A10;
    . = __romPos;
    boss_Fargo_ROM_START = __romPos;
    boss_Fargo_VRAM = ADDR(.boss_Fargo);
    .boss_Fargo : AT(boss_Fargo_ROM_START) SUBALIGN(16)
    {
        boss_Fargo_TEXT_START = .;
        boss_Fargo_TEXT_END = .;
        boss_Fargo_DATA_START = .;
        boss_Fargo_bin = .;
        build/assets/boss_Fargo.bin.o(.data);
        boss_Fargo_DATA_END = .;
        boss_Fargo_BSS_START = .;
        boss_Fargo_BSS_END = .;
    }
    boss_Fargo_ROM_END = 0xD006B0;
    __romPos = 0xD006B0;

    __romPos = 0xD006B0;
    . = __romPos;
    boss_Guilty_ROM_START = __romPos;
    boss_Guilty_VRAM = ADDR(.boss_Guilty);
    .boss_Guilty : AT(boss_Guilty_ROM_START) SUBALIGN(16)
    {
        boss_Guilty_TEXT_START = .;
        boss_Guilty_TEXT_END = .;
        boss_Guilty_DATA_START = .;
        boss_Guilty_bin = .;
        build/assets/boss_Guilty.bin.o(.data);
        boss_Guilty_DATA_END = .;
        boss_Guilty_BSS_START = .;
        boss_Guilty_BSS_END = .;
    }
    boss_Guilty_ROM_END = 0xD0FEE0;
    __romPos = 0xD0FEE0;

    __romPos = 0xD0FEE0;
    . = __romPos;
    boss_Mammon_ROM_START = __romPos;
    boss_Mammon_VRAM = ADDR(.boss_Mammon);
    .boss_Mammon : AT(boss_Mammon_ROM_START) SUBALIGN(16)
    {
        boss_Mammon_TEXT_START = .;
        boss_Mammon_TEXT_END = .;
        boss_Mammon_DATA_START = .;
        boss_Mammon_bin = .;
        build/assets/boss_Mammon.bin.o(.data);
        boss_Mammon_DATA_END = .;
        boss_Mammon_BSS_START = .;
        boss_Mammon_BSS_END = .;
    }
    boss_Mammon_ROM_END = 0xD237F0;
    __romPos = 0xD237F0;

    __romPos = 0xD237F0;
    . = __romPos;
    boss_Beigis_ROM_START = __romPos;
    boss_Beigis_VRAM = ADDR(.boss_Beigis);
    .boss_Beigis : AT(boss_Beigis_ROM_START) SUBALIGN(16)
    {
        boss_Beigis_TEXT_START = .;
        boss_Beigis_TEXT_END = .;
        boss_Beigis_DATA_START = .;
        boss_Beigis_bin = .;
        build/assets/boss_Beigis.bin.o(.data);
        boss_Beigis_DATA_END = .;
        boss_Beigis_BSS_START = .;
        boss_Beigis_BSS_END = .;
    }
    boss_Beigis_ROM_END = 0xD305E0;
    __romPos = 0xD305E0;

    __romPos = 0xD305E0;
    . = __romPos;
    NPC_Msg_ROM_START = __romPos;
    NPC_Msg_VRAM = ADDR(.NPC_Msg);
    .NPC_Msg : AT(NPC_Msg_ROM_START) SUBALIGN(16)
    {
        NPC_Msg_TEXT_START = .;
        NPC_Msg_TEXT_END = .;
        NPC_Msg_DATA_START = .;
        NPC_Msg_bin = .;
        build/assets/NPC_Msg.bin.o(.data);
        NPC_Msg_DATA_END = .;
        NPC_Msg_BSS_START = .;
        NPC_Msg_BSS_END = .;
    }
    NPC_Msg_ROM_END = 0xD3BE40;
    __romPos = 0xD3BE40;

    __romPos = 0xD3BE40;
    . = __romPos;
    inventory_pal_ROM_START = __romPos;
    inventory_pal_VRAM = ADDR(.inventory_pal);
    .inventory_pal : AT(inventory_pal_ROM_START) SUBALIGN(16)
    {
        inventory_pal_TEXT_START = .;
        inventory_pal_TEXT_END = .;
        inventory_pal_DATA_START = .;
        inventory_pal_bin = .;
        build/assets/inventory_pal.bin.o(.data);
        inventory_pal_DATA_END = .;
        inventory_pal_BSS_START = .;
        inventory_pal_BSS_END = .;
    }
    inventory_pal_ROM_END = 0xD3C240;
    __romPos = 0xD3C240;

    __romPos = 0xD3C240;
    . = __romPos;
    icon_spirit_light_ROM_START = __romPos;
    icon_spirit_light_VRAM = ADDR(.icon_spirit_light);
    .icon_spirit_light : AT(icon_spirit_light_ROM_START) SUBALIGN(16)
    {
        icon_spirit_light_TEXT_START = .;
        icon_spirit_light_TEXT_END = .;
        icon_spirit_light_DATA_START = .;
        icon_spirit_light_bin = .;
        build/assets/icon_spirit_light.bin.o(.data);
        icon_spirit_light_DATA_END = .;
        icon_spirit_light_BSS_START = .;
        icon_spirit_light_BSS_END = .;
    }
    icon_spirit_light_ROM_END = 0xD3C340;
    __romPos = 0xD3C340;

    __romPos = 0xD3C340;
    . = __romPos;
    icon_fresh_bread_ROM_START = __romPos;
    icon_fresh_bread_VRAM = ADDR(.icon_fresh_bread);
    .icon_fresh_bread : AT(icon_fresh_bread_ROM_START) SUBALIGN(16)
    {
        icon_fresh_bread_TEXT_START = .;
        icon_fresh_bread_TEXT_END = .;
        icon_fresh_bread_DATA_START = .;
        icon_fresh_bread_bin = .;
        build/assets/icon_fresh_bread.bin.o(.data);
        icon_fresh_bread_DATA_END = .;
        icon_fresh_bread_BSS_START = .;
        icon_fresh_bread_BSS_END = .;
    }
    icon_fresh_bread_ROM_END = 0xD3C440;
    __romPos = 0xD3C440;

    __romPos = 0xD3C440;
    . = __romPos;
    icon_honey_bread_ROM_START = __romPos;
    icon_honey_bread_VRAM = ADDR(.icon_honey_bread);
    .icon_honey_bread : AT(icon_honey_bread_ROM_START) SUBALIGN(16)
    {
        icon_honey_bread_TEXT_START = .;
        icon_honey_bread_TEXT_END = .;
        icon_honey_bread_DATA_START = .;
        icon_honey_bread_bin = .;
        build/assets/icon_honey_bread.bin.o(.data);
        icon_honey_bread_DATA_END = .;
        icon_honey_bread_BSS_START = .;
        icon_honey_bread_BSS_END = .;
    }
    icon_honey_bread_ROM_END = 0xD3C540;
    __romPos = 0xD3C540;

    __romPos = 0xD3C540;
    . = __romPos;
    icon_healing_potion_ROM_START = __romPos;
    icon_healing_potion_VRAM = ADDR(.icon_healing_potion);
    .icon_healing_potion : AT(icon_healing_potion_ROM_START) SUBALIGN(16)
    {
        icon_healing_potion_TEXT_START = .;
        icon_healing_potion_TEXT_END = .;
        icon_healing_potion_DATA_START = .;
        icon_healing_potion_bin = .;
        build/assets/icon_healing_potion.bin.o(.data);
        icon_healing_potion_DATA_END = .;
        icon_healing_potion_BSS_START = .;
        icon_healing_potion_BSS_END = .;
    }
    icon_healing_potion_ROM_END = 0xD3C640;
    __romPos = 0xD3C640;

    __romPos = 0xD3C640;
    . = __romPos;
    icon_dragon_potion_ROM_START = __romPos;
    icon_dragon_potion_VRAM = ADDR(.icon_dragon_potion);
    .icon_dragon_potion : AT(icon_dragon_potion_ROM_START) SUBALIGN(16)
    {
        icon_dragon_potion_TEXT_START = .;
        icon_dragon_potion_TEXT_END = .;
        icon_dragon_potion_DATA_START = .;
        icon_dragon_potion_bin = .;
        build/assets/icon_dragon_potion.bin.o(.data);
        icon_dragon_potion_DATA_END = .;
        icon_dragon_potion_BSS_START = .;
        icon_dragon_potion_BSS_END = .;
    }
    icon_dragon_potion_ROM_END = 0xD3C740;
    __romPos = 0xD3C740;

    __romPos = 0xD3C740;
    . = __romPos;
    icon_dew_drop_ROM_START = __romPos;
    icon_dew_drop_VRAM = ADDR(.icon_dew_drop);
    .icon_dew_drop : AT(icon_dew_drop_ROM_START) SUBALIGN(16)
    {
        icon_dew_drop_TEXT_START = .;
        icon_dew_drop_TEXT_END = .;
        icon_dew_drop_DATA_START = .;
        icon_dew_drop_bin = .;
        build/assets/icon_dew_drop.bin.o(.data);
        icon_dew_drop_DATA_END = .;
        icon_dew_drop_BSS_START = .;
        icon_dew_drop_BSS_END = .;
    }
    icon_dew_drop_ROM_END = 0xD3C840;
    __romPos = 0xD3C840;

    __romPos = 0xD3C840;
    . = __romPos;
    icon_mint_leaf_ROM_START = __romPos;
    icon_mint_leaf_VRAM = ADDR(.icon_mint_leaf);
    .icon_mint_leaf : AT(icon_mint_leaf_ROM_START) SUBALIGN(16)
    {
        icon_mint_leaf_TEXT_START = .;
        icon_mint_leaf_TEXT_END = .;
        icon_mint_leaf_DATA_START = .;
        icon_mint_leaf_bin = .;
        build/assets/icon_mint_leaf.bin.o(.data);
        icon_mint_leaf_DATA_END = .;
        icon_mint_leaf_BSS_START = .;
        icon_mint_leaf_BSS_END = .;
    }
    icon_mint_leaf_ROM_END = 0xD3C940;
    __romPos = 0xD3C940;

    __romPos = 0xD3C940;
    . = __romPos;
    icon_heroes_drink_ROM_START = __romPos;
    icon_heroes_drink_VRAM = ADDR(.icon_heroes_drink);
    .icon_heroes_drink : AT(icon_heroes_drink_ROM_START) SUBALIGN(16)
    {
        icon_heroes_drink_TEXT_START = .;
        icon_heroes_drink_TEXT_END = .;
        icon_heroes_drink_DATA_START = .;
        icon_heroes_drink_bin = .;
        build/assets/icon_heroes_drink.bin.o(.data);
        icon_heroes_drink_DATA_END = .;
        icon_heroes_drink_BSS_START = .;
        icon_heroes_drink_BSS_END = .;
    }
    icon_heroes_drink_ROM_END = 0xD3CA40;
    __romPos = 0xD3CA40;

    __romPos = 0xD3CA40;
    . = __romPos;
    icon_silent_flute_ROM_START = __romPos;
    icon_silent_flute_VRAM = ADDR(.icon_silent_flute);
    .icon_silent_flute : AT(icon_silent_flute_ROM_START) SUBALIGN(16)
    {
        icon_silent_flute_TEXT_START = .;
        icon_silent_flute_TEXT_END = .;
        icon_silent_flute_DATA_START = .;
        icon_silent_flute_bin = .;
        build/assets/icon_silent_flute.bin.o(.data);
        icon_silent_flute_DATA_END = .;
        icon_silent_flute_BSS_START = .;
        icon_silent_flute_BSS_END = .;
    }
    icon_silent_flute_ROM_END = 0xD3CB40;
    __romPos = 0xD3CB40;

    __romPos = 0xD3CB40;
    . = __romPos;
    icon_celines_bell_ROM_START = __romPos;
    icon_celines_bell_VRAM = ADDR(.icon_celines_bell);
    .icon_celines_bell : AT(icon_celines_bell_ROM_START) SUBALIGN(16)
    {
        icon_celines_bell_TEXT_START = .;
        icon_celines_bell_TEXT_END = .;
        icon_celines_bell_DATA_START = .;
        icon_celines_bell_bin = .;
        build/assets/icon_celines_bell.bin.o(.data);
        icon_celines_bell_DATA_END = .;
        icon_celines_bell_BSS_START = .;
        icon_celines_bell_BSS_END = .;
    }
    icon_celines_bell_ROM_END = 0xD3CC40;
    __romPos = 0xD3CC40;

    __romPos = 0xD3CC40;
    . = __romPos;
    icon_replica_ROM_START = __romPos;
    icon_replica_VRAM = ADDR(.icon_replica);
    .icon_replica : AT(icon_replica_ROM_START) SUBALIGN(16)
    {
        icon_replica_TEXT_START = .;
        icon_replica_TEXT_END = .;
        icon_replica_DATA_START = .;
        icon_replica_bin = .;
        build/assets/icon_replica.bin.o(.data);
        icon_replica_DATA_END = .;
        icon_replica_BSS_START = .;
        icon_replica_BSS_END = .;
    }
    icon_replica_ROM_END = 0xD3CD40;
    __romPos = 0xD3CD40;

    __romPos = 0xD3CD40;
    . = __romPos;
    icon_giants_shoes_ROM_START = __romPos;
    icon_giants_shoes_VRAM = ADDR(.icon_giants_shoes);
    .icon_giants_shoes : AT(icon_giants_shoes_ROM_START) SUBALIGN(16)
    {
        icon_giants_shoes_TEXT_START = .;
        icon_giants_shoes_TEXT_END = .;
        icon_giants_shoes_DATA_START = .;
        icon_giants_shoes_bin = .;
        build/assets/icon_giants_shoes.bin.o(.data);
        icon_giants_shoes_DATA_END = .;
        icon_giants_shoes_BSS_START = .;
        icon_giants_shoes_BSS_END = .;
    }
    icon_giants_shoes_ROM_END = 0xD3CE40;
    __romPos = 0xD3CE40;

    __romPos = 0xD3CE40;
    . = __romPos;
    icon_silver_amulet_ROM_START = __romPos;
    icon_silver_amulet_VRAM = ADDR(.icon_silver_amulet);
    .icon_silver_amulet : AT(icon_silver_amulet_ROM_START) SUBALIGN(16)
    {
        icon_silver_amulet_TEXT_START = .;
        icon_silver_amulet_TEXT_END = .;
        icon_silver_amulet_DATA_START = .;
        icon_silver_amulet_bin = .;
        build/assets/icon_silver_amulet.bin.o(.data);
        icon_silver_amulet_DATA_END = .;
        icon_silver_amulet_BSS_START = .;
        icon_silver_amulet_BSS_END = .;
    }
    icon_silver_amulet_ROM_END = 0xD3CF40;
    __romPos = 0xD3CF40;

    __romPos = 0xD3CF40;
    . = __romPos;
    icon_golden_amulet_ROM_START = __romPos;
    icon_golden_amulet_VRAM = ADDR(.icon_golden_amulet);
    .icon_golden_amulet : AT(icon_golden_amulet_ROM_START) SUBALIGN(16)
    {
        icon_golden_amulet_TEXT_START = .;
        icon_golden_amulet_TEXT_END = .;
        icon_golden_amulet_DATA_START = .;
        icon_golden_amulet_bin = .;
        build/assets/icon_golden_amulet.bin.o(.data);
        icon_golden_amulet_DATA_END = .;
        icon_golden_amulet_BSS_START = .;
        icon_golden_amulet_BSS_END = .;
    }
    icon_golden_amulet_ROM_END = 0xD3D040;
    __romPos = 0xD3D040;

    __romPos = 0xD3D040;
    . = __romPos;
    icon_white_wings_ROM_START = __romPos;
    icon_white_wings_VRAM = ADDR(.icon_white_wings);
    .icon_white_wings : AT(icon_white_wings_ROM_START) SUBALIGN(16)
    {
        icon_white_wings_TEXT_START = .;
        icon_white_wings_TEXT_END = .;
        icon_white_wings_DATA_START = .;
        icon_white_wings_bin = .;
        build/assets/icon_white_wings.bin.o(.data);
        icon_white_wings_DATA_END = .;
        icon_white_wings_BSS_START = .;
        icon_white_wings_BSS_END = .;
    }
    icon_white_wings_ROM_END = 0xD3D140;
    __romPos = 0xD3D140;

    __romPos = 0xD3D140;
    . = __romPos;
    icon_yellow_wings_ROM_START = __romPos;
    icon_yellow_wings_VRAM = ADDR(.icon_yellow_wings);
    .icon_yellow_wings : AT(icon_yellow_wings_ROM_START) SUBALIGN(16)
    {
        icon_yellow_wings_TEXT_START = .;
        icon_yellow_wings_TEXT_END = .;
        icon_yellow_wings_DATA_START = .;
        icon_yellow_wings_bin = .;
        build/assets/icon_yellow_wings.bin.o(.data);
        icon_yellow_wings_DATA_END = .;
        icon_yellow_wings_BSS_START = .;
        icon_yellow_wings_BSS_END = .;
    }
    icon_yellow_wings_ROM_END = 0xD3D240;
    __romPos = 0xD3D240;

    __romPos = 0xD3D240;
    . = __romPos;
    icon_blue_wings_ROM_START = __romPos;
    icon_blue_wings_VRAM = ADDR(.icon_blue_wings);
    .icon_blue_wings : AT(icon_blue_wings_ROM_START) SUBALIGN(16)
    {
        icon_blue_wings_TEXT_START = .;
        icon_blue_wings_TEXT_END = .;
        icon_blue_wings_DATA_START = .;
        icon_blue_wings_bin = .;
        build/assets/icon_blue_wings.bin.o(.data);
        icon_blue_wings_DATA_END = .;
        icon_blue_wings_BSS_START = .;
        icon_blue_wings_BSS_END = .;
    }
    icon_blue_wings_ROM_END = 0xD3D340;
    __romPos = 0xD3D340;

    __romPos = 0xD3D340;
    . = __romPos;
    icon_green_wings_ROM_START = __romPos;
    icon_green_wings_VRAM = ADDR(.icon_green_wings);
    .icon_green_wings : AT(icon_green_wings_ROM_START) SUBALIGN(16)
    {
        icon_green_wings_TEXT_START = .;
        icon_green_wings_TEXT_END = .;
        icon_green_wings_DATA_START = .;
        icon_green_wings_bin = .;
        build/assets/icon_green_wings.bin.o(.data);
        icon_green_wings_DATA_END = .;
        icon_green_wings_BSS_START = .;
        icon_green_wings_BSS_END = .;
    }
    icon_green_wings_ROM_END = 0xD3D440;
    __romPos = 0xD3D440;

    __romPos = 0xD3D440;
    . = __romPos;
    icon_red_wings_ROM_START = __romPos;
    icon_red_wings_VRAM = ADDR(.icon_red_wings);
    .icon_red_wings : AT(icon_red_wings_ROM_START) SUBALIGN(16)
    {
        icon_red_wings_TEXT_START = .;
        icon_red_wings_TEXT_END = .;
        icon_red_wings_DATA_START = .;
        icon_red_wings_bin = .;
        build/assets/icon_red_wings.bin.o(.data);
        icon_red_wings_DATA_END = .;
        icon_red_wings_BSS_START = .;
        icon_red_wings_BSS_END = .;
    }
    icon_red_wings_ROM_END = 0xD3D540;
    __romPos = 0xD3D540;

    __romPos = 0xD3D540;
    . = __romPos;
    icon_black_wings_ROM_START = __romPos;
    icon_black_wings_VRAM = ADDR(.icon_black_wings);
    .icon_black_wings : AT(icon_black_wings_ROM_START) SUBALIGN(16)
    {
        icon_black_wings_TEXT_START = .;
        icon_black_wings_TEXT_END = .;
        icon_black_wings_DATA_START = .;
        icon_black_wings_bin = .;
        build/assets/icon_black_wings.bin.o(.data);
        icon_black_wings_DATA_END = .;
        icon_black_wings_BSS_START = .;
        icon_black_wings_BSS_END = .;
    }
    icon_black_wings_ROM_END = 0xD3D640;
    __romPos = 0xD3D640;

    __romPos = 0xD3D640;
    . = __romPos;
    icon_earth_orb_ROM_START = __romPos;
    icon_earth_orb_VRAM = ADDR(.icon_earth_orb);
    .icon_earth_orb : AT(icon_earth_orb_ROM_START) SUBALIGN(16)
    {
        icon_earth_orb_TEXT_START = .;
        icon_earth_orb_TEXT_END = .;
        icon_earth_orb_DATA_START = .;
        icon_earth_orb_bin = .;
        build/assets/icon_earth_orb.bin.o(.data);
        icon_earth_orb_DATA_END = .;
        icon_earth_orb_BSS_START = .;
        icon_earth_orb_BSS_END = .;
    }
    icon_earth_orb_ROM_END = 0xD3D740;
    __romPos = 0xD3D740;

    __romPos = 0xD3D740;
    . = __romPos;
    icon_wind_jade_ROM_START = __romPos;
    icon_wind_jade_VRAM = ADDR(.icon_wind_jade);
    .icon_wind_jade : AT(icon_wind_jade_ROM_START) SUBALIGN(16)
    {
        icon_wind_jade_TEXT_START = .;
        icon_wind_jade_TEXT_END = .;
        icon_wind_jade_DATA_START = .;
        icon_wind_jade_bin = .;
        build/assets/icon_wind_jade.bin.o(.data);
        icon_wind_jade_DATA_END = .;
        icon_wind_jade_BSS_START = .;
        icon_wind_jade_BSS_END = .;
    }
    icon_wind_jade_ROM_END = 0xD3D840;
    __romPos = 0xD3D840;

    __romPos = 0xD3D840;
    . = __romPos;
    icon_water_jewel_ROM_START = __romPos;
    icon_water_jewel_VRAM = ADDR(.icon_water_jewel);
    .icon_water_jewel : AT(icon_water_jewel_ROM_START) SUBALIGN(16)
    {
        icon_water_jewel_TEXT_START = .;
        icon_water_jewel_TEXT_END = .;
        icon_water_jewel_DATA_START = .;
        icon_water_jewel_bin = .;
        build/assets/icon_water_jewel.bin.o(.data);
        icon_water_jewel_DATA_END = .;
        icon_water_jewel_BSS_START = .;
        icon_water_jewel_BSS_END = .;
    }
    icon_water_jewel_ROM_END = 0xD3D940;
    __romPos = 0xD3D940;

    __romPos = 0xD3D940;
    . = __romPos;
    icon_fire_ruby_ROM_START = __romPos;
    icon_fire_ruby_VRAM = ADDR(.icon_fire_ruby);
    .icon_fire_ruby : AT(icon_fire_ruby_ROM_START) SUBALIGN(16)
    {
        icon_fire_ruby_TEXT_START = .;
        icon_fire_ruby_TEXT_END = .;
        icon_fire_ruby_DATA_START = .;
        icon_fire_ruby_bin = .;
        build/assets/icon_fire_ruby.bin.o(.data);
        icon_fire_ruby_DATA_END = .;
        icon_fire_ruby_BSS_START = .;
        icon_fire_ruby_BSS_END = .;
    }
    icon_fire_ruby_ROM_END = 0xD3DA40;
    __romPos = 0xD3DA40;

    __romPos = 0xD3DA40;
    . = __romPos;
    icon_eltale_book_ROM_START = __romPos;
    icon_eltale_book_VRAM = ADDR(.icon_eltale_book);
    .icon_eltale_book : AT(icon_eltale_book_ROM_START) SUBALIGN(16)
    {
        icon_eltale_book_TEXT_START = .;
        icon_eltale_book_TEXT_END = .;
        icon_eltale_book_DATA_START = .;
        icon_eltale_book_bin = .;
        build/assets/icon_eltale_book.bin.o(.data);
        icon_eltale_book_DATA_END = .;
        icon_eltale_book_BSS_START = .;
        icon_eltale_book_BSS_END = .;
    }
    icon_eltale_book_ROM_END = 0xD3DB40;
    __romPos = 0xD3DB40;

    __romPos = 0xD3DB40;
    . = __romPos;
    icon_dark_gaol_key_ROM_START = __romPos;
    icon_dark_gaol_key_VRAM = ADDR(.icon_dark_gaol_key);
    .icon_dark_gaol_key : AT(icon_dark_gaol_key_ROM_START) SUBALIGN(16)
    {
        icon_dark_gaol_key_TEXT_START = .;
        icon_dark_gaol_key_TEXT_END = .;
        icon_dark_gaol_key_DATA_START = .;
        icon_dark_gaol_key_bin = .;
        build/assets/icon_dark_gaol_key.bin.o(.data);
        icon_dark_gaol_key_DATA_END = .;
        icon_dark_gaol_key_BSS_START = .;
        icon_dark_gaol_key_BSS_END = .;
    }
    icon_dark_gaol_key_ROM_END = 0xD3E240;
    __romPos = 0xD3E240;

    __romPos = 0xD3E240;
    . = __romPos;
    text_palettes_ROM_START = __romPos;
    text_palettes_VRAM = ADDR(.text_palettes);
    .text_palettes : AT(text_palettes_ROM_START) SUBALIGN(16)
    {
        text_palettes_TEXT_START = .;
        text_palettes_TEXT_END = .;
        text_palettes_DATA_START = .;
        text_palettes_bin = .;
        build/assets/text_palettes.bin.o(.data);
        text_palettes_DATA_END = .;
        text_palettes_BSS_START = .;
        text_palettes_BSS_END = .;
    }
    text_palettes_ROM_END = 0xD3E2C0;
    __romPos = 0xD3E2C0;

    __romPos = 0xD3E2C0;
    . = __romPos;
    font_tbl_ROM_START = __romPos;
    font_tbl_VRAM = ADDR(.font_tbl);
    .font_tbl : AT(font_tbl_ROM_START) SUBALIGN(16)
    {
        font_tbl_TEXT_START = .;
        font_tbl_TEXT_END = .;
        font_tbl_DATA_START = .;
        font_tbl_bin = .;
        build/assets/font_tbl.bin.o(.data);
        font_tbl_DATA_END = .;
        font_tbl_BSS_START = .;
        font_tbl_BSS_END = .;
    }
    font_tbl_ROM_END = 0xD4B3C0;
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
