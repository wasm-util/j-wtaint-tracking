(module
  (type (;0;) (func))
  (type (;1;) (func))
  (func (;0;) (type 0))
  (func (;1;) (type 0)
    call 2)
  (func (;2;) (type 1)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=200
    i32.const 0
    i32.load offset=100
    i32.or
    i32.store offset=300
    i32.const 0
    i32.const 0
    i32.load offset=65736
    i32.const 0
    i32.load offset=65636
    i32.or
    i32.store offset=65836)
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
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "foo" (func 1))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9)))
