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

The WebAssembly Component Model defines a language-neutral composition layer for WebAssembly. It packages core modules behind typed interfaces so independently developed components can be composed without sharing a linear-memory ABI.

## Key Concepts

- Components expose typed imports and exports.
- WebAssembly Interface Types (WIT) describes interfaces, records, variants, resources, and worlds; tooling uses these definitions to generate bindings for host and guest languages.
- The canonical ABI defines how interface values are lifted from and lowered to core WebAssembly values, including strings, lists, records, and handles.
- Components can compose through shared-nothing linking and can work with resource handles, allowing ownership and lifecycle to be represented across component boundaries.
- WASI 0.2 is based on the Component Model and provides a stable, production-oriented preview of these features. The Component Model repository documents WASI 0.3 work for asynchronous functions, streams, futures, and native concurrency support.
- The model is being standardized incrementally by the WebAssembly Community Group; the design repository remains the source of truth for feature status and gated proposals.

## Connections

- [[index]] — vault index
- [[tags]] — registered vault tags

## Sources

- https://component-model.bytecodealliance.org/
- https://component-model.bytecodealliance.org/design/wit.html
- https://github.com/WebAssembly/component-model
- https://github.com/WebAssembly/component-model/blob/main/design/mvp/Explainer.md
