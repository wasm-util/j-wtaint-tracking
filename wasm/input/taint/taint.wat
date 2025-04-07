(module $taint.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (func $__wasm_call_ctors (type 0))
  (func $bitwise_or (type 1) (param i32 i32 i32)
    (local i32 i32)
    local.get 1
    i32.load
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 2
    local.get 1
    i32.load offset=20000
    local.get 0
    i32.load offset=20000
    i32.or
    i32.store offset=20000
    local.get 2
    local.get 3
    local.get 4
    i32.or
    i32.store)
  (func $start (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    i32.const 1
    i32.store offset=20012
    local.get 2
    i32.const 0
    i32.store offset=20008
    local.get 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 12
    i32.add
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 4
    i32.add
    call $bitwise_or
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 66560))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 66560))
  (global (;7;) i32 (i32.const 131072))
  (global (;8;) i32 (i32.const 0))
  (global (;9;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "bitwise_or" (func $bitwise_or))
  (export "start" (func $start))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9)))
