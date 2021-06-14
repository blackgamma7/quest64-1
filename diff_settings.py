def apply(config, args):
    config["baseimg"] = 'baserom.us.z64'
    config["myimg"] = "build/quest64.us.z64"
    config["mapfile"] = "build/quest64.us.map"
    config["source_directories"] = ['src', 'asm', 'include', 'assets']
    #config["arch"] = "mips"
    #config["map_format"] = "gnu" # gnu or mw
    #config["mw_build_dir"] = "build/" # only needed for mw map format
    #config["makeflags"] = []
    #config["objdump_executable"] = ""
