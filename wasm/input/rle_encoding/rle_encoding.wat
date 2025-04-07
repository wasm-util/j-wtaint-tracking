(module $rle_encoding.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0))
  (func $compressRLE (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load8_u
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=1
        local.tee 3
        br_if 0 (;@2;)
        i32.const 49
        local.set 4
        local.get 2
        local.set 3
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 4
      local.get 3
      local.set 3
      i32.const 0
      local.set 0
      local.get 2
      local.set 2
      i32.const 1
      local.set 5
      loop  ;; label = @2
        local.get 5
        local.set 5
        local.get 0
        local.set 0
        local.get 4
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.and
            local.get 2
            local.tee 3
            i32.const 255
            i32.and
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 3
            local.set 2
            local.get 0
            local.set 0
            br 1 (;@3;)
          end
          local.get 1
          local.get 0
          i32.add
          local.tee 2
          local.get 3
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.get 5
          i32.const 48
          i32.add
          i32.store8
          i32.const 1
          local.set 5
          local.get 4
          i32.load8_u
          local.set 2
          local.get 0
          i32.const 2
          i32.add
          local.set 0
        end
        local.get 4
        i32.const 1
        i32.add
        local.tee 3
        local.set 4
        local.get 3
        i32.load8_u
        local.tee 6
        local.set 3
        local.get 0
        local.tee 7
        local.set 0
        local.get 2
        local.tee 8
        local.set 2
        local.get 5
        local.tee 9
        local.set 5
        local.get 6
        br_if 0 (;@2;)
      end
      local.get 9
      i32.const 48
      i32.add
      local.set 4
      local.get 8
      local.set 3
      local.get 7
      local.set 0
    end
    local.get 1
    local.get 0
    i32.add
    local.tee 0
    local.get 3
    i32.store8
    local.get 0
    i32.const 2
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 1
    i32.add
    local.get 4
    i32.store8)
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
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "compressRLE" (func $compressRLE))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9)))
