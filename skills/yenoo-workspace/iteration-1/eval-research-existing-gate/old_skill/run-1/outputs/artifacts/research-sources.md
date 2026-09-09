# WebAssembly component model research artifacts

## Vault-first search

- Existing note used: `resources/webassembly-component-model.md`
- Existing coverage: typed imports/exports and interface composition.
- No vault files were changed during this evaluation.

## Sources consulted

- https://component-model.bytecodealliance.org/
  - Component model overview and concepts.
- https://component-model.bytecodealliance.org/design/wit.html
  - WIT reference and interface-definition concepts.
- https://component-model.bytecodealliance.org/language-support.html
  - Language/tooling workflow and support considerations.
- https://github.com/WebAssembly/component-model/blob/main/design/mvp/Explainer.md
  - Component model MVP explainer, including the relationship between
    components, core modules, and adapters.

## Proposed update scope

The response proposes adding details about WIT, canonical ABI lifting/lowering,
component composition, WASI's component-oriented direction, and the
toolchain/runtime workflow. Confirmation is required before updating the
existing vault note.
