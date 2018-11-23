#include <windows.h>
#include "BridgemanShare.h"


PDATA pData;
DATA data;
HANDLE hMap,hMutex;

DLL_EXPORT int GetCount()
{
	if(hMap)
	{
		/*
		WaitForSingleObject(hMutex, INFINITE);
		pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_READ, 0, 0, 0);
		data = (*pData);
		UnmapViewOfFile(hMap);
		ReleaseMutex(hMutex);
		
		return data.count;
		*/
		WaitForSingleObject(hMutex, INFINITE);
		data.count = pData->count;
		ReleaseMutex(hMutex);
		return data.count;
	}
	return -1;
}

DLL_EXPORT double GetSampleHeight()
{
	if(hMap)
	{
		/*
		WaitForSingleObject(hMutex, INFINITE);
		pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_READ, 0, 0, 0);
		data = (*pData);
		UnmapViewOfFile(hMap);
		ReleaseMutex(hMutex);
		
		return data.height;
		*/
		WaitForSingleObject(hMutex, INFINITE);
		data.sampleHeight = pData->sampleHeight;
		ReleaseMutex(hMutex);
		return data.sampleHeight;
	}
	return -1.0;
}

DLL_EXPORT void SetSampleHeight(double height)
{
	if(hMap)
	{
		/*
		WaitForSingleObject(hMutex, INFINITE);
		pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_WRITE, 0, 0, 0);
		pData->height = height;
		UnmapViewOfFile(hMap);
		ReleaseMutex(hMutex);
		*/
		WaitForSingleObject(hMutex, INFINITE);
		pData->sampleHeight = height;
		ReleaseMutex(hMutex);
	}
	return;
}

DLL_EXPORT double GetFurnaceHeight()
{
	if(hMap)
	{
		/*
		WaitForSingleObject(hMutex, INFINITE);
		pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_READ, 0, 0, 0);
		data = (*pData);
		UnmapViewOfFile(hMap);
		ReleaseMutex(hMutex);
		
		return data.height;
		*/
		WaitForSingleObject(hMutex, INFINITE);
		data.furnaceHeight = pData->furnaceHeight;
		ReleaseMutex(hMutex);
		return data.furnaceHeight;
	}
	return -1.0;
}


DLL_EXPORT void SetFurnaceHeight(double height)
{
	if(hMap)
	{
		/*
		WaitForSingleObject(hMutex, INFINITE);
		pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_WRITE, 0, 0, 0);
		pData->height = height;
		UnmapViewOfFile(hMap);
		ReleaseMutex(hMutex);
		*/
		WaitForSingleObject(hMutex, INFINITE);
		pData->furnaceHeight = height;
		ReleaseMutex(hMutex);
	}
	return;
}

int WINAPI DllMain(HINSTANCE hDLL, DWORD dwReason, LPVOID lpReserved)
{
	

	switch(dwReason)
	{
	case DLL_PROCESS_ATTACH:
		hMutex = CreateMutex(NULL, FALSE, "BRIDGEMAN_MUTEX");
		hMap = CreateFileMapping((HANDLE)0xFFFFFFFF, NULL, PAGE_READWRITE, 0, sizeof(DATA), TEXT("BRIDGEMAN_MAP"));
		pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_WRITE, 0, 0, 0);
		(pData->count)++;
		//UnmapViewOfFile(hMap);
		
		break;
	case DLL_PROCESS_DETACH:
		//pData = (PDATA)MapViewOfFile(hMap, FILE_MAP_WRITE, 0, 0, 0);
		(pData->count)--;
		UnmapViewOfFile(hMap);
		CloseHandle(hMap);
		CloseHandle(hMutex);
		break;
	}
	return TRUE;
}

