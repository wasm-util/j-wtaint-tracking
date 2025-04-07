(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32 i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32 i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    local.get 2
    i32.const 0
    call 3)
  (func (;2;) (type 2) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    local.get 1
    i32.const 0
    call 4
    global.set 11
    local.set 2
    local.get 2)
  (func (;3;) (type 3) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 2
    local.get 3
    drop
    local.tee 10
    local.get 10
    i32.load
    i32.load offset=65536
    local.set 7
    local.set 6
    local.get 0
    local.get 1
    drop
    local.tee 10
    local.get 10
    i32.load
    i32.load offset=65536
    local.set 9
    local.set 8
    local.get 4
    local.get 5
    local.get 2
    local.get 3
    drop
    local.tee 10
    local.get 10
    i32.load offset=20000
    i32.load offset=85536
    local.get 0
    local.get 1
    drop
    local.tee 10
    local.get 10
    i32.load offset=20000
    i32.load offset=85536
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.or
    local.get 10
    local.set 10
    local.set 11
    drop
    local.tee 12
    local.get 11
    i32.store offset=20000
    local.get 12
    local.get 10
    i32.store offset=85536
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.or
    local.get 10
    local.set 10
    local.set 11
    drop
    local.tee 12
    local.get 11
    i32.store
    local.get 12
    local.get 10
    i32.store offset=65536)
  (func (;4;) (type 4) (param i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    global.get 10
    i32.const 16
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.sub
    local.get 6
    local.set 5
    local.tee 4
    local.get 5
    global.set 10
    global.set 0
    local.get 4
    local.get 5
    local.get 2
    local.get 3
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=8
    local.get 8
    local.get 6
    i32.store offset=65544
    local.get 4
    local.get 5
    local.get 0
    local.get 1
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=12
    local.get 8
    local.get 6
    i32.store offset=65548
    local.get 4
    local.get 5
    i32.const 1
    i32.const 0
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=20012
    local.get 8
    local.get 6
    i32.store offset=85548
    local.get 4
    local.get 5
    i32.const 0
    i32.const 0
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=20008
    local.get 8
    local.get 6
    i32.store offset=85544
    local.get 4
    local.get 5
    i32.const 0
    i32.const 0
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=4
    local.get 8
    local.get 6
    i32.store offset=65540
    local.get 4
    local.get 5
    i32.const 12
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    local.get 4
    local.get 5
    i32.const 8
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    local.get 4
    local.get 5
    i32.const 4
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    call 3
    local.get 4
    local.get 5
    drop
    local.tee 6
    local.get 6
    i32.load offset=4
    i32.load offset=65540
    local.set 3
    local.set 2
    local.get 4
    local.get 5
    i32.const 16
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    global.set 10
    global.set 0
    local.get 2
    local.get 3)
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
  (global (;11;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "bitwise_or" (func 1))
  (export "start" (func 2))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9)))
