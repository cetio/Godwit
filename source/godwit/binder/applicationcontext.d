module godwit.applicationcontext;

import godwit.sbuffer;
import godwit.corhdr;
import godwit.assembly;
import godwit.stringarraylist;
import godwit.shash;
import caiman.traits;
import godwit.bspace;
import caiman.state;

public struct ApplicationContext
{
public:
final:
    int m_appVersion;
    SString m_applicationName;
    SHash!(BinderSpace*, uint)* m_executionContext;
    SHash!(FailureCacheEntry*, uint)* m_failureCache;
    CritSecCookie m_contextCS;
    StringArrayList m_platformResourceRoots;
    StringArrayList m_appPaths;
    SHash!(SimpleNameToFileNameMapEntry, uint) m_trustedPlatformAssemblyMap;

    mixin accessors;
}

// Entry in SHash table that maps namespace to list of files
public struct SimpleNameToFileNameMapEntry
{
public:
final:
    wchar* m_simpleName;
    wchar* m_ilFileName;
    wchar* m_niFileName;

    mixin accessors;
}

public struct FailureCacheEntry
{
public:
final:
    SString m_assemblyNameOrPath;
    HResult m_bindingResult;

    mixin accessors;
}