def apply(config, args):
	config['baseimg'] = 'baserom.us.z64'
	config['myimg'] = 'build/quest64.us.bin'
	config['mapfile'] = 'build/quest64.us.map'
	config['source_directories'] = ['src', 'asm', 'include', 'assets']
	