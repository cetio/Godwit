module godwit.backend.vm.mngstdinterfaces;

import godwit.backend.inc.sbuffer;
import tern.accessors;

public struct MngStdInterfacesInfo
{
public:
final:
    SString* m_friendlyName;

    mixin accessors;
}