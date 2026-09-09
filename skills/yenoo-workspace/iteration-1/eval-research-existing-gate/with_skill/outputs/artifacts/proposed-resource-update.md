# Proposed update to `resources/webassembly-component-model`

This is a draft only; it has not been applied to the vault.

## Key Concepts

- WIT is a language-neutral IDL for describing component imports and exports
  and generating bindings across source languages.
- Canonical lifting/lowering adapts core Wasm values to component-level types.
- Component linking supports shared-nothing and shared-everything composition,
  making memory isolation an explicit design choice.
- `resource` types expose typed handles with lifecycle semantics while hiding
  representations.
- WASI 0.3 adds native `async`, `future`, and `stream` composition.

## Connections

- `[[index]]` — vault index

## Sources

- https://component-model.bytecodealliance.org/
- https://github.com/WebAssembly/component-model
- https://raw.githubusercontent.com/WebAssembly/component-model/main/design/mvp/WIT.md
- https://raw.githubusercontent.com/WebAssembly/component-model/main/design/mvp/Linking.md
- https://github.com/WebAssembly/WASI
