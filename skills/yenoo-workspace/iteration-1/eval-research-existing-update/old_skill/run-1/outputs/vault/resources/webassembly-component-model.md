---
title: WebAssembly component model
created: 2026-09-01
updated: 2026-09-09
type: resource
status: reference
tags: [webassembly, software-architecture]
---

# WebAssembly component model

## Overview

The component model defines a way to compose WebAssembly modules through typed interfaces.

## Key Concepts

- Components expose typed imports and exports.
- Interface composition helps modules interoperate across languages.
- WIT (WebAssembly Interface Types) defines language-neutral interfaces,
  including worlds, interfaces, functions, and data types.
- The canonical ABI lifts and lowers rich interface values such as strings,
  lists, records, variants, and results between component interfaces and core
  WebAssembly representations.
- Components can be instantiated and composed with other components, making
  independently built implementations interoperable behind shared contracts.
- WASI 0.2 uses WIT and the component model for modular, portable APIs, while
  WASI 0.3 adds native `async`, `future`, and `stream` functionality.

## Connections

- [[index]] — vault index

## Sources

- https://component-model.bytecodealliance.org/
- https://component-model.bytecodealliance.org/design/wit.html
- https://github.com/WebAssembly/component-model
- https://github.com/WebAssembly/WASI
