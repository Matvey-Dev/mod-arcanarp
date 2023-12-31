/*----------------------------------------------------------*/

#include <a_samp>
#include <td_gametext>

/*----------------------------------------------------------*/
/*
native Menu:CreateMenuRus(const title[], columns, Float:x, Float:y, Float:col1width, Float:col2width);
native AddMenuItemRus(Menu:menuid, column, const menutext[]);
native SetMenuColumnHeaderRus(Menu:menuid, column, const columnheader[]);
native GameTextForAllRus(text[], time, style);
native GameTextForPlayerRus(playerid, text[], time, style);
native DisplayTextForPlayerRus(playerid, text[], time, font, style);
*/
/*----------------------------------------------------------*/

forward GameTextRusFix(text[]);

/*---------------------------------------------------------*/

new gametext[256];

stock Menu:CreateMenuRus(title[], columns, Float:x, Float:y, Float:col1width, Float:col2width)
{
	GameTextRusFix(title);
	CreateMenu(gametext, columns, Float:x, Float:y, Float:col1width, Float:col2width);
	return 1;
}

stock AddMenuItemRus(Menu:menuid, column, menutext[])
{
	GameTextRusFix(menutext);
	AddMenuItem(Menu:menuid, column, gametext);
	return 1;
}

stock SetMenuColumnHeaderRus(Menu:menuid, column, columnheader[])
{
	GameTextRusFix(columnheader);
	SetMenuColumnHeader(Menu:menuid, column, gametext);
	return 1;
}

stock GameTextForAllRus(text[], time, style)
{
	GameTextRusFix(text);
	GameTextForAll(gametext, time, style);
	return 1;
}

stock GameTextForPlayerRus(playerid, text[], time, style)
{
	GameTextRusFix(text);
	GameTextForPlayer(playerid, gametext, time, style);
	return 1;
}

stock DisplayTextForPlayerRus(playerid, text[], time, font, style)
{
	GameTextRusFix(text);
	DisplayTextForPlayer(playerid, gametext, time, font, style);
	return 1;
}

public GameTextRusFix(text[])
{
	new length = strlen(text);
	for(new i; i < length; i++)
	{
		switch(text[i]%256)
		{
			case '�':gametext[i] = 'a';
			case '�':gametext[i] = 'A';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'e';
			case '�':gametext[i] = 'E';
			case '�':gametext[i] = 'e';
			case '�':gametext[i] = 'E';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'k';
			case '�':gametext[i] = 'K';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'M';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'H';
			case '�':gametext[i] = 'o';
			case '�':gametext[i] = 'O';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'p';
			case '�':gametext[i] = 'P';
			case '�':gametext[i] = 'c';
			case '�':gametext[i] = 'C';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'y';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = 'x';
			case '�':gametext[i] = 'X';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			case '�':gametext[i] = '�';
			default: gametext[i] = text[i]%256;
		}
		gametext[length] = 0;
	}
}
