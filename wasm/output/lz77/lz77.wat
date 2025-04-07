(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32 i32 i32) (result i32 i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    local.get 1
    local.get 2
    i32.const 0
    call 2
    global.set 10
    local.set 3
    local.get 3)
  (func (;2;) (type 2) (param i32 i32 i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 3
      drop
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      return
    end
    i32.const 0
    i32.const 0
    local.set 7
    local.set 6
    i32.const 0
    i32.const 0
    local.set 9
    local.set 8
    loop  ;; label = @1
      local.get 6
      local.get 7
      local.set 11
      local.set 10
      local.get 0
      local.get 1
      local.get 8
      local.get 9
      local.set 13
      local.tee 12
      local.get 13
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      local.set 15
      local.tee 14
      local.get 15
      drop
      local.tee 34
      i32.load8_u
      local.get 34
      i32.load8_u offset=65536
      local.set 7
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 12
          local.get 13
          drop
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          local.set 17
          local.set 16
          i32.const 0
          i32.const 0
          local.set 19
          local.set 18
          local.get 6
          local.get 7
          local.set 21
          local.set 20
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 0
        local.get 2
        local.get 3
        local.get 12
        local.get 13
        local.set 34
        local.set 35
        local.get 34
        i32.or
        local.set 34
        local.get 35
        i32.sub
        local.get 34
        local.set 9
        local.tee 8
        local.get 9
        local.get 8
        local.get 9
        local.get 2
        local.get 3
        local.set 34
        local.set 35
        local.get 34
        i32.or
        local.set 34
        local.get 35
        i32.gt_u
        local.get 34
        local.set 34
        local.set 35
        local.set 36
        local.set 37
        drop
        local.tee 38
        local.get 36
        local.get 34
        select
        local.set 34
        local.get 38
        local.get 37
        local.get 35
        select
        local.get 34
        local.set 23
        local.set 22
        local.get 12
        local.get 13
        i32.const -1
        i32.const 0
        local.set 34
        local.set 35
        local.get 34
        i32.or
        local.set 34
        local.get 35
        i32.add
        local.get 34
        local.set 9
        local.tee 8
        local.get 9
        i32.const 63
        i32.const 0
        local.get 8
        local.get 9
        i32.const 63
        i32.const 0
        local.set 34
        local.set 35
        local.get 34
        i32.or
        local.set 34
        local.get 35
        i32.lt_u
        local.get 34
        local.set 34
        local.set 35
        local.set 36
        local.set 37
        drop
        local.tee 38
        local.get 36
        local.get 34
        select
        local.set 34
        local.get 38
        local.get 37
        local.get 35
        select
        local.get 34
        i32.const 1
        i32.const 0
        local.set 34
        local.set 35
        local.get 34
        i32.or
        local.set 34
        local.get 35
        i32.add
        local.get 34
        local.set 25
        local.set 24
        i32.const 0
        i32.const 0
        local.set 27
        local.set 26
        i32.const 1
        i32.const 0
        local.set 29
        local.set 28
        local.get 6
        local.get 7
        local.set 31
        local.set 30
        i32.const 0
        i32.const 0
        local.set 9
        local.set 8
        i32.const 0
        i32.const 0
        local.set 7
        local.set 6
        loop  ;; label = @3
          local.get 6
          local.get 7
          local.set 19
          local.set 18
          local.get 8
          local.get 9
          local.set 21
          local.set 20
          local.get 30
          local.get 31
          local.set 17
          local.set 16
          local.get 28
          local.get 29
          local.set 33
          local.set 32
          local.get 14
          local.get 15
          local.get 26
          local.get 27
          local.set 29
          local.tee 28
          local.get 29
          local.set 34
          local.set 35
          local.get 34
          i32.or
          local.set 34
          local.get 35
          i32.add
          local.get 34
          local.set 31
          local.set 30
          i32.const 0
          i32.const 0
          local.set 7
          local.set 6
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 22
                local.get 23
                local.get 6
                local.get 7
                local.set 7
                local.tee 6
                local.get 7
                local.set 34
                local.set 35
                local.get 34
                i32.or
                local.set 34
                local.get 35
                i32.ne
                local.get 34
                drop
                br_if 0 (;@6;)
                local.get 22
                local.get 23
                local.set 27
                local.set 26
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 30
                local.get 31
                local.get 6
                local.get 7
                local.set 34
                local.set 35
                local.get 34
                i32.or
                local.set 34
                local.get 35
                i32.add
                local.get 34
                i32.const -1
                i32.const 0
                local.set 34
                local.set 35
                local.get 34
                i32.or
                local.set 34
                local.get 35
                i32.add
                local.get 34
                drop
                local.tee 34
                i32.load8_u
                local.get 34
                i32.load8_u offset=65536
                local.get 14
                local.get 15
                local.get 6
                local.get 7
                local.set 34
                local.set 35
                local.get 34
                i32.or
                local.set 34
                local.get 35
                i32.add
                local.get 34
                drop
                local.tee 34
                i32.load8_u
                local.get 34
                i32.load8_u offset=65536
                local.set 34
                local.set 35
                local.get 34
                i32.or
                local.set 34
                local.get 35
                i32.eq
                local.get 34
                drop
                br_if 0 (;@6;)
                local.get 6
                local.get 7
                local.set 27
                local.set 26
                br 2 (;@4;)
              end
              local.get 6
              local.get 7
              i32.const 1
              i32.const 0
              local.set 34
              local.set 35
              local.get 34
              i32.or
              local.set 34
              local.get 35
              i32.add
              local.get 34
              local.set 9
              local.tee 8
              local.get 9
              local.set 7
              local.set 6
              i32.const 16
              i32.const 0
              local.set 27
              local.set 26
              local.get 8
              local.get 9
              i32.const 16
              i32.const 0
              local.set 34
              local.set 35
              local.get 34
              i32.or
              local.set 34
              local.get 35
              i32.ne
              local.get 34
              drop
              br_if 0 (;@5;)
            end
          end
          local.get 18
          local.get 19
          local.set 7
          local.set 6
          local.get 20
          local.get 21
          local.set 9
          local.set 8
          local.get 16
          local.get 17
          local.set 31
          local.set 30
          block  ;; label = @4
            local.get 26
            local.get 27
            local.set 27
            local.tee 26
            local.get 27
            local.get 20
            local.get 21
            local.set 34
            local.set 35
            local.get 34
            i32.or
            local.set 34
            local.get 35
            i32.le_s
            local.get 34
            drop
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 26
              local.get 27
              local.get 12
              local.get 13
              local.set 34
              local.set 35
              local.get 34
              i32.or
              local.set 34
              local.get 35
              i32.add
              local.get 34
              local.set 31
              local.tee 30
              local.get 31
              local.get 2
              local.get 3
              local.set 34
              local.set 35
              local.get 34
              i32.or
              local.set 34
              local.get 35
              i32.lt_u
              local.get 34
              drop
              br_if 0 (;@5;)
              local.get 32
              local.get 33
              local.set 7
              local.set 6
              local.get 26
              local.get 27
              local.set 9
              local.set 8
              i32.const 0
              i32.const 0
              local.set 31
              local.set 30
              br 1 (;@4;)
            end
            local.get 32
            local.get 33
            local.set 7
            local.set 6
            local.get 26
            local.get 27
            local.set 9
            local.set 8
            local.get 0
            local.get 1
            local.get 30
            local.get 31
            local.set 34
            local.set 35
            local.get 34
            i32.or
            local.set 34
            local.get 35
            i32.add
            local.get 34
            drop
            local.tee 34
            i32.load8_u
            local.get 34
            i32.load8_u offset=65536
            local.set 31
            local.set 30
          end
          local.get 28
          local.get 29
          i32.const -1
          i32.const 0
          local.set 34
          local.set 35
          local.get 34
          i32.or
          local.set 34
          local.get 35
          i32.add
          local.get 34
          local.set 27
          local.set 26
          local.get 32
          local.get 33
          i32.const 1
          i32.const 0
          local.set 34
          local.set 35
          local.get 34
          i32.or
          local.set 34
          local.get 35
          i32.add
          local.get 34
          local.set 29
          local.set 28
          local.get 30
          local.get 31
          local.set 21
          local.tee 20
          local.get 21
          local.set 31
          local.set 30
          local.get 8
          local.get 9
          local.set 19
          local.tee 18
          local.get 19
          local.set 9
          local.set 8
          local.get 6
          local.get 7
          local.set 17
          local.tee 16
          local.get 17
          local.set 7
          local.set 6
          local.get 16
          local.get 17
          local.set 17
          local.set 16
          local.get 18
          local.get 19
          local.set 19
          local.set 18
          local.get 20
          local.get 21
          local.set 21
          local.set 20
          local.get 32
          local.get 33
          local.get 24
          local.get 25
          local.set 34
          local.set 35
          local.get 34
          i32.or
          local.set 34
          local.get 35
          i32.ne
          local.get 34
          drop
          br_if 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      local.get 10
      local.get 11
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      local.set 7
      local.tee 6
      local.get 7
      local.get 16
      local.get 17
      local.set 34
      local.set 35
      drop
      local.tee 36
      local.get 35
      i32.store8
      local.get 36
      local.get 34
      i32.store8 offset=65536
      local.get 6
      local.get 7
      i32.const 2
      i32.const 0
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      local.get 20
      local.get 21
      local.set 34
      local.set 35
      drop
      local.tee 36
      local.get 35
      i32.store8
      local.get 36
      local.get 34
      i32.store8 offset=65536
      local.get 6
      local.get 7
      i32.const 1
      i32.const 0
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      local.get 18
      local.get 19
      local.set 9
      local.tee 8
      local.get 9
      local.set 34
      local.set 35
      drop
      local.tee 36
      local.get 35
      i32.store8
      local.get 36
      local.get 34
      i32.store8 offset=65536
      local.get 10
      local.get 11
      i32.const 3
      i32.const 0
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      local.set 27
      local.tee 26
      local.get 27
      local.set 7
      local.set 6
      local.get 12
      local.get 13
      local.get 8
      local.get 9
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      i32.const 1
      i32.const 0
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.add
      local.get 34
      local.set 15
      local.tee 14
      local.get 15
      local.set 9
      local.set 8
      local.get 26
      local.get 27
      local.set 27
      local.set 26
      local.get 14
      local.get 15
      local.get 2
      local.get 3
      local.set 34
      local.set 35
      local.get 34
      i32.or
      local.set 34
      local.get 35
      i32.lt_u
      local.get 34
      drop
      br_if 0 (;@1;)
    end
    local.get 26
    local.get 27)
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
  (export "lz77_compress" (func 1))
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
  (export "taint_signature_lz77_compress" (func 2)))
