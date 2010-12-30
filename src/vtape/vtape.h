#define VTAPE_X 20
#define VTAPE_Y 200

#define VTAPE_LEFT	1
#define VTAPE_RIGHT	2	
#define VTAPE_UP	4
#define VTAPE_DOWN	8
#define VTAPE_BUTTON	16

typedef enum {
	VTAPE_NONE,
	VTAPE_STOP,
	VTAPE_FORWARD,
	VTAPE_PLAY,
	VTAPE_REWIND,
	VTAPE_SAVE,
	VTAPE_PAUSE
} t_vtape_state;

extern int vtape_move;
extern int vtape_mode;
extern int vtape_pos;

int vtape_init(void);
void vtape_redraw(void);
t_vtape_state vtape_process(void);
