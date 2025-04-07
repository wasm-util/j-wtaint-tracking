(module $lz77.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0))
  (func $lz77_compress (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 3
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 3
      local.set 5
      local.get 0
      local.get 4
      local.tee 6
      i32.add
      local.tee 7
      i32.load8_u
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          i32.const 0
          local.set 9
          local.get 3
          local.set 10
          br 1 (;@2;)
        end
        i32.const 0
        local.get 1
        local.get 6
        i32.sub
        local.tee 4
        local.get 4
        local.get 1
        i32.gt_u
        select
        local.set 11
        local.get 6
        i32.const -1
        i32.add
        local.tee 4
        i32.const 63
        local.get 4
        i32.const 63
        i32.lt_u
        select
        i32.const 1
        i32.add
        local.set 12
        i32.const 0
        local.set 13
        i32.const 1
        local.set 14
        local.get 3
        local.set 15
        i32.const 0
        local.set 4
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.set 9
          local.get 4
          local.set 10
          local.get 15
          local.set 8
          local.get 14
          local.set 16
          local.get 7
          local.get 13
          local.tee 14
          i32.add
          local.set 15
          i32.const 0
          local.set 3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 11
                local.get 3
                local.tee 3
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.set 13
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 15
                local.get 3
                i32.add
                i32.const -1
                i32.add
                i32.load8_u
                local.get 7
                local.get 3
                i32.add
                i32.load8_u
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                local.set 13
                br 2 (;@4;)
              end
              local.get 3
              i32.const 1
              i32.add
              local.tee 4
              local.set 3
              i32.const 16
              local.set 13
              local.get 4
              i32.const 16
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 9
          local.set 3
          local.get 10
          local.set 4
          local.get 8
          local.set 15
          block  ;; label = @4
            local.get 13
            local.tee 13
            local.get 10
            i32.le_s
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 13
              local.get 6
              i32.add
              local.tee 15
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 16
              local.set 3
              local.get 13
              local.set 4
              i32.const 0
              local.set 15
              br 1 (;@4;)
            end
            local.get 16
            local.set 3
            local.get 13
            local.set 4
            local.get 0
            local.get 15
            i32.add
            i32.load8_u
            local.set 15
          end
          local.get 14
          i32.const -1
          i32.add
          local.set 13
          local.get 16
          i32.const 1
          i32.add
          local.set 14
          local.get 15
          local.tee 10
          local.set 15
          local.get 4
          local.tee 9
          local.set 4
          local.get 3
          local.tee 8
          local.set 3
          local.get 8
          local.set 8
          local.get 9
          local.set 9
          local.get 10
          local.set 10
          local.get 16
          local.get 12
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 5
      i32.add
      local.tee 3
      local.get 8
      i32.store8
      local.get 3
      i32.const 2
      i32.add
      local.get 10
      i32.store8
      local.get 3
      i32.const 1
      i32.add
      local.get 9
      local.tee 4
      i32.store8
      local.get 5
      i32.const 3
      i32.add
      local.tee 13
      local.set 3
      local.get 6
      local.get 4
      i32.add
      i32.const 1
      i32.add
      local.tee 7
      local.set 4
      local.get 13
      local.set 13
      local.get 7
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 13)
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
  (export "lz77_compress" (func $lz77_compress))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9)))
