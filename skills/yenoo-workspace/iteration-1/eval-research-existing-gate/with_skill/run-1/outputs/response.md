# WebAssembly component model — proposed update

I searched the vault first. The existing resource
`vault/resources/webassembly-component-model.md` already covers the basic
definition, typed imports/exports, and interface composition, so I would update
that note rather than create a duplicate.

## New takeaways from current research

1. **WIT is the interface boundary.** The WebAssembly Interface Type (WIT)
   language describes a component's imports and exports in a language-neutral,
   developer-friendly form. Tooling can use it to generate bindings for
   different source languages.
2. **Components are composable above core Wasm modules.** The model adds
   canonical lifting/lowering and interface adaptation so components can
   exchange high-level values instead of sharing an application-specific
   linear-memory ABI.
3. **Linking makes isolation a deliberate choice.** Component linking supports
   both shared-nothing composition and shared-everything arrangements, allowing
   toolchains to choose whether underlying core modules share low-level memory.
4. **Resources provide managed handles.** Resource types represent host or
   component-managed objects through typed handles and lifecycle operations,
   making APIs such as files, sockets, or database connections expressible
   without exposing representation details.
5. **The roadmap now includes native async composition.** WASI 0.3 builds on
   the component model with `async`, `future`, and `stream` types; this is a
   meaningful extension beyond the initial synchronous component model.

## Sources consulted

- https://component-model.bytecodealliance.org/
- https://github.com/WebAssembly/component-model
- https://raw.githubusercontent.com/WebAssembly/component-model/main/design/mvp/WIT.md
- https://raw.githubusercontent.com/WebAssembly/component-model/main/design/mvp/Linking.md
- https://github.com/WebAssembly/WASI

I have **not written or modified the vault note, index, tags, or log** yet.
Which aspects should I emphasize in the update: WIT and cross-language
tooling, linking/isolation, resource handles, or async/WASI evolution?
