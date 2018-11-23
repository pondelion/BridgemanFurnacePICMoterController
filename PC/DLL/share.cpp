#include <stdio.h>
#include <windows.h>
#include "BridgemanShare.h"
#pragma comment(lib, "BridgemanShare.lib");

int main()
{
	HMODULE hMod;
	char c;
	hMod = LoadLibrary("BridgemanShare.dll");
	SetHeight(6.0);
	printf("%d\n", GetCount());
	while((c = getchar()) != 'Q')
	{
		if(c == '\n')
		{
			continue;
		}
		printf("%lf\n", GetHeight());
		printf("%d\n", GetCount());
	}
	FreeLibrary(hMod);
	return 0;
}
