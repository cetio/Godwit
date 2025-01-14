module godwit.backend.vm.listlock;

import godwit.backend.vm.codeversion;
import godwit.backend.vm.crst;
import godwit.backend.vm.threads;
import godwit.backend.vm.loaderallocator;
import tern.accessors;
import tern.state;

alias ListLock = ListLockBase!(void*);
alias ListLockEntry = ListLockEntryBase!(void*);
alias JitListLock = ListLockBase!NativeCodeVersion;

public struct ListLockBase(T)
{
public:
final:
    CrstStatic m_crst;
    bool m_isfInit;
    /// Lock can be broken by a host for deadlock detection
    bool m_hostBreakable;
    ListLockEntryBase!T* m_head;

    mixin accessors;
}

public struct ListLockEntryBase(T)
{
public:
final:
    DeadlockAwareLock m_deadlock;
    ListLockBase!T* m_list;
    T m_data;
    Crst m_crst;
    const(char)* m_description;
    ListLockEntryBase!T* m_next;
    uint m_refCount;
    HResult m_hresultCode;
    // LOADERHANDLE
    ptrdiff_t m_initException;
    LoaderAllocator* m_allocator;

    mixin accessors;
}