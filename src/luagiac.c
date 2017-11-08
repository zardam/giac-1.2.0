#include <os.h>
#include <lauxlib.h>
#include "luabridge.h"
#include <sys/times.h>

#define BUFSIZE 8192

static int caseval(lua_State *L) {
	const char *param = luaL_checkstring(L, 1);
#if 0
	printf("hello %s!\n", param);
	char * ans=malloc(strlen(param)+20);
	strcpy(ans,"hello ");
	strcat(ans,param);
	lua_pushlstring(L,ans,strlen(ans));
	free(ans);
#else
	static char anscopy[BUFSIZE];
	int l=strlen(param);
	if (l>BUFSIZE-1)
	  strcpy(anscopy,"Entry_too_large");
	else
	  strcpy(anscopy,param);
	const char * ans=giac_caseval(anscopy);
	l=strlen(ans);
	if (l>BUFSIZE-1)
	  strcpy(anscopy,"Too large for display");
	else
	  strcpy(anscopy,ans);
	lua_pushlstring(L,anscopy,strlen(anscopy));	
#endif
	return 1;
}

static const luaL_reg lualib[] = {
	{"caseval", caseval},
	{NULL, NULL}
};

int main(void) {
	lua_State *L = nl_lua_getstate();
	if (!L) return 0; // not being called as Lua module
	//show_msgbox("lua giac extension","hello!");
	luaL_register(L, "luagiac", lualib);
	//giac_caseval("calc_mode(1);");
	return 0;
}
