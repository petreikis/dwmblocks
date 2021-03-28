//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "echo ''",					3600,		0},
	{"  ", "/usr/local/bin/dwmblocks_scripts/volume",					1,		0},
	{"  ", "/usr/local/bin/dwmblocks_scripts/memory",					10,		0},
	{"  ", "df | grep '/dev/nvme0n1p7' | awk '{print $5}'",					60,		0},
	{"  ", "/usr/local/bin/dwmblocks_scripts/load_average",					10,		0},
	{"", "/usr/local/bin/dwmblocks_scripts/battery2",					5,		0},
	{"  ", "/usr/local/bin/dwmblocks_scripts/xkblayout-state print %e | awk '{ print toupper($0) }'",					1,		0},
	{"  ", "date '+%a, %b %d'",					5,		0},
	{"  ", "date '+%H:%M'",					5,		0},
	{"", "echo ''",					3600,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
