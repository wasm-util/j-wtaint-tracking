(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (import "env" "memory" (memory (;0;) 4))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32 i32)
    local.get 0
    i32.const -1
    local.get 1
    i32.const 0
    call 2)
  (func (;2;) (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    drop
    local.tee 20
    i32.load8_u
    local.get 20
    i32.load8_u offset=65536
    local.set 5
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        drop
        local.tee 20
        i32.load8_u offset=1
        local.get 20
        i32.load8_u offset=65537
        local.set 7
        local.tee 6
        local.get 7
        drop
        br_if 0 (;@2;)
        i32.const 49
        i32.const 0
        local.set 9
        local.set 8
        local.get 4
        local.get 5
        local.set 7
        local.set 6
        i32.const 0
        i32.const 0
        local.set 1
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.const 0
      local.set 20
      local.set 21
      local.get 20
      i32.or
      local.set 20
      local.get 21
      i32.add
      local.get 20
      local.set 9
      local.set 8
      local.get 6
      local.get 7
      local.set 7
      local.set 6
      i32.const 0
      i32.const 0
      local.set 1
      local.set 0
      local.get 4
      local.get 5
      local.set 5
      local.set 4
      i32.const 1
      i32.const 0
      local.set 11
      local.set 10
      loop  ;; label = @2
        local.get 10
        local.get 11
        local.set 11
        local.set 10
        local.get 0
        local.get 1
        local.set 1
        local.set 0
        local.get 8
        local.get 9
        local.set 9
        local.set 8
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 7
            i32.const 255
            i32.const 0
            local.set 20
            local.set 21
            local.get 20
            i32.or
            local.set 20
            local.get 21
            i32.and
            local.get 20
            local.get 4
            local.get 5
            local.set 7
            local.tee 6
            local.get 7
            i32.const 255
            i32.const 0
            local.set 20
            local.set 21
            local.get 20
            i32.or
            local.set 20
            local.get 21
            i32.and
            local.get 20
            local.set 20
            local.set 21
            local.get 20
            i32.or
            local.set 20
            local.get 21
            i32.ne
            local.get 20
            drop
            br_if 0 (;@4;)
            local.get 10
            local.get 11
            i32.const 1
            i32.const 0
            local.set 20
            local.set 21
            local.get 20
            i32.or
            local.set 20
            local.get 21
            i32.add
            local.get 20
            local.set 11
            local.set 10
            local.get 6
            local.get 7
            local.set 5
            local.set 4
            local.get 0
            local.get 1
            local.set 1
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          local.get 0
          local.get 1
          local.set 20
          local.set 21
          local.get 20
          i32.or
          local.set 20
          local.get 21
          i32.add
          local.get 20
          local.set 5
          local.tee 4
          local.get 5
          local.get 6
          local.get 7
          local.set 20
          local.set 21
          drop
          local.tee 22
          local.get 21
          i32.store8
          local.get 22
          local.get 20
          i32.store8 offset=65536
          local.get 4
          local.get 5
          i32.const 1
          i32.const 0
          local.set 20
          local.set 21
          local.get 20
          i32.or
          local.set 20
          local.get 21
          i32.add
          local.get 20
          local.get 10
          local.get 11
          i32.const 48
          i32.const 0
          local.set 20
          local.set 21
          local.get 20
          i32.or
          local.set 20
          local.get 21
          i32.add
          local.get 20
          local.set 20
          local.set 21
          drop
          local.tee 22
          local.get 21
          i32.store8
          local.get 22
          local.get 20
          i32.store8 offset=65536
          i32.const 1
          i32.const 0
          local.set 11
          local.set 10
          local.get 8
          local.get 9
          drop
          local.tee 20
          i32.load8_u
          local.get 20
          i32.load8_u offset=65536
          local.set 5
          local.set 4
          local.get 0
          local.get 1
          i32.const 2
          i32.const 0
          local.set 20
          local.set 21
          local.get 20
          i32.or
          local.set 20
          local.get 21
          i32.add
          local.get 20
          local.set 1
          local.set 0
        end
        local.get 8
        local.get 9
        i32.const 1
        i32.const 0
        local.set 20
        local.set 21
        local.get 20
        i32.or
        local.set 20
        local.get 21
        i32.add
        local.get 20
        local.set 7
        local.tee 6
        local.get 7
        local.set 9
        local.set 8
        local.get 6
        local.get 7
        drop
        local.tee 20
        i32.load8_u
        local.get 20
        i32.load8_u offset=65536
        local.set 13
        local.tee 12
        local.get 13
        local.set 7
        local.set 6
        local.get 0
        local.get 1
        local.set 15
        local.tee 14
        local.get 15
        local.set 1
        local.set 0
        local.get 4
        local.get 5
        local.set 17
        local.tee 16
        local.get 17
        local.set 5
        local.set 4
        local.get 10
        local.get 11
        local.set 19
        local.tee 18
        local.get 19
        local.set 11
        local.set 10
        local.get 12
        local.get 13
        drop
        br_if 0 (;@2;)
      end
      local.get 18
      local.get 19
      i32.const 48
      i32.const 0
      local.set 20
      local.set 21
      local.get 20
      i32.or
      local.set 20
      local.get 21
      i32.add
      local.get 20
      local.set 9
      local.set 8
      local.get 16
      local.get 17
      local.set 7
      local.set 6
      local.get 14
      local.get 15
      local.set 1
      local.set 0
    end
    local.get 2
    local.get 3
    local.get 0
    local.get 1
    local.set 20
    local.set 21
    local.get 20
    i32.or
    local.set 20
    local.get 21
    i32.add
    local.get 20
    local.set 1
    local.tee 0
    local.get 1
    local.get 6
    local.get 7
    local.set 20
    local.set 21
    drop
    local.tee 22
    local.get 21
    i32.store8
    local.get 22
    local.get 20
    i32.store8 offset=65536
    local.get 0
    local.get 1
    i32.const 2
    i32.const 0
    local.set 20
    local.set 21
    local.get 20
    i32.or
    local.set 20
    local.get 21
    i32.add
    local.get 20
    i32.const 0
    i32.const 0
    local.set 20
    local.set 21
    drop
    local.tee 22
    local.get 21
    i32.store8
    local.get 22
    local.get 20
    i32.store8 offset=65536
    local.get 0
    local.get 1
    i32.const 1
    i32.const 0
    local.set 20
    local.set 21
    local.get 20
    i32.or
    local.set 20
    local.get 21
    i32.add
    local.get 20
    local.get 8
    local.get 9
    local.set 20
    local.set 21
    drop
    local.tee 22
    local.get 21
    i32.store8
    local.get 22
    local.get 20
    i32.store8 offset=65536)
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
  (export "__wasm_call_ctors" (func 0))
  (export "compressRLE" (func 1))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9))
  (export "taint_signature_compressRLE" (func 2)))
