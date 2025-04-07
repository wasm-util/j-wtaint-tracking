## j-wtaint-tracking
Simple taint tracking system applied to WebAssembly, built using Gradle and Java 17 (but may be used with lower versions). This system works by instrumenting taint tracking logic during compile-time, without requiring any modifications to the embedder.

### How to run?
Run task `runMain` with args:
- Test name, in folder wasm/input/...
- Entry function name
- Params to taint e.g. params 0 and 1 would be `0, 1`