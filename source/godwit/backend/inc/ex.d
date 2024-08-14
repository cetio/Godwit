module godwit.backend.inc.ex;

import tern.accessors;

public struct EXException
{
public:
final:
    EXException* m_innerException;

    mixin accessors;
}