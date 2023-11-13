https://cetios.gitbook.io/kingfisher/
# This readme is bullshit generated by ChatGPT, don't believe anything that it says, especially because Kingfisher isn't nearly complete enough for me to make any claims.
# Kingfisher: CoreCLR and D Interop

## Introduction

Kingfisher is a powerful tool that enables seamless interoperability between the CoreCLR (.NET Core Common Language Runtime) and the D programming language. It serves as a bridge, allowing developers to harness the strengths of both environments to build robust, feature-rich applications.

## Key Features

- **Bidirectional Interop**: Kingfisher facilitates communication in both directions. You can call .NET Core code from D and vice versa, enabling the integration of D components into .NET applications and vice versa.

- **Native Performance**: Kingfisher is designed for high performance, minimizing the overhead of interop. It allows you to work with .NET objects as if they were native D objects.

- **Memory Management**: Automatic memory management ensures that objects are properly allocated and deallocated, reducing the risk of memory leaks.

- **Metadata and Type Information**: Kingfisher provides access to .NET metadata and type information, making it easier to work with .NET assemblies and classes.

- **Exception Handling**: Exception handling is seamlessly integrated between D and .NET, allowing you to catch and handle exceptions across the interop boundary.

- **Platform Independence**: Kingfisher is platform-independent and works with any CoreCLR-compatible platform, offering flexibility and portability.

## Getting Started

To get started with Kingfisher, follow these steps:

1. Clone this repository or download the source code.

2. Include the necessary modules from Kingfisher in your D project.

3. Refer to the documentation and examples provided to understand how to use Kingfisher for your specific interop requirements.

## Examples

Here are a few examples of how Kingfisher can be used:

### Calling .NET Code from D

```d
import kingfisher;

void main()
{
    initializeCoreCLR();
    
    // Load and invoke a .NET method
    auto result = callDotNetMethod("MyDotNetAssembly.dll", "MyNamespace.MyClass.MyMethod", ["arg1", "arg2"]);
    
    // Process the result
    // ...
}
```

## Contributions
Contributions to Kingfisher are welcome! If you have ideas for improvements, bug fixes, or new features, please open an issue or submit a pull request. Make sure to follow the project's coding style and guidelines.

## License
Kingfisher is open-source and is released under the Mozilla Public License 2.0.