(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32) (result i32 i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    local.get 1
    i32.const 0
    call 2
    global.set 10
    local.set 2
    local.get 2)
  (func (;2;) (type 2) (param i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 2
    local.get 3
    local.get 0
    local.get 1

    local.set 4
    local.set 5
    local.get 4
    i32.or
    local.set 4
    local.get 5
    i32.add
    local.get 4
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.set 4
    local.set 5
    local.get 4
    i32.or
    local.set 4
    local.get 5
    i32.sub
    local.get 4
    local.set 4
    local.set 5
    local.get 4
    i32.or
    local.set 4
    local.get 5
    i32.or
    local.get 4)
  (memory (;0;) 4)
  (global (;0;) (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 66560))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 132096))
  (global (;7;) i32 (i32.const 196608))
  (global (;8;) i32 (i32.const 0))
  (global (;9;) i32 (i32.const 1))
  (global (;10;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "add" (func 1))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9))
  (export "taint_result_2_0" (global 10))
  (export "taint_signature_add" (func 2)))
