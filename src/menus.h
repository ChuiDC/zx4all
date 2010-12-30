#ifndef MENUS_H
#define MENUS_H

struct fichero {
	char nombre[256]; // filename (for files and directories)
	char nombrepath[2049]; // filename with path
	int tipo; // file type (0=file, 1=directory, 2=parent directory)
	struct fichero *next;
};

void clean_screen();
void help_menu();
void load_z80file();
char *select_file(char *,char);
struct fichero *read_directory(char *,char);
unsigned int wait_key();
void print_files(struct fichero *,int,int);
void delete_filelist(struct fichero *);
void select_tapfile();
void save_z80file();
void settings_menu();
void snapshots_menu();
void taps_menu();
void create_tapfile();
void select_mdrfile();
void create_mdrfile();
void microdrive_menu();

#endif
