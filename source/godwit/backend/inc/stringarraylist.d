module godwit.backend.inc.stringarraylist;

import godwit.backend.inc.arraylist;
import tern.accessors;

public struct StringArrayList
{
public:
final:
    ArrayList m_elements;

    mixin accessors;
}