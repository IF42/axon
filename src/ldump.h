#ifndef __LDUMP_H__
#define __LDUMP_H__

#include "luaconf.h"
#include "lstate.h"

LUA_API int luaU_dump(lua_State *L, const Proto *f, lua_Writer w, void *data, int strip);

#endif
