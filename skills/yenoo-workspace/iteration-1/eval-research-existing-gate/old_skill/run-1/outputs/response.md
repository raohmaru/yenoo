# WebAssembly component model — research gate

I searched the vault first. The existing resource is:
`resources/webassembly-component-model.md`

It already covers the high-level idea that components expose typed imports
and exports and can be composed across languages. I therefore treated this
as an update to the existing resource, not a new note. I have not modified
the vault, its index, tags, or log.

## New takeaways

1. **WIT is the interface-definition layer.** The WebAssembly Interface Type
   (WIT) format describes worlds, interfaces, functions, and data types in a
   language-neutral way; bindings generators can then produce host-language
   APIs from that contract.

2. **The canonical ABI is the interoperability boundary.** Component
   adapters lift and lower rich interface values (such as strings, lists,
   records, variants, and results) to and from the core WebAssembly value and
   memory representation. This is what makes the typed contract usable
   across languages rather than merely documenting function signatures.

3. **Components compose at a higher level than core modules.** A component
   can import and export interfaces and can be instantiated or composed with
   other components. Composition can therefore assemble independently built
   implementations behind shared WIT contracts.

4. **WASI is moving toward component-oriented APIs.** The component model is
   the foundation for defining portable, capability-oriented interfaces such
   as WASI APIs, so a component's dependencies can be explicit rather than
   implicitly tied to one runtime or language.

5. **The practical workflow is toolchain-dependent.** Creating and running a
   component generally involves WIT plus language-specific binding generation,
   a component adapter, and a runtime/tool such as Wasmtime or another
   component-model implementation; support and maturity vary by language.

Would you like the eventual update to emphasize (a) WIT and interface
design, (b) ABI/bindings and language interoperability, (c) composition and
architecture, or (d) WASI/runtime/tooling? I will wait for your emphasis
before writing any changes to the existing resource.
