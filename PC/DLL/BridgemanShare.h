#include <windows.h>


#ifdef __cplusplus
#define DLL_EXPORT extern "C" __declspec(dllexport)
#else
#define ELL_EXPORT __declspec(dllexport)
#endif

typedef struct {
	int count;
	double sampleHeight;
	double furnaceHeight;
} DATA, *PDATA;

DLL_EXPORT int GetCount();
DLL_EXPORT double GetSampleHeight();
DLL_EXPORT void SetSampleHeight(double height);
DLL_EXPORT double GetFurnaceHeight();
DLL_EXPORT void SetFurnaceHeight(double height);