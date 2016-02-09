#include <sourcemod>

public Plugin:myinfo = 
{
	name = "FFON",
	author = "RikiCZ",
	description = "zapne zraneni spoluhracu",
	version = "0.1"
}

public OnPluginStart()
{
	RegAdminCmd("sm_ff", Command_prikaz, ADMFLAG_RCON, "zapnuti ffon")
	RegAdminCmd("sm_ffo", Command_prikaz2, ADMFLAG_RCON, "zapnuti ffoff")
}


public Action:Command_prikaz(client, args)
{
	ServerCommand("mp_freindlyfire 1");
}
public Action:Command_prikaz2(client, args)
{
	ServerCommand("mp_freindlyfire 0");
}
