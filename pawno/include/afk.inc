#define COLOR_AFK 0xDCFFB5FF // ���� ������� "AFK :  %i ���"
#define KICK_AFK // ��� �� ������ AFK: ������������������ (//) - ������� ���������������� - ��������
#define TIMER_KICK_AFK 15*60 //����� � AFK ����� �������� ��������� kick � �������� (�������� ���� � ��� ����ר� ��� KICK)

new afktimer;

forward OnGameModeInit();
public OnGameModeInit()
{
	afktimer = SetTimer("GlobalAfkCheck",1000,true);
	print("AFK SYSTEM BY BATKA1337");
	#if defined ac_OnGameModeInit
		return ac_OnGameModeInit();
	#else
		return 1;
	#endif
}
#if defined _ALS_OnGameModeInit
		#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif
#define OnGameModeInit ac_OnGameModeInit
#if defined ac_OnGameModeInit
	forward ac_OnGameModeInit();
#endif

forward OnGameModeExit();
public OnGameModeExit()
{
	KillTimer(afktimer);
	#if defined ac_OnGameModeExit
		return ac_OnGameModeExit();
	#else
		return 1;
	#endif
}
#if defined _ALS_OnGameModeExit
		#undef OnGameModeExit
#else
	#define _ALS_OnGameModeExit
#endif
#define OnGameModeExit ac_OnGameModeExit
#if defined ac_OnGameModeExit
	forward ac_OnGameModeExit();
#endif

forward OnPlayerUpdate(playerid);
public OnPlayerUpdate(playerid)
{
    SetPVarInt(playerid,"AFK_Tick", GetPVarInt(playerid,"AFK_Tick") + 1);
	#if defined ac_ac_OnPlayerUpdate
		return ac_OnPlayerUpdate(playerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_ac_OnPlayerUpdate
		#undef ac_OnPlayerUpdate
#else
	#define _ALS_ac_OnPlayerUpdate
#endif
#define ac_OnPlayerUpdate ac_ac_OnPlayerUpdate
#if defined ac_ac_OnPlayerUpdate
	forward ac_OnPlayerUpdate(playerid);
#endif

stock IsAPlayerAFK(playerid)
{
	if(GetPVarInt(playerid,"AFK_Use")) return 1;
	else return 0;
}
stock GetPlayerAFKTime(playerid) return GetPVarInt(playerid,"AFK_Time");
forward GlobalAfkCheck();
public GlobalAfkCheck()
{
	for(new i; i != MAX_PLAYERS; i++)
	{
		if(!IsPlayerConnected(i)) continue;
		if(GetPVarInt(i,"AFK_Tick") > 10000)
		{
			SetPVarInt(i,"AFK_Tick",1);
			SetPVarInt(i,"AFK_Check",0);
		}
		if(GetPVarInt(i,"AFK_Use") == 1 && GetPVarInt(i, "AFK_Time") <= 2) SetPVarInt(i,"AFK_Use",0);
		if(GetPVarInt(i,"AFK_Check") < GetPVarInt(i,"AFK_Tick") && GetPlayerState(i))
		{
			SetPVarInt(i,"AFK_Check",GetPVarInt(i,"AFK_Tick"));
			SetPVarInt(i,"AFK_Time",0);
		}
		if(GetPVarInt(i,"AFK_Check") == GetPVarInt(i,"AFK_Tick") && GetPlayerState(i))
		{
			SetPVarInt(i,"AFK_Time",GetPVarInt(i,"AFK_Time") + 1);
			if(GetPVarInt(i, "AFK_Time") > 2)
			{
				static const fmt_string1[] = "AFK: %i ���";
				new str1[sizeof(fmt_string1)+7];
				format(str1, sizeof(str1), fmt_string1,GetPVarInt(i,"AFK_Time")-2);
				SetPlayerChatBubble(i,str1,COLOR_AFK,15.0,1200);
				SetPVarInt(i,"AFK_Use",1);
			}
			#if defined KICK_AFK
			    if(GetPVarInt(i, "AFK_Time") > TIMER_KICK_AFK)
			    {
			        SendClientMessage(i,-1,"�� ������� �� ������ ���������� � AFK");
			        SetTimerEx("KickP",500,false,"i",i);
			    }
		    #endif
		}
	}
}
forward KickP(playerid);
public KickP(playerid) return Kick(playerid);
