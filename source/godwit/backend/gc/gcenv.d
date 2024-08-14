module godwit.backend.gc.gcenv;

import tern.accessors;

public struct Thread
{
public:
final:
    bool m_preemptiveGCDisabled;
    uint*[16] m_allocContext;
    Thread* m_next;

    mixin accessors;
}