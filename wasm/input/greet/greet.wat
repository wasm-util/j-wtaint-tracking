(wasmModule
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param i32) (result i32)))
  (type (;12;) (func (param i32 i32)))
  (type (;13;) (func (param i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32) (result i32)))
  (func (;0;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.load
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 3
              local.get 0
              i32.load offset=8
              local.tee 2
              i32.sub
              local.get 1
              i32.load offset=8
              local.tee 1
              i32.lt_u
              if  ;; label = @6
                local.get 1
                local.get 2
                i32.add
                local.tee 4
                local.get 2
                i32.lt_u
                br_if 3 (;@3;)
                local.get 3
                i32.const 1
                i32.shl
                local.tee 2
                local.get 4
                local.get 4
                local.get 2
                i32.lt_u
                select
                local.tee 2
                i32.const 0
                i32.lt_s
                br_if 3 (;@3;)
                local.get 3
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.load
                local.get 3
                local.get 2
                call 8
                local.tee 3
                i32.eqz
                br_if 2 (;@4;)
                br 4 (;@2;)
              end
              local.get 0
              i32.load
              local.set 3
              br 4 (;@1;)
            end
            local.get 2
            i32.const 1
            call 7
            local.tee 3
            br_if 2 (;@2;)
          end
          local.get 2
          i32.const 1
          call 33
          unreachable
        end
        call 34
        unreachable
      end
      local.get 0
      local.get 3
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 2
      i32.store
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.set 2
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    i32.add
    i32.store
    local.get 2
    local.get 3
    i32.add
    local.get 5
    local.get 1
    call 44
    drop)
  (func (;1;) (type 8) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 1
              local.get 0
              i32.load offset=4
              i32.eq
              if  ;; label = @6
                local.get 1
                i32.const 1
                i32.add
                local.tee 2
                local.get 1
                i32.lt_u
                br_if 3 (;@3;)
                local.get 1
                i32.const 1
                i32.shl
                local.tee 3
                local.get 2
                local.get 2
                local.get 3
                i32.lt_u
                select
                local.tee 3
                i32.const 0
                i32.lt_s
                br_if 3 (;@3;)
                local.get 1
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.load
                local.get 1
                local.get 3
                call 8
                local.tee 2
                i32.eqz
                br_if 2 (;@4;)
                br 4 (;@2;)
              end
              local.get 0
              i32.load
              local.set 2
              br 4 (;@1;)
            end
            local.get 3
            i32.const 1
            call 7
            local.tee 2
            br_if 2 (;@2;)
          end
          local.get 3
          i32.const 1
          call 33
          unreachable
        end
        call 34
        unreachable
      end
      local.get 0
      local.get 2
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 3
      i32.store
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.set 1
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 1
    i32.add
    i32.store
    local.get 1
    local.get 2
    i32.add
    i32.const 1048583
    i32.load8_u
    i32.store8)
  (func (;2;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 4
              local.get 0
              i32.load offset=8
              local.tee 3
              i32.sub
              local.get 2
              i32.lt_u
              if  ;; label = @6
                local.get 2
                local.get 3
                i32.add
                local.tee 5
                local.get 3
                i32.lt_u
                br_if 3 (;@3;)
                local.get 4
                i32.const 1
                i32.shl
                local.tee 3
                local.get 5
                local.get 5
                local.get 3
                i32.lt_u
                select
                local.tee 3
                i32.const 0
                i32.lt_s
                br_if 3 (;@3;)
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.load
                local.get 4
                local.get 3
                call 8
                local.tee 4
                i32.eqz
                br_if 2 (;@4;)
                br 4 (;@2;)
              end
              local.get 0
              i32.load
              local.set 4
              br 4 (;@1;)
            end
            local.get 3
            i32.const 1
            call 7
            local.tee 4
            br_if 2 (;@2;)
          end
          local.get 3
          i32.const 1
          call 33
          unreachable
        end
        call 34
        unreachable
      end
      local.get 0
      local.get 4
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 3
      i32.store
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.set 3
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    i32.add
    i32.store
    local.get 3
    local.get 4
    i32.add
    local.get 1
    local.get 2
    call 44
    drop)
  (func (;3;) (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.gt_s
      if  ;; label = @2
        local.get 0
        if  ;; label = @3
          local.get 0
          i32.const 1
          call 7
          local.tee 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          return
        end
        i32.const 1
        return
      end
      call 6
      unreachable
    end
    local.get 0
    i32.const 1
    call 33
    unreachable)
  (func (;4;) (type 0) (param i32 i32)
    local.get 1
    if  ;; label = @1
      local.get 0
      call 31
    end)
  (func (;5;) (type 5) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    call 20
    local.get 1
    i32.load offset=28
    local.tee 2
    i32.const -1
    i32.add
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          if  ;; label = @4
            local.get 0
            i32.const -1
            i32.le_s
            br_if 1 (;@3;)
            local.get 1
            i32.load offset=24
            local.set 3
            i32.const 1
            local.set 2
            local.get 0
            if  ;; label = @5
              local.get 0
              i32.const 1
              call 7
              local.tee 2
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 1
            i32.const 0
            i32.store offset=72
            local.get 1
            local.get 0
            i32.store offset=68
            local.get 1
            local.get 2
            i32.store offset=64
            local.get 1
            i32.const -64
            i32.sub
            local.get 3
            local.get 0
            call 2
            local.get 1
            i32.const 40
            i32.add
            local.get 1
            i32.load offset=72
            i32.store
            local.get 1
            local.get 1
            i64.load offset=64
            i64.store offset=32
            i32.const 7
            i32.const 1
            call 7
            local.tee 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i64.const 7
            i64.store offset=68 align=4
            local.get 1
            local.get 0
            i32.store offset=64
            local.get 1
            i32.const -64
            i32.sub
            i32.const 1048576
            i32.const 7
            call 2
            local.get 1
            i32.const 56
            i32.add
            local.tee 0
            local.get 1
            i32.load offset=72
            i32.store
            local.get 1
            local.get 1
            i64.load offset=64
            i64.store offset=48
            local.get 1
            i32.const 48
            i32.add
            local.get 1
            i32.const 32
            i32.add
            call 0
            local.get 1
            i32.const 48
            i32.add
            call 1
            local.get 1
            i32.const 72
            i32.add
            local.get 0
            i32.load
            i32.store
            local.get 1
            local.get 1
            i64.load offset=48
            i64.store offset=64
            local.get 1
            i32.const 16
            i32.add
            local.get 1
            i32.const -64
            i32.sub
            call 19
            local.get 1
            i32.load offset=16
            local.set 0
            local.get 1
            i32.const 8
            i32.add
            local.tee 2
            local.get 1
            i32.load offset=20
            i32.store offset=4
            local.get 2
            local.get 0
            i32.store
            local.get 1
            i32.load offset=8
            local.set 0
            local.get 1
            i32.load offset=36
            if  ;; label = @5
              local.get 1
              i32.load offset=32
              call 31
            end
            local.get 1
            i32.const 80
            i32.add
            global.set 0
            local.get 0
            return
          end
          local.get 0
          call 35
          unreachable
        end
        call 6
        unreachable
      end
      i32.const 7
      i32.const 1
      call 33
      unreachable
    end
    local.get 0
    i32.const 1
    call 33
    unreachable)
  (func (;6;) (type 3)
    call 34
    unreachable)
  (func (;7;) (type 2) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 8
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 0
        call 32
        br 1 (;@1;)
      end
      local.get 0
      call 26
    end)
  (func (;8;) (type 9) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 2
    call 29)
  (func (;9;) (type 0) (param i32 i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.tee 2
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.sub
    local.get 1
    i32.lt_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 3
          i32.add
          local.tee 1
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.shl
          local.tee 3
          local.get 1
          local.get 1
          local.get 3
          i32.lt_u
          select
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            if  ;; label = @5
              local.get 0
              i32.load
              local.get 2
              local.get 1
              call 8
              local.tee 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 1
            i32.const 1
            call 7
            local.tee 2
            br_if 2 (;@2;)
          end
          local.get 1
          i32.const 1
          call 33
          unreachable
        end
        call 34
        unreachable
      end
      local.get 0
      local.get 2
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
    end)
  (func (;10;) (type 6) (param i32) (result i64)
    i64.const -8409589441914269353)
  (func (;11;) (type 6) (param i32) (result i64)
    i64.const -1948323870810782560)
  (func (;12;) (type 5) (param i32) (result i32)
    local.get 0
    if  ;; label = @1
      local.get 0
      return
    end
    i32.const 1049160
    call 37
    unreachable)
  (func (;13;) (type 7) (param i32)
    local.get 0
    i32.load offset=4
    if  ;; label = @1
      local.get 0
      i32.load
      call 31
    end)
  (func (;14;) (type 7) (param i32)
    nop)
  (func (;15;) (type 7) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 31
    end)
  (func (;16;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.const 128
      i32.lt_u
      if  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        local.get 0
        i32.load offset=4
        i32.eq
        if (result i32)  ;; label = @3
          local.get 0
          i32.const 1
          call 9
          local.get 0
          i32.const 8
          i32.add
          i32.load
        else
          local.get 3
        end
        local.get 0
        i32.load
        i32.add
        local.get 1
        i32.store8
        local.get 0
        i32.const 8
        i32.add
        local.tee 0
        local.get 0
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 0
      block (result i32)  ;; label = @2
        local.get 1
        i32.const 2048
        i32.lt_u
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 31
          i32.and
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 65535
        i32.le_u
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 15
          i32.and
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 4
      end
      local.tee 1
      call 9
      local.get 0
      local.get 0
      i32.load offset=8
      local.tee 3
      local.get 1
      i32.add
      i32.store offset=8
      local.get 3
      local.get 0
      i32.load
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call 44
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;17;) (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    local.get 2
    i32.const 8
    i32.add
    call 40
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;18;) (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 2
    call 9
    local.get 0
    local.get 0
    i32.load offset=8
    local.tee 3
    local.get 2
    i32.add
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load
    i32.add
    local.get 1
    local.get 2
    call 44
    drop
    i32.const 0)
  (func (;19;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    i32.load offset=4
    local.tee 2
    local.get 1
    i32.load offset=8
    local.tee 3
    i32.eq
    if  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 2
        i32.const 0
        i32.lt_s
        local.get 2
        local.get 3
        i32.lt_u
        i32.or
        i32.eqz
        if  ;; label = @3
          block  ;; label = @4
            local.get 3
            if  ;; label = @5
              local.get 1
              i32.load
              local.get 3
              local.get 2
              call 8
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 2
            i32.const 1
            call 7
            local.tee 4
            br_if 2 (;@2;)
          end
          local.get 2
          i32.const 1
          call 33
          unreachable
        end
        call 34
        unreachable
      end
      local.get 1
      local.get 4
      i32.store
      local.get 1
      i32.const 4
      i32.add
      local.get 2
      i32.store
    end
    local.get 2
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.const 1
      call 9
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.set 2
      local.get 1
      i32.const 8
      i32.add
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.const 1
    i32.add
    local.tee 4
    i32.store
    local.get 3
    local.get 1
    i32.load
    local.tee 3
    i32.add
    i32.const 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 4
        i32.eq
        if  ;; label = @3
          local.get 3
          local.set 1
          local.get 2
          local.set 4
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        if  ;; label = @3
          local.get 3
          local.get 2
          local.get 4
          call 8
          local.tee 1
          br_if 1 (;@2;)
          local.get 4
          i32.const 1
          call 33
          unreachable
        end
        i32.const 0
        local.set 4
        i32.const 1
        local.set 1
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        call 31
      end
      local.get 0
      local.get 4
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    end
    i32.const 1049184
    call 37
    unreachable)
  (func (;20;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load8_u
      if  ;; label = @2
        i32.const 1
        local.set 2
        loop  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          local.set 4
          local.get 2
          i32.const 1
          i32.add
          local.tee 3
          local.set 2
          local.get 4
          i32.load8_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;21;) (type 0) (param i32 i32)
    nop)
  (func (;22;) (type 7) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.const 12
    i32.add
    call 12
    local.set 2
    local.get 0
    i32.load offset=8
    call 12
    local.set 3
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    i64.load align=4
    i64.store align=4
    local.get 1
    i64.load offset=8
    local.set 5
    local.get 2
    i32.load offset=8
    local.set 4
    local.get 1
    local.get 2
    i32.load offset=12
    i32.store offset=28
    local.get 1
    local.get 4
    i32.store offset=24
    local.get 1
    local.get 5
    i64.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=36
    local.get 1
    local.get 3
    i32.store offset=32
    local.get 1
    i32.const 32
    i32.add
    local.get 0
    i32.load offset=8
    local.get 1
    i32.const 16
    i32.add
    call 23
    unreachable)
  (func (;23;) (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 3
    global.set 0
    i32.const 1
    local.set 4
    local.get 2
    i32.load offset=12
    local.set 6
    local.get 2
    i32.load offset=8
    local.set 7
    local.get 2
    i32.load offset=4
    local.set 8
    local.get 2
    i32.load
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 1049904
          i32.load
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 1049908
            i32.const 1049908
            i32.load
            i32.const 1
            i32.add
            local.tee 4
            i32.store
            local.get 4
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 1049904
          i64.const 4294967297
          i64.store
        end
        local.get 3
        i32.const 48
        i32.add
        local.tee 5
        local.get 6
        i32.store offset=12
        local.get 5
        local.get 7
        i32.store offset=8
        local.get 5
        local.get 8
        i32.store offset=4
        local.get 5
        local.get 2
        i32.store
        local.get 3
        i32.const 36
        i32.add
        local.get 3
        i32.const 56
        i32.add
        i64.load
        i64.store align=4
        local.get 3
        local.get 1
        i32.store offset=24
        local.get 3
        i32.const 1049232
        i32.store offset=20
        local.get 3
        i32.const 1048584
        i32.store offset=16
        local.get 3
        local.get 3
        i64.load offset=48
        i64.store offset=28 align=4
        i32.const 1049436
        i32.load
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 1049436
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store
        i32.const 1049436
        i32.const 1049444
        i32.load
        local.tee 1
        if (result i32)  ;; label = @3
          i32.const 1049440
          i32.load
          local.set 2
          local.get 3
          i32.const 8
          i32.add
          local.get 0
          i32.const 1049264
          i32.load
          call_indirect (type 0)
          local.get 3
          local.get 3
          i64.load offset=8
          i64.store offset=16
          local.get 2
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          i32.load offset=12
          call_indirect (type 0)
          i32.const 1049436
          i32.load
        else
          local.get 2
        end
        i32.const -1
        i32.add
        i32.store
        local.get 4
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
      end
      unreachable
    end
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 1049248
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    unreachable)
  (func (;24;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.tee 3
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 40
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      local.tee 4
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      local.get 2
      i32.const 24
      i32.add
      call 40
      drop
      local.get 4
      local.get 2
      i32.load offset=16
      i32.store
      local.get 2
      local.get 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 3
        i32.load
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        call 31
      end
      local.get 3
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    i32.const 12
    i32.const 4
    call 7
    local.tee 1
    if  ;; label = @1
      local.get 1
      local.get 4
      i32.store offset=8
      local.get 1
      local.get 5
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049268
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 12
    i32.const 4
    call 33
    unreachable)
  (func (;25;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 4
    local.get 1
    i32.load offset=4
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 40
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      local.tee 5
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      local.get 2
      i32.const 24
      i32.add
      call 40
      drop
      local.get 5
      local.get 2
      i32.load offset=16
      i32.store
      local.get 2
      local.get 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        call 31
      end
      local.get 4
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 4
      i32.const 8
      i32.add
      local.get 5
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1049268
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;26;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block (result i32)  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block (result i32)  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              local.get 0
                                                                              i32.const 244
                                                                              i32.le_u
                                                                              if  ;; label = @38
                                                                                i32.const 1049448
                                                                                i32.load
                                                                                local.tee 6
                                                                                i32.const 16
                                                                                local.get 0
                                                                                i32.const 11
                                                                                i32.add
                                                                                i32.const -8
                                                                                i32.and
                                                                                local.get 0
                                                                                i32.const 11
                                                                                i32.lt_u
                                                                                select
                                                                                local.tee 2
                                                                                i32.const 3
                                                                                i32.shr_u
                                                                                local.tee 1
                                                                                i32.const 31
                                                                                i32.and
                                                                                local.tee 3
                                                                                i32.shr_u
                                                                                local.tee 0
                                                                                i32.const 3
                                                                                i32.and
                                                                                i32.eqz
                                                                                br_if 1 (;@37;)
                                                                                local.get 0
                                                                                i32.const -1
                                                                                i32.xor
                                                                                i32.const 1
                                                                                i32.and
                                                                                local.get 1
                                                                                i32.add
                                                                                local.tee 2
                                                                                i32.const 3
                                                                                i32.shl
                                                                                i32.const 1049448
                                                                                i32.add
                                                                                local.tee 3
                                                                                i32.const 16
                                                                                i32.add
                                                                                i32.load
                                                                                local.tee 0
                                                                                i32.const 8
                                                                                i32.add
                                                                                local.set 4
                                                                                local.get 0
                                                                                i32.load offset=8
                                                                                local.tee 1
                                                                                local.get 3
                                                                                i32.const 8
                                                                                i32.add
                                                                                local.tee 3
                                                                                i32.eq
                                                                                br_if 2 (;@36;)
                                                                                local.get 1
                                                                                local.get 3
                                                                                i32.store offset=12
                                                                                local.get 3
                                                                                i32.const 8
                                                                                i32.add
                                                                                local.get 1
                                                                                i32.store
                                                                                br 3 (;@35;)
                                                                              end
                                                                              local.get 0
                                                                              i32.const -64
                                                                              i32.ge_u
                                                                              br_if 28 (;@9;)
                                                                              local.get 0
                                                                              i32.const 11
                                                                              i32.add
                                                                              local.tee 0
                                                                              i32.const -8
                                                                              i32.and
                                                                              local.set 2
                                                                              i32.const 1049452
                                                                              i32.load
                                                                              local.tee 8
                                                                              i32.eqz
                                                                              br_if 9 (;@28;)
                                                                              i32.const 0
                                                                              local.get 2
                                                                              i32.sub
                                                                              local.set 1
                                                                              block (result i32)  ;; label = @38
                                                                                i32.const 0
                                                                                local.get 0
                                                                                i32.const 8
                                                                                i32.shr_u
                                                                                local.tee 0
                                                                                i32.eqz
                                                                                br_if 0 (;@38;)
                                                                                drop
                                                                                i32.const 31
                                                                                local.get 2
                                                                                i32.const 16777215
                                                                                i32.gt_u
                                                                                br_if 0 (;@38;)
                                                                                drop
                                                                                local.get 2
                                                                                i32.const 38
                                                                                local.get 0
                                                                                i32.clz
                                                                                local.tee 0
                                                                                i32.sub
                                                                                i32.const 31
                                                                                i32.and
                                                                                i32.shr_u
                                                                                i32.const 1
                                                                                i32.and
                                                                                i32.const 31
                                                                                local.get 0
                                                                                i32.sub
                                                                                i32.const 1
                                                                                i32.shl
                                                                                i32.or
                                                                              end
                                                                              local.tee 7
                                                                              i32.const 2
                                                                              i32.shl
                                                                              i32.const 1049720
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 0
                                                                              i32.eqz
                                                                              br_if 6 (;@31;)
                                                                              local.get 2
                                                                              i32.const 0
                                                                              i32.const 25
                                                                              local.get 7
                                                                              i32.const 1
                                                                              i32.shr_u
                                                                              i32.sub
                                                                              i32.const 31
                                                                              i32.and
                                                                              local.get 7
                                                                              i32.const 31
                                                                              i32.eq
                                                                              select
                                                                              i32.shl
                                                                              local.set 6
                                                                              loop  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  local.get 0
                                                                                  i32.load offset=4
                                                                                  i32.const -8
                                                                                  i32.and
                                                                                  local.tee 5
                                                                                  local.get 2
                                                                                  i32.lt_u
                                                                                  br_if 0 (;@39;)
                                                                                  local.get 5
                                                                                  local.get 2
                                                                                  i32.sub
                                                                                  local.tee 5
                                                                                  local.get 1
                                                                                  i32.ge_u
                                                                                  br_if 0 (;@39;)
                                                                                  local.get 0
                                                                                  local.set 4
                                                                                  local.get 5
                                                                                  local.tee 1
                                                                                  i32.eqz
                                                                                  br_if 6 (;@33;)
                                                                                end
                                                                                local.get 0
                                                                                i32.const 20
                                                                                i32.add
                                                                                i32.load
                                                                                local.tee 5
                                                                                local.get 3
                                                                                local.get 5
                                                                                local.get 0
                                                                                local.get 6
                                                                                i32.const 29
                                                                                i32.shr_u
                                                                                i32.const 4
                                                                                i32.and
                                                                                i32.add
                                                                                i32.const 16
                                                                                i32.add
                                                                                i32.load
                                                                                local.tee 0
                                                                                i32.ne
                                                                                select
                                                                                local.get 3
                                                                                local.get 5
                                                                                select
                                                                                local.set 3
                                                                                local.get 6
                                                                                i32.const 1
                                                                                i32.shl
                                                                                local.set 6
                                                                                local.get 0
                                                                                br_if 0 (;@38;)
                                                                              end
                                                                              local.get 3
                                                                              i32.eqz
                                                                              br_if 5 (;@32;)
                                                                              local.get 3
                                                                              local.set 0
                                                                              br 7 (;@30;)
                                                                            end
                                                                            local.get 2
                                                                            i32.const 1049848
                                                                            i32.load
                                                                            i32.le_u
                                                                            br_if 8 (;@28;)
                                                                            local.get 0
                                                                            i32.eqz
                                                                            br_if 2 (;@34;)
                                                                            local.get 0
                                                                            local.get 3
                                                                            i32.shl
                                                                            i32.const 2
                                                                            local.get 3
                                                                            i32.shl
                                                                            local.tee 0
                                                                            i32.const 0
                                                                            local.get 0
                                                                            i32.sub
                                                                            i32.or
                                                                            i32.and
                                                                            local.tee 0
                                                                            i32.const 0
                                                                            local.get 0
                                                                            i32.sub
                                                                            i32.and
                                                                            i32.ctz
                                                                            local.tee 1
                                                                            i32.const 3
                                                                            i32.shl
                                                                            i32.const 1049448
                                                                            i32.add
                                                                            local.tee 4
                                                                            i32.const 16
                                                                            i32.add
                                                                            i32.load
                                                                            local.tee 0
                                                                            i32.load offset=8
                                                                            local.tee 3
                                                                            local.get 4
                                                                            i32.const 8
                                                                            i32.add
                                                                            local.tee 4
                                                                            i32.eq
                                                                            br_if 10 (;@26;)
                                                                            local.get 3
                                                                            local.get 4
                                                                            i32.store offset=12
                                                                            local.get 4
                                                                            i32.const 8
                                                                            i32.add
                                                                            local.get 3
                                                                            i32.store
                                                                            br 11 (;@25;)
                                                                          end
                                                                          i32.const 1049448
                                                                          local.get 6
                                                                          i32.const -2
                                                                          local.get 2
                                                                          i32.rotl
                                                                          i32.and
                                                                          i32.store
                                                                        end
                                                                        local.get 0
                                                                        local.get 2
                                                                        i32.const 3
                                                                        i32.shl
                                                                        local.tee 2
                                                                        i32.const 3
                                                                        i32.or
                                                                        i32.store offset=4
                                                                        local.get 0
                                                                        local.get 2
                                                                        i32.add
                                                                        local.tee 0
                                                                        local.get 0
                                                                        i32.load offset=4
                                                                        i32.const 1
                                                                        i32.or
                                                                        i32.store offset=4
                                                                        local.get 4
                                                                        return
                                                                      end
                                                                      i32.const 1049452
                                                                      i32.load
                                                                      local.tee 0
                                                                      i32.eqz
                                                                      br_if 5 (;@28;)
                                                                      local.get 0
                                                                      i32.const 0
                                                                      local.get 0
                                                                      i32.sub
                                                                      i32.and
                                                                      i32.ctz
                                                                      i32.const 2
                                                                      i32.shl
                                                                      i32.const 1049720
                                                                      i32.add
                                                                      i32.load
                                                                      local.tee 4
                                                                      i32.load offset=4
                                                                      i32.const -8
                                                                      i32.and
                                                                      local.get 2
                                                                      i32.sub
                                                                      local.set 3
                                                                      local.get 4
                                                                      local.set 6
                                                                      local.get 4
                                                                      i32.load offset=16
                                                                      local.tee 0
                                                                      i32.eqz
                                                                      br_if 20 (;@13;)
                                                                      i32.const 1
                                                                      br 21 (;@12;)
                                                                    end
                                                                    i32.const 0
                                                                    local.set 1
                                                                    br 2 (;@30;)
                                                                  end
                                                                  local.get 4
                                                                  br_if 2 (;@29;)
                                                                end
                                                                i32.const 0
                                                                local.set 4
                                                                i32.const 2
                                                                local.get 7
                                                                i32.const 31
                                                                i32.and
                                                                i32.shl
                                                                local.tee 0
                                                                i32.const 0
                                                                local.get 0
                                                                i32.sub
                                                                i32.or
                                                                local.get 8
                                                                i32.and
                                                                local.tee 0
                                                                i32.eqz
                                                                br_if 2 (;@28;)
                                                                local.get 0
                                                                i32.const 0
                                                                local.get 0
                                                                i32.sub
                                                                i32.and
                                                                i32.ctz
                                                                i32.const 2
                                                                i32.shl
                                                                i32.const 1049720
                                                                i32.add
                                                                i32.load
                                                                local.tee 0
                                                                i32.eqz
                                                                br_if 2 (;@28;)
                                                              end
                                                              loop  ;; label = @30
                                                                local.get 0
                                                                local.get 4
                                                                local.get 0
                                                                i32.load offset=4
                                                                i32.const -8
                                                                i32.and
                                                                local.tee 3
                                                                local.get 2
                                                                i32.ge_u
                                                                local.get 3
                                                                local.get 2
                                                                i32.sub
                                                                local.tee 5
                                                                local.get 1
                                                                i32.lt_u
                                                                i32.and
                                                                local.tee 6
                                                                select
                                                                local.set 4
                                                                local.get 5
                                                                local.get 1
                                                                local.get 6
                                                                select
                                                                local.set 1
                                                                local.get 0
                                                                i32.load offset=16
                                                                local.tee 3
                                                                if (result i32)  ;; label = @31
                                                                  local.get 3
                                                                else
                                                                  local.get 0
                                                                  i32.const 20
                                                                  i32.add
                                                                  i32.load
                                                                end
                                                                local.tee 0
                                                                br_if 0 (;@30;)
                                                              end
                                                              local.get 4
                                                              i32.eqz
                                                              br_if 1 (;@28;)
                                                            end
                                                            i32.const 1049848
                                                            i32.load
                                                            local.tee 0
                                                            local.get 2
                                                            i32.lt_u
                                                            local.get 1
                                                            local.get 0
                                                            local.get 2
                                                            i32.sub
                                                            i32.lt_u
                                                            i32.or
                                                            br_if 1 (;@27;)
                                                          end
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                i32.const 1049848
                                                                i32.load
                                                                local.tee 1
                                                                local.get 2
                                                                i32.lt_u
                                                                if  ;; label = @31
                                                                  i32.const 1049852
                                                                  i32.load
                                                                  local.tee 0
                                                                  local.get 2
                                                                  i32.le_u
                                                                  br_if 1 (;@30;)
                                                                  i32.const 1049852
                                                                  local.get 0
                                                                  local.get 2
                                                                  i32.sub
                                                                  local.tee 1
                                                                  i32.store
                                                                  br 30 (;@1;)
                                                                end
                                                                i32.const 1049856
                                                                i32.load
                                                                local.set 0
                                                                local.get 1
                                                                local.get 2
                                                                i32.sub
                                                                local.tee 3
                                                                i32.const 16
                                                                i32.ge_u
                                                                br_if 1 (;@29;)
                                                                i32.const 1049856
                                                                i32.const 0
                                                                i32.store
                                                                i32.const 1049848
                                                                i32.const 0
                                                                i32.store
                                                                local.get 0
                                                                local.get 1
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 0
                                                                local.get 1
                                                                i32.add
                                                                local.tee 1
                                                                i32.const 4
                                                                i32.add
                                                                local.set 2
                                                                local.get 1
                                                                i32.load offset=4
                                                                i32.const 1
                                                                i32.or
                                                                local.set 1
                                                                br 2 (;@28;)
                                                              end
                                                              i32.const 0
                                                              local.set 6
                                                              local.get 2
                                                              i32.const 65583
                                                              i32.add
                                                              local.tee 1
                                                              i32.const 16
                                                              i32.shr_u
                                                              memory.grow
                                                              local.tee 0
                                                              i32.const -1
                                                              i32.eq
                                                              br_if 20 (;@9;)
                                                              local.get 0
                                                              i32.const 16
                                                              i32.shl
                                                              local.tee 4
                                                              i32.eqz
                                                              br_if 20 (;@9;)
                                                              i32.const 1049864
                                                              local.get 1
                                                              i32.const -65536
                                                              i32.and
                                                              local.tee 7
                                                              i32.const 1049864
                                                              i32.load
                                                              i32.add
                                                              local.tee 0
                                                              i32.store
                                                              i32.const 1049868
                                                              i32.const 1049868
                                                              i32.load
                                                              local.tee 1
                                                              local.get 0
                                                              local.get 0
                                                              local.get 1
                                                              i32.lt_u
                                                              select
                                                              i32.store
                                                              i32.const 1049860
                                                              i32.load
                                                              local.tee 1
                                                              i32.eqz
                                                              br_if 9 (;@20;)
                                                              i32.const 1049872
                                                              local.set 0
                                                              loop  ;; label = @30
                                                                local.get 0
                                                                i32.load
                                                                local.tee 3
                                                                local.get 0
                                                                i32.load offset=4
                                                                local.tee 5
                                                                i32.add
                                                                local.get 4
                                                                i32.eq
                                                                br_if 11 (;@19;)
                                                                local.get 0
                                                                i32.load offset=8
                                                                local.tee 0
                                                                br_if 0 (;@30;)
                                                              end
                                                              br 18 (;@11;)
                                                            end
                                                            i32.const 1049848
                                                            local.get 3
                                                            i32.store
                                                            i32.const 1049856
                                                            local.get 0
                                                            local.get 2
                                                            i32.add
                                                            local.tee 6
                                                            i32.store
                                                            local.get 6
                                                            local.get 3
                                                            i32.const 1
                                                            i32.or
                                                            i32.store offset=4
                                                            local.get 0
                                                            local.get 1
                                                            i32.add
                                                            local.get 3
                                                            i32.store
                                                            local.get 2
                                                            i32.const 3
                                                            i32.or
                                                            local.set 1
                                                            local.get 0
                                                            i32.const 4
                                                            i32.add
                                                            local.set 2
                                                          end
                                                          local.get 2
                                                          local.get 1
                                                          i32.store
                                                          local.get 0
                                                          i32.const 8
                                                          i32.add
                                                          return
                                                        end
                                                        local.get 4
                                                        call 27
                                                        local.get 1
                                                        i32.const 15
                                                        i32.gt_u
                                                        br_if 2 (;@24;)
                                                        local.get 4
                                                        local.get 1
                                                        local.get 2
                                                        i32.add
                                                        local.tee 0
                                                        i32.const 3
                                                        i32.or
                                                        i32.store offset=4
                                                        local.get 0
                                                        local.get 4
                                                        i32.add
                                                        local.tee 0
                                                        local.get 0
                                                        i32.load offset=4
                                                        i32.const 1
                                                        i32.or
                                                        i32.store offset=4
                                                        br 12 (;@14;)
                                                      end
                                                      i32.const 1049448
                                                      local.get 6
                                                      i32.const -2
                                                      local.get 1
                                                      i32.rotl
                                                      i32.and
                                                      i32.store
                                                    end
                                                    local.get 0
                                                    i32.const 8
                                                    i32.add
                                                    local.set 3
                                                    local.get 0
                                                    local.get 2
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 0
                                                    local.get 2
                                                    i32.add
                                                    local.tee 6
                                                    local.get 1
                                                    i32.const 3
                                                    i32.shl
                                                    local.tee 1
                                                    local.get 2
                                                    i32.sub
                                                    local.tee 2
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 0
                                                    local.get 1
                                                    i32.add
                                                    local.get 2
                                                    i32.store
                                                    i32.const 1049848
                                                    i32.load
                                                    local.tee 0
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 0
                                                    i32.const 3
                                                    i32.shr_u
                                                    local.tee 5
                                                    i32.const 3
                                                    i32.shl
                                                    i32.const 1049456
                                                    i32.add
                                                    local.set 1
                                                    i32.const 1049856
                                                    i32.load
                                                    local.set 0
                                                    i32.const 1049448
                                                    i32.load
                                                    local.tee 7
                                                    i32.const 1
                                                    local.get 5
                                                    i32.const 31
                                                    i32.and
                                                    i32.shl
                                                    local.tee 5
                                                    i32.and
                                                    i32.eqz
                                                    br_if 1 (;@23;)
                                                    local.get 1
                                                    i32.load offset=8
                                                    br 2 (;@22;)
                                                  end
                                                  local.get 4
                                                  local.get 2
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 2
                                                  local.get 4
                                                  i32.add
                                                  local.tee 0
                                                  local.get 1
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 0
                                                  local.get 1
                                                  i32.add
                                                  local.get 1
                                                  i32.store
                                                  local.get 1
                                                  i32.const 255
                                                  i32.gt_u
                                                  br_if 5 (;@18;)
                                                  local.get 1
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 1
                                                  i32.const 3
                                                  i32.shl
                                                  i32.const 1049456
                                                  i32.add
                                                  local.set 2
                                                  i32.const 1049448
                                                  i32.load
                                                  local.tee 3
                                                  i32.const 1
                                                  local.get 1
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  local.tee 1
                                                  i32.and
                                                  i32.eqz
                                                  br_if 7 (;@16;)
                                                  local.get 2
                                                  i32.load offset=8
                                                  br 8 (;@15;)
                                                end
                                                i32.const 1049448
                                                local.get 5
                                                local.get 7
                                                i32.or
                                                i32.store
                                                local.get 1
                                              end
                                              local.set 5
                                              local.get 1
                                              local.get 0
                                              i32.store offset=8
                                              local.get 5
                                              local.get 0
                                              i32.store offset=12
                                              local.get 0
                                              local.get 1
                                              i32.store offset=12
                                              local.get 0
                                              local.get 5
                                              i32.store offset=8
                                            end
                                            i32.const 1049856
                                            local.get 6
                                            i32.store
                                            i32.const 1049848
                                            local.get 2
                                            i32.store
                                            local.get 3
                                            return
                                          end
                                          block  ;; label = @20
                                            i32.const 1049892
                                            i32.load
                                            local.tee 0
                                            if  ;; label = @21
                                              local.get 0
                                              local.get 4
                                              i32.le_u
                                              br_if 1 (;@20;)
                                            end
                                            i32.const 1049892
                                            local.get 4
                                            i32.store
                                          end
                                          i32.const 1049896
                                          i32.const 4095
                                          i32.store
                                          i32.const 1049872
                                          local.get 4
                                          i32.store
                                          i32.const 0
                                          local.set 0
                                          i32.const 1049884
                                          i32.const 0
                                          i32.store
                                          i32.const 1049876
                                          local.get 7
                                          i32.store
                                          loop  ;; label = @20
                                            local.get 0
                                            i32.const 1049448
                                            i32.add
                                            local.tee 1
                                            i32.const 16
                                            i32.add
                                            local.get 1
                                            i32.const 8
                                            i32.add
                                            local.tee 3
                                            i32.store
                                            local.get 1
                                            i32.const 20
                                            i32.add
                                            local.get 3
                                            i32.store
                                            local.get 0
                                            i32.const 8
                                            i32.add
                                            local.tee 0
                                            i32.const 256
                                            i32.ne
                                            br_if 0 (;@20;)
                                          end
                                          i32.const 1049852
                                          local.get 7
                                          i32.const -40
                                          i32.add
                                          local.tee 0
                                          i32.store
                                          i32.const 1049860
                                          local.get 4
                                          i32.store
                                          local.get 4
                                          local.get 0
                                          i32.const 1
                                          i32.or
                                          i32.store offset=4
                                          local.get 0
                                          local.get 4
                                          i32.add
                                          i32.const 40
                                          i32.store offset=4
                                          i32.const 1049888
                                          i32.const 2097152
                                          i32.store
                                          br 9 (;@10;)
                                        end
                                        local.get 0
                                        i32.load offset=12
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        br 7 (;@11;)
                                      end
                                      local.get 0
                                      local.get 1
                                      call 28
                                      br 3 (;@14;)
                                    end
                                    local.get 4
                                    local.get 1
                                    i32.le_u
                                    local.get 3
                                    local.get 1
                                    i32.gt_u
                                    i32.or
                                    br_if 5 (;@11;)
                                    local.get 0
                                    i32.const 4
                                    i32.add
                                    local.get 5
                                    local.get 7
                                    i32.add
                                    i32.store
                                    i32.const 1049860
                                    i32.const 1049860
                                    i32.load
                                    local.tee 0
                                    i32.const 15
                                    i32.add
                                    i32.const -8
                                    i32.and
                                    local.tee 1
                                    i32.const -8
                                    i32.add
                                    local.tee 3
                                    i32.store
                                    i32.const 1049852
                                    i32.const 1049852
                                    i32.load
                                    local.get 7
                                    i32.add
                                    local.tee 4
                                    local.get 0
                                    i32.const 8
                                    i32.add
                                    local.get 1
                                    i32.sub
                                    i32.add
                                    local.tee 1
                                    i32.store
                                    local.get 3
                                    local.get 1
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 0
                                    local.get 4
                                    i32.add
                                    i32.const 40
                                    i32.store offset=4
                                    i32.const 1049888
                                    i32.const 2097152
                                    i32.store
                                    br 6 (;@10;)
                                  end
                                  i32.const 1049448
                                  local.get 1
                                  local.get 3
                                  i32.or
                                  i32.store
                                  local.get 2
                                end
                                local.set 1
                                local.get 2
                                local.get 0
                                i32.store offset=8
                                local.get 1
                                local.get 0
                                i32.store offset=12
                                local.get 0
                                local.get 2
                                i32.store offset=12
                                local.get 0
                                local.get 1
                                i32.store offset=8
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 6
                              br 4 (;@9;)
                            end
                            i32.const 0
                          end
                          local.set 1
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                if  ;; label = @15
                                  local.get 0
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 2
                                  i32.sub
                                  local.tee 1
                                  local.get 3
                                  local.get 1
                                  local.get 3
                                  i32.lt_u
                                  local.tee 1
                                  select
                                  local.set 3
                                  local.get 0
                                  local.get 6
                                  local.get 1
                                  select
                                  local.set 6
                                  local.get 0
                                  local.tee 4
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.set 1
                                  br 3 (;@12;)
                                end
                                local.get 4
                                i32.const 20
                                i32.add
                                i32.load
                                local.tee 0
                                br_if 1 (;@13;)
                                local.get 6
                                call 27
                                block  ;; label = @15
                                  local.get 3
                                  i32.const 16
                                  i32.lt_u
                                  if  ;; label = @16
                                    local.get 6
                                    local.get 2
                                    local.get 3
                                    i32.add
                                    local.tee 0
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    local.get 0
                                    local.get 6
                                    i32.add
                                    local.tee 0
                                    local.get 0
                                    i32.load offset=4
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    br 1 (;@15;)
                                  end
                                  local.get 6
                                  local.get 2
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 2
                                  local.get 6
                                  i32.add
                                  local.tee 2
                                  local.get 3
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 2
                                  local.get 3
                                  i32.add
                                  local.get 3
                                  i32.store
                                  i32.const 1049848
                                  i32.load
                                  local.tee 0
                                  if  ;; label = @16
                                    local.get 0
                                    i32.const 3
                                    i32.shr_u
                                    local.tee 5
                                    i32.const 3
                                    i32.shl
                                    i32.const 1049456
                                    i32.add
                                    local.set 1
                                    i32.const 1049856
                                    i32.load
                                    local.set 0
                                    block (result i32)  ;; label = @17
                                      i32.const 1049448
                                      i32.load
                                      local.tee 7
                                      i32.const 1
                                      local.get 5
                                      i32.const 31
                                      i32.and
                                      i32.shl
                                      local.tee 5
                                      i32.and
                                      if  ;; label = @18
                                        local.get 1
                                        i32.load offset=8
                                        br 1 (;@17;)
                                      end
                                      i32.const 1049448
                                      local.get 5
                                      local.get 7
                                      i32.or
                                      i32.store
                                      local.get 1
                                    end
                                    local.set 5
                                    local.get 1
                                    local.get 0
                                    i32.store offset=8
                                    local.get 5
                                    local.get 0
                                    i32.store offset=12
                                    local.get 0
                                    local.get 1
                                    i32.store offset=12
                                    local.get 0
                                    local.get 5
                                    i32.store offset=8
                                  end
                                  i32.const 1049856
                                  local.get 2
                                  i32.store
                                  i32.const 1049848
                                  local.get 3
                                  i32.store
                                end
                                local.get 6
                                i32.const 8
                                i32.add
                                return
                              end
                              i32.const 1
                              local.set 1
                              br 1 (;@12;)
                            end
                            i32.const 1
                            local.set 1
                            br 0 (;@12;)
                            unreachable
                          end
                          unreachable
                        end
                        i32.const 1049892
                        i32.const 1049892
                        i32.load
                        local.tee 0
                        local.get 4
                        local.get 0
                        local.get 4
                        i32.lt_u
                        select
                        i32.store
                        local.get 4
                        local.get 7
                        i32.add
                        local.set 5
                        i32.const 1049872
                        local.set 3
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              i32.load
                              local.get 5
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 3
                              i32.load offset=8
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            i32.const 1049872
                            local.set 0
                            br 1 (;@11;)
                          end
                          i32.const 1049872
                          local.set 0
                          local.get 3
                          i32.load offset=12
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 4
                          i32.store
                          local.get 3
                          local.get 3
                          i32.load offset=4
                          local.get 7
                          i32.add
                          i32.store offset=4
                          local.get 4
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 2
                          local.get 4
                          i32.add
                          local.set 0
                          local.get 5
                          local.get 4
                          i32.sub
                          local.get 2
                          i32.sub
                          local.set 2
                          i32.const 1049860
                          i32.load
                          local.get 5
                          i32.eq
                          br_if 3 (;@8;)
                          i32.const 1049856
                          i32.load
                          local.get 5
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 5
                          i32.load offset=4
                          local.tee 1
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 8 (;@3;)
                          local.get 1
                          i32.const -8
                          i32.and
                          local.tee 3
                          i32.const 255
                          i32.gt_u
                          br_if 5 (;@6;)
                          local.get 5
                          i32.load offset=12
                          local.tee 6
                          local.get 5
                          i32.load offset=8
                          local.tee 7
                          i32.eq
                          br_if 6 (;@5;)
                          local.get 7
                          local.get 6
                          i32.store offset=12
                          local.get 6
                          local.get 7
                          i32.store offset=8
                          br 7 (;@4;)
                        end
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 3
                            local.get 1
                            i32.le_u
                            if  ;; label = @13
                              local.get 3
                              local.get 0
                              i32.load offset=4
                              i32.add
                              local.tee 3
                              local.get 1
                              i32.gt_u
                              br_if 1 (;@12;)
                            end
                            local.get 0
                            i32.load offset=8
                            local.set 0
                            br 1 (;@11;)
                          end
                        end
                        i32.const 1049852
                        local.get 7
                        i32.const -40
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1049860
                        local.get 4
                        i32.store
                        local.get 4
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 4
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 1049888
                        i32.const 2097152
                        i32.store
                        local.get 1
                        local.get 3
                        i32.const -32
                        i32.add
                        i32.const -8
                        i32.and
                        i32.const -8
                        i32.add
                        local.tee 0
                        local.get 0
                        local.get 1
                        i32.const 16
                        i32.add
                        i32.lt_u
                        select
                        local.tee 5
                        i32.const 27
                        i32.store offset=4
                        i32.const 1049872
                        i64.load align=4
                        local.set 9
                        local.get 5
                        i32.const 16
                        i32.add
                        i32.const 1049880
                        i64.load align=4
                        i64.store align=4
                        local.get 5
                        local.get 9
                        i64.store offset=8 align=4
                        i32.const 1049884
                        i32.const 0
                        i32.store
                        i32.const 1049876
                        local.get 7
                        i32.store
                        i32.const 1049872
                        local.get 4
                        i32.store
                        i32.const 1049880
                        local.get 5
                        i32.const 8
                        i32.add
                        i32.store
                        local.get 5
                        i32.const 28
                        i32.add
                        local.set 0
                        loop  ;; label = @11
                          local.get 0
                          i32.const 7
                          i32.store
                          local.get 3
                          local.get 0
                          i32.const 4
                          i32.add
                          local.tee 0
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                        local.get 1
                        local.get 5
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 5
                        i32.load offset=4
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 1
                        local.get 5
                        local.get 1
                        i32.sub
                        local.tee 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 5
                        local.get 0
                        i32.store
                        block (result i32)  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 255
                            i32.le_u
                            if  ;; label = @13
                              local.get 0
                              i32.const 3
                              i32.shr_u
                              local.tee 3
                              i32.const 3
                              i32.shl
                              i32.const 1049456
                              i32.add
                              local.set 0
                              i32.const 1049448
                              i32.load
                              local.tee 4
                              i32.const 1
                              local.get 3
                              i32.const 31
                              i32.and
                              i32.shl
                              local.tee 3
                              i32.and
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load offset=8
                              br 2 (;@11;)
                            end
                            local.get 1
                            local.get 0
                            call 28
                            br 2 (;@10;)
                          end
                          i32.const 1049448
                          local.get 3
                          local.get 4
                          i32.or
                          i32.store
                          local.get 0
                        end
                        local.set 3
                        local.get 0
                        local.get 1
                        i32.store offset=8
                        local.get 3
                        local.get 1
                        i32.store offset=12
                        local.get 1
                        local.get 0
                        i32.store offset=12
                        local.get 1
                        local.get 3
                        i32.store offset=8
                      end
                      i32.const 1049852
                      i32.load
                      local.tee 1
                      local.get 2
                      i32.le_u
                      br_if 0 (;@9;)
                      i32.const 1049852
                      local.get 1
                      local.get 2
                      i32.sub
                      local.tee 1
                      i32.store
                      br 8 (;@1;)
                    end
                    local.get 6
                    return
                  end
                  i32.const 1049860
                  local.get 0
                  i32.store
                  i32.const 1049852
                  i32.const 1049852
                  i32.load
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.store
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  br 5 (;@2;)
                end
                i32.const 1049856
                local.get 0
                i32.store
                i32.const 1049848
                i32.const 1049848
                i32.load
                local.get 2
                i32.add
                local.tee 2
                i32.store
                local.get 0
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 2
                i32.add
                local.get 2
                i32.store
                br 4 (;@2;)
              end
              local.get 5
              call 27
              br 1 (;@4;)
            end
            i32.const 1049448
            i32.const 1049448
            i32.load
            i32.const -2
            local.get 1
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store
          end
          local.get 2
          local.get 3
          i32.add
          local.set 2
          local.get 3
          local.get 5
          i32.add
          local.set 5
        end
        local.get 5
        local.get 5
        i32.load offset=4
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.get 2
        i32.store
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 1
              i32.const 3
              i32.shl
              i32.const 1049456
              i32.add
              local.set 2
              i32.const 1049448
              i32.load
              local.tee 3
              i32.const 1
              local.get 1
              i32.const 31
              i32.and
              i32.shl
              local.tee 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=8
              br 2 (;@3;)
            end
            local.get 0
            local.get 2
            call 28
            br 2 (;@2;)
          end
          i32.const 1049448
          local.get 1
          local.get 3
          i32.or
          i32.store
          local.get 2
        end
        local.set 1
        local.get 2
        local.get 0
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
      end
      local.get 4
      i32.const 8
      i32.add
      return
    end
    i32.const 1049860
    i32.const 1049860
    i32.load
    local.tee 0
    local.get 2
    i32.add
    local.tee 3
    i32.store
    local.get 3
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 2
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 0
    i32.const 8
    i32.add)
  (func (;27;) (type 8) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 0
          i32.load offset=12
          local.tee 1
          i32.ne
          if  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            local.get 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 0
          i32.const 20
          i32.const 16
          local.get 0
          i32.const 20
          i32.add
          local.tee 1
          i32.load
          local.tee 4
          select
          i32.add
          i32.load
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 0
            i32.const 16
            i32.add
            local.get 4
            select
            local.set 4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                local.set 5
                local.get 2
                local.tee 1
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                if  ;; label = @7
                  local.get 2
                  br_if 2 (;@5;)
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 16
                i32.add
                local.set 4
                local.get 1
                i32.load offset=16
                local.tee 2
                br_if 1 (;@5;)
              end
            end
            local.get 5
            i32.const 0
            i32.store
            local.get 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 1
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          local.get 0
          local.get 0
          i32.load offset=28
          i32.const 2
          i32.shl
          i32.const 1049720
          i32.add
          local.tee 2
          i32.load
          i32.ne
          if  ;; label = @4
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 2
          local.get 1
          i32.store
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 1
        local.get 3
        i32.store offset=24
        local.get 0
        i32.load offset=16
        local.tee 2
        if  ;; label = @3
          local.get 1
          local.get 2
          i32.store offset=16
          local.get 2
          local.get 1
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 20
        i32.add
        local.get 2
        i32.store
        local.get 2
        local.get 1
        i32.store offset=24
      end
      return
    end
    i32.const 1049452
    i32.const 1049452
    i32.load
    i32.const -2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.rotl
    i32.and
    i32.store)
  (func (;28;) (type 12) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 8
      i32.shr_u
      local.tee 3
      if  ;; label = @2
        i32.const 31
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 1 (;@1;)
        drop
        local.get 1
        i32.const 38
        local.get 3
        i32.clz
        local.tee 2
        i32.sub
        i32.const 31
        i32.and
        i32.shr_u
        i32.const 1
        i32.and
        i32.const 31
        local.get 2
        i32.sub
        i32.const 1
        i32.shl
        i32.or
        br 1 (;@1;)
      end
      i32.const 0
    end
    local.tee 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1049720
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1049452
            i32.load
            local.tee 5
            i32.const 1
            local.get 2
            i32.const 31
            i32.and
            i32.shl
            local.tee 4
            i32.and
            if  ;; label = @5
              local.get 3
              i32.load
              local.tee 3
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 1
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              local.set 2
              br 2 (;@3;)
            end
            i32.const 1049452
            local.get 4
            local.get 5
            i32.or
            i32.store
            local.get 3
            local.get 0
            i32.store
            br 3 (;@1;)
          end
          local.get 1
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          i32.const 31
          i32.and
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 4
          loop  ;; label = @4
            local.get 3
            local.get 4
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 5
            i32.load
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 4
            i32.const 1
            i32.shl
            local.set 4
            local.get 2
            local.set 3
            local.get 2
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.load offset=8
        local.tee 4
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 0
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        local.get 4
        i32.store offset=8
        return
      end
      local.get 5
      local.get 0
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func (;29;) (type 13) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const -65
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      local.get 1
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.set 2
      local.get 0
      i32.const -4
      i32.add
      local.tee 6
      i32.load
      local.tee 7
      i32.const -8
      i32.and
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 7
                        i32.const 3
                        i32.and
                        if  ;; label = @11
                          local.get 0
                          i32.const -8
                          i32.add
                          local.tee 8
                          local.get 3
                          i32.add
                          local.set 5
                          local.get 3
                          local.get 2
                          i32.ge_u
                          br_if 1 (;@10;)
                          i32.const 1049860
                          i32.load
                          local.get 5
                          i32.eq
                          br_if 2 (;@9;)
                          i32.const 1049856
                          i32.load
                          local.get 5
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 5
                          i32.load offset=4
                          local.tee 7
                          i32.const 2
                          i32.and
                          br_if 4 (;@7;)
                          local.get 7
                          i32.const -8
                          i32.and
                          local.tee 9
                          local.get 3
                          i32.add
                          local.tee 3
                          local.get 2
                          i32.lt_u
                          br_if 4 (;@7;)
                          local.get 3
                          local.get 2
                          i32.sub
                          local.set 1
                          local.get 9
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 5
                          i32.load offset=12
                          local.tee 4
                          local.get 5
                          i32.load offset=8
                          local.tee 5
                          i32.eq
                          br_if 7 (;@4;)
                          local.get 5
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 5
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        local.get 2
                        i32.const 256
                        i32.lt_u
                        local.get 3
                        local.get 2
                        i32.const 4
                        i32.or
                        i32.lt_u
                        i32.or
                        br_if 3 (;@7;)
                        local.get 3
                        local.get 2
                        i32.sub
                        i32.const 131073
                        i32.lt_u
                        br_if 8 (;@2;)
                        br 3 (;@7;)
                      end
                      local.get 3
                      local.get 2
                      i32.sub
                      local.tee 1
                      i32.const 16
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 6
                      local.get 2
                      local.get 7
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store
                      local.get 2
                      local.get 8
                      i32.add
                      local.tee 4
                      local.get 1
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      local.get 5
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 4
                      local.get 1
                      call 30
                      br 7 (;@2;)
                    end
                    i32.const 1049852
                    i32.load
                    local.get 3
                    i32.add
                    local.tee 3
                    local.get 2
                    i32.le_u
                    br_if 1 (;@7;)
                    local.get 6
                    local.get 2
                    local.get 7
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 2
                    local.get 8
                    i32.add
                    local.tee 1
                    local.get 3
                    local.get 2
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 1049852
                    local.get 4
                    i32.store
                    i32.const 1049860
                    local.get 1
                    i32.store
                    br 6 (;@2;)
                  end
                  i32.const 1049848
                  i32.load
                  local.get 3
                  i32.add
                  local.tee 3
                  local.get 2
                  i32.ge_u
                  br_if 1 (;@6;)
                end
                local.get 1
                call 26
                local.tee 2
                i32.eqz
                br_if 5 (;@1;)
                local.get 2
                local.get 0
                local.get 1
                local.get 6
                i32.load
                local.tee 4
                i32.const -8
                i32.and
                i32.const 4
                i32.const 8
                local.get 4
                i32.const 3
                i32.and
                select
                i32.sub
                local.tee 4
                local.get 4
                local.get 1
                i32.gt_u
                select
                call 44
                local.set 1
                local.get 0
                call 31
                local.get 1
                return
              end
              block  ;; label = @6
                local.get 3
                local.get 2
                i32.sub
                local.tee 1
                i32.const 16
                i32.lt_u
                if  ;; label = @7
                  local.get 6
                  local.get 7
                  i32.const 1
                  i32.and
                  local.get 3
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  local.get 3
                  local.get 8
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 6
                local.get 2
                local.get 7
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 2
                local.get 8
                i32.add
                local.tee 4
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 8
                i32.add
                local.tee 2
                local.get 1
                i32.store
                local.get 2
                local.get 2
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
              end
              i32.const 1049856
              local.get 4
              i32.store
              i32.const 1049848
              local.get 1
              i32.store
              br 3 (;@2;)
            end
            local.get 5
            call 27
            br 1 (;@3;)
          end
          i32.const 1049448
          i32.const 1049448
          i32.load
          i32.const -2
          local.get 7
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 1
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 6
          local.get 3
          local.get 6
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 3
          local.get 8
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 6
        local.get 2
        local.get 6
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 2
        local.get 8
        i32.add
        local.tee 4
        local.get 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 3
        local.get 8
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 4
        local.get 1
        call 30
      end
      local.get 0
      local.set 4
    end
    local.get 4)
  (func (;30;) (type 12) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=4
                    local.tee 3
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load
                    local.tee 3
                    local.get 1
                    i32.add
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 3
                        i32.sub
                        local.tee 0
                        i32.const 1049856
                        i32.load
                        i32.ne
                        if  ;; label = @11
                          local.get 3
                          i32.const 255
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 0
                          i32.load offset=12
                          local.tee 4
                          local.get 0
                          i32.load offset=8
                          local.tee 5
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 5
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 5
                          i32.store offset=8
                          br 3 (;@8;)
                        end
                        local.get 2
                        i32.load offset=4
                        i32.const 3
                        i32.and
                        i32.const 3
                        i32.ne
                        br_if 2 (;@8;)
                        i32.const 1049848
                        local.get 1
                        i32.store
                        local.get 2
                        i32.const 4
                        i32.add
                        local.tee 3
                        local.get 3
                        i32.load
                        i32.const -2
                        i32.and
                        i32.store
                        local.get 0
                        local.get 1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 1
                        i32.store
                        return
                      end
                      local.get 0
                      call 27
                      br 1 (;@8;)
                    end
                    i32.const 1049448
                    i32.const 1049448
                    i32.load
                    i32.const -2
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=4
                    local.tee 3
                    i32.const 2
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      i32.const 1049860
                      i32.load
                      local.get 2
                      i32.eq
                      br_if 1 (;@8;)
                      i32.const 1049856
                      i32.load
                      local.get 2
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const -8
                      i32.and
                      local.tee 4
                      local.get 1
                      i32.add
                      local.set 1
                      local.get 4
                      i32.const 255
                      i32.gt_u
                      br_if 4 (;@5;)
                      local.get 2
                      i32.load offset=12
                      local.tee 4
                      local.get 2
                      i32.load offset=8
                      local.tee 2
                      i32.eq
                      br_if 6 (;@3;)
                      local.get 2
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 2
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 2
                    i32.const 4
                    i32.add
                    local.get 3
                    i32.const -2
                    i32.and
                    i32.store
                    local.get 0
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.get 1
                    i32.store
                    br 7 (;@1;)
                  end
                  i32.const 1049860
                  local.get 0
                  i32.store
                  i32.const 1049852
                  i32.const 1049852
                  i32.load
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 1049856
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                end
                return
              end
              i32.const 1049856
              local.get 0
              i32.store
              i32.const 1049848
              i32.const 1049848
              i32.load
              local.get 1
              i32.add
              local.tee 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 2
            call 27
            br 2 (;@2;)
          end
          i32.const 1049848
          i32.const 0
          i32.store
          i32.const 1049856
          i32.const 0
          i32.store
          return
        end
        i32.const 1049448
        i32.const 1049448
        i32.load
        i32.const -2
        local.get 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
      local.get 0
      i32.const 1049856
      i32.load
      i32.ne
      br_if 0 (;@1;)
      i32.const 1049848
      local.get 1
      i32.store
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.le_u
        if  ;; label = @3
          local.get 1
          i32.const 3
          i32.shr_u
          local.tee 2
          i32.const 3
          i32.shl
          i32.const 1049456
          i32.add
          local.set 1
          i32.const 1049448
          i32.load
          local.tee 3
          i32.const 1
          local.get 2
          i32.const 31
          i32.and
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=8
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        call 28
        return
      end
      i32.const 1049448
      local.get 2
      local.get 3
      i32.or
      i32.store
      local.get 1
    end
    local.set 3
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8)
  (func (;31;) (type 8) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load
          local.tee 3
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 3
              i32.sub
              local.tee 1
              i32.const 1049856
              i32.load
              i32.ne
              if  ;; label = @6
                local.get 3
                i32.const 255
                i32.gt_u
                br_if 1 (;@5;)
                local.get 1
                i32.load offset=12
                local.tee 4
                local.get 1
                i32.load offset=8
                local.tee 5
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 4
                i32.store offset=12
                local.get 4
                local.get 5
                i32.store offset=8
                br 3 (;@3;)
              end
              local.get 2
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              i32.const 1049848
              local.get 0
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.tee 2
              local.get 2
              i32.load
              i32.const -2
              i32.and
              i32.store
              br 4 (;@1;)
            end
            local.get 1
            call 27
            br 1 (;@3;)
          end
          i32.const 1049448
          i32.const 1049448
          i32.load
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        block  ;; label = @3
          i32.const 1049896
          block (result i32)  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 2
                        i32.load offset=4
                        local.tee 3
                        i32.const 2
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1049860
                          i32.load
                          local.get 2
                          i32.eq
                          br_if 1 (;@10;)
                          i32.const 1049856
                          i32.load
                          local.get 2
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 3
                          i32.const -8
                          i32.and
                          local.tee 4
                          local.get 0
                          i32.add
                          local.set 0
                          local.get 4
                          i32.const 255
                          i32.gt_u
                          br_if 3 (;@8;)
                          local.get 2
                          i32.load offset=12
                          local.tee 4
                          local.get 2
                          i32.load offset=8
                          local.tee 2
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 2
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 2
                          i32.store offset=8
                          br 5 (;@6;)
                        end
                        local.get 2
                        i32.const 4
                        i32.add
                        local.get 3
                        i32.const -2
                        i32.and
                        i32.store
                        local.get 1
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 1
                        i32.add
                        local.get 0
                        i32.store
                        br 7 (;@3;)
                      end
                      i32.const 1049860
                      local.get 1
                      i32.store
                      i32.const 1049852
                      i32.const 1049852
                      i32.load
                      local.get 0
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 1
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 1049856
                      i32.load
                      local.get 1
                      i32.eq
                      if  ;; label = @10
                        i32.const 1049848
                        i32.const 0
                        i32.store
                        i32.const 1049856
                        i32.const 0
                        i32.store
                      end
                      i32.const 1049888
                      i32.load
                      local.tee 3
                      local.get 0
                      i32.ge_u
                      br_if 7 (;@2;)
                      i32.const 1049860
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      block  ;; label = @10
                        i32.const 1049852
                        i32.load
                        local.tee 4
                        i32.const 41
                        i32.lt_u
                        br_if 0 (;@10;)
                        i32.const 1049872
                        local.set 1
                        loop  ;; label = @11
                          local.get 1
                          i32.load
                          local.tee 2
                          local.get 0
                          i32.le_u
                          if  ;; label = @12
                            local.get 2
                            local.get 1
                            i32.load offset=4
                            i32.add
                            local.get 0
                            i32.gt_u
                            br_if 2 (;@10;)
                          end
                          local.get 1
                          i32.load offset=8
                          local.tee 1
                          br_if 0 (;@11;)
                        end
                      end
                      i32.const 1049880
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 4 (;@5;)
                      i32.const 0
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        local.get 0
                        i32.load offset=8
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                      local.get 1
                      i32.const 4095
                      local.get 1
                      i32.const 4095
                      i32.gt_u
                      select
                      br 5 (;@4;)
                    end
                    i32.const 1049856
                    local.get 1
                    i32.store
                    i32.const 1049848
                    i32.const 1049848
                    i32.load
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store
                    br 7 (;@1;)
                  end
                  local.get 2
                  call 27
                  br 1 (;@6;)
                end
                i32.const 1049448
                i32.const 1049448
                i32.load
                i32.const -2
                local.get 3
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store
              end
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 0
              i32.store
              local.get 1
              i32.const 1049856
              i32.load
              i32.ne
              br_if 2 (;@3;)
              i32.const 1049848
              local.get 0
              i32.store
              return
            end
            i32.const 4095
          end
          i32.store
          local.get 4
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
          i32.const 1049888
          i32.const -1
          i32.store
          return
        end
        i32.const 1049896
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block (result i32)  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 0
                  i32.const 3
                  i32.shr_u
                  local.tee 2
                  i32.const 3
                  i32.shl
                  i32.const 1049456
                  i32.add
                  local.set 0
                  i32.const 1049448
                  i32.load
                  local.tee 3
                  i32.const 1
                  local.get 2
                  i32.const 31
                  i32.and
                  i32.shl
                  local.tee 2
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load offset=8
                  br 2 (;@5;)
                end
                local.get 1
                local.get 0
                call 28
                i32.const 1049896
                i32.const 1049896
                i32.load
                i32.const -1
                i32.add
                local.tee 1
                i32.store
                local.get 1
                br_if 4 (;@2;)
                i32.const 1049880
                i32.load
                local.tee 0
                i32.eqz
                br_if 2 (;@4;)
                i32.const 0
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 0
                  i32.load offset=8
                  local.tee 0
                  br_if 0 (;@7;)
                end
                local.get 1
                i32.const 4095
                local.get 1
                i32.const 4095
                i32.gt_u
                select
                br 3 (;@3;)
              end
              i32.const 1049448
              local.get 2
              local.get 3
              i32.or
              i32.store
              local.get 0
            end
            local.set 2
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            return
          end
          i32.const 4095
        end
        i32.store
      end
      return
    end
    local.get 1
    local.get 0
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 0
    i32.store)
  (func (;32;) (type 13) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      i32.const -64
      local.get 0
      i32.const 16
      local.get 0
      i32.const 16
      i32.gt_u
      select
      local.tee 0
      i32.sub
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      local.get 1
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call 26
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const -8
      i32.add
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -1
          i32.add
          local.tee 3
          local.get 1
          i32.and
          if  ;; label = @4
            local.get 1
            i32.const -4
            i32.add
            local.tee 5
            i32.load
            local.tee 6
            i32.const -8
            i32.and
            local.get 1
            local.get 3
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            i32.and
            i32.const -8
            i32.add
            local.tee 1
            local.get 0
            local.get 1
            i32.add
            local.get 1
            local.get 2
            i32.sub
            i32.const 16
            i32.gt_u
            select
            local.tee 0
            local.get 2
            i32.sub
            local.tee 1
            i32.sub
            local.set 3
            local.get 6
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 3
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.tee 3
            local.get 3
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 5
            local.get 1
            local.get 5
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            call 30
            br 2 (;@2;)
          end
          local.get 2
          local.set 0
          br 1 (;@2;)
        end
        local.get 2
        i32.load
        local.set 2
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.tee 2
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        local.get 1
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 0
        local.get 4
        i32.add
        local.tee 1
        local.get 2
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 4
        call 30
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 2
    end
    local.get 2)
  (func (;33;) (type 0) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 1049432
    i32.load
    local.tee 2
    i32.const 1
    local.get 2
    select
    call_indirect (type 0)
    unreachable)
  (func (;34;) (type 3)
    i32.const 1049284
    call 37
    unreachable)
  (func (;35;) (type 8) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 44
    i32.add
    i32.const 13
    i32.store
    local.get 1
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 1
    i32.const 13
    i32.store offset=36
    local.get 1
    i64.const 2
    i64.store offset=12 align=4
    local.get 1
    i32.const 1049364
    i32.store offset=8
    local.get 1
    local.get 1
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 1
    local.get 1
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 1
    i32.const 8
    i32.add
    i32.const 1049380
    call 38
    unreachable)
  (func (;36;) (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 13
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 13
    i32.store offset=36
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1049324
    i32.store offset=8
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call 38
    unreachable)
  (func (;37;) (type 7) (param i32)
    (local i32 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.load offset=8 align=4
    local.set 2
    local.get 0
    i64.load offset=16 align=4
    local.set 3
    local.get 0
    i64.load align=4
    local.set 4
    local.get 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=24
    local.get 1
    i32.const 1048748
    i32.store offset=16
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store
    local.get 1
    local.get 3
    i64.store offset=40
    local.get 1
    local.get 2
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    call 38
    unreachable)
  (func (;38;) (type 0) (param i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load align=4
    local.set 3
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i64.load offset=8 align=4
    i64.store align=4
    local.get 2
    local.get 3
    i64.store offset=12 align=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1049308
    i32.store offset=4
    local.get 2
    i32.const 1048748
    i32.store
    local.get 2
    call 22
    unreachable)
  (func (;39;) (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 41)
  (func (;40;) (type 13) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    i32.const 36
    i32.add
    i32.const 1049208
    i32.store
    local.get 2
    i32.const 52
    i32.add
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.tee 3
    i32.store
    local.get 2
    i32.const 3
    i32.store8 offset=56
    local.get 2
    i32.const 44
    i32.add
    local.get 1
    i32.load offset=16
    local.tee 5
    local.get 3
    i32.const 3
    i32.shl
    i32.add
    i32.store
    local.get 2
    i64.const 137438953472
    i64.store offset=8
    local.get 2
    local.get 0
    i32.store offset=32
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    local.get 5
    i32.store offset=48
    local.get 2
    local.get 5
    i32.store offset=40
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 4
            if  ;; label = @5
              local.get 1
              i32.load
              local.set 7
              local.get 1
              i32.load offset=4
              local.tee 8
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.tee 5
              local.get 5
              local.get 8
              i32.gt_u
              select
              local.tee 9
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 7
              i32.load
              local.get 7
              i32.load offset=4
              i32.const 1049220
              i32.load
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 7
              i32.const 12
              i32.add
              local.set 5
              local.get 2
              i32.const 56
              i32.add
              local.set 10
              local.get 2
              i32.const 52
              i32.add
              local.set 11
              local.get 2
              i32.const 48
              i32.add
              local.set 12
              i32.const 1
              local.set 6
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 10
                  local.get 4
                  i32.const 32
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 2
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.const 12
                  i32.add
                  i32.load
                  i32.store offset=8
                  i32.const 0
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      block (result i32)  ;; label = @10
                        local.get 4
                        i32.const 24
                        i32.add
                        i32.load
                        local.tee 0
                        i32.const 1
                        i32.ne
                        if  ;; label = @11
                          local.get 0
                          i32.const 2
                          i32.ne
                          if  ;; label = @12
                            local.get 0
                            i32.const 3
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 4
                            i32.const 28
                            i32.add
                            i32.load
                            br 2 (;@10;)
                          end
                          local.get 2
                          i32.const 40
                          i32.add
                          local.tee 3
                          i32.load
                          local.tee 0
                          local.get 2
                          i32.const 44
                          i32.add
                          i32.load
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 3
                          local.get 0
                          i32.const 8
                          i32.add
                          i32.store
                          local.get 0
                          i32.load offset=4
                          i32.const 14
                          i32.ne
                          br_if 3 (;@8;)
                          local.get 0
                          i32.load
                          i32.load
                          br 1 (;@10;)
                        end
                        local.get 4
                        i32.const 28
                        i32.add
                        i32.load
                        local.tee 0
                        local.get 11
                        i32.load
                        local.tee 3
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 12
                        i32.load
                        local.get 0
                        i32.const 3
                        i32.shl
                        i32.add
                        local.tee 0
                        i32.load offset=4
                        i32.const 14
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 0
                        i32.load
                        i32.load
                      end
                      local.set 3
                      i32.const 1
                      local.set 1
                      br 1 (;@8;)
                    end
                    i32.const 1049412
                    local.get 0
                    local.get 3
                    call 36
                    unreachable
                  end
                  local.get 2
                  i32.const 20
                  i32.add
                  local.get 3
                  i32.store
                  local.get 2
                  i32.const 16
                  i32.add
                  local.get 1
                  i32.store
                  i32.const 0
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      block (result i32)  ;; label = @10
                        local.get 4
                        i32.const 16
                        i32.add
                        i32.load
                        local.tee 0
                        i32.const 1
                        i32.ne
                        if  ;; label = @11
                          local.get 0
                          i32.const 2
                          i32.ne
                          if  ;; label = @12
                            local.get 0
                            i32.const 3
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 4
                            i32.const 20
                            i32.add
                            i32.load
                            br 2 (;@10;)
                          end
                          local.get 2
                          i32.const 40
                          i32.add
                          local.tee 3
                          i32.load
                          local.tee 0
                          local.get 2
                          i32.const 44
                          i32.add
                          i32.load
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 3
                          local.get 0
                          i32.const 8
                          i32.add
                          i32.store
                          local.get 0
                          i32.load offset=4
                          i32.const 14
                          i32.ne
                          br_if 3 (;@8;)
                          local.get 0
                          i32.load
                          i32.load
                          br 1 (;@10;)
                        end
                        local.get 4
                        i32.const 20
                        i32.add
                        i32.load
                        local.tee 0
                        local.get 11
                        i32.load
                        local.tee 3
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 12
                        i32.load
                        local.get 0
                        i32.const 3
                        i32.shl
                        i32.add
                        local.tee 0
                        i32.load offset=4
                        i32.const 14
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 0
                        i32.load
                        i32.load
                      end
                      local.set 3
                      i32.const 1
                      local.set 1
                      br 1 (;@8;)
                    end
                    i32.const 1049412
                    local.get 0
                    local.get 3
                    call 36
                    unreachable
                  end
                  local.get 2
                  i32.const 28
                  i32.add
                  local.get 3
                  i32.store
                  local.get 2
                  i32.const 24
                  i32.add
                  local.get 1
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.load
                      i32.const 1
                      i32.eq
                      if  ;; label = @10
                        local.get 4
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 1
                        local.get 11
                        i32.load
                        local.tee 3
                        i32.ge_u
                        br_if 2 (;@8;)
                        local.get 12
                        i32.load
                        local.get 1
                        i32.const 3
                        i32.shl
                        i32.add
                        local.set 1
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.const 40
                      i32.add
                      local.tee 3
                      i32.load
                      local.tee 1
                      local.get 2
                      i32.const 44
                      i32.add
                      i32.load
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      local.get 1
                      i32.const 8
                      i32.add
                      i32.store
                    end
                    local.get 1
                    i32.load
                    local.get 2
                    i32.const 8
                    i32.add
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    call_indirect (type 2)
                    br_if 5 (;@3;)
                    local.get 6
                    local.get 9
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const -4
                    i32.add
                    local.set 1
                    local.get 5
                    i32.load
                    local.set 3
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 4
                    i32.const 36
                    i32.add
                    local.set 4
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 2
                    i32.const 32
                    i32.add
                    i32.load
                    local.get 1
                    i32.load
                    local.get 3
                    local.get 2
                    i32.const 36
                    i32.add
                    i32.load
                    i32.load offset=12
                    call_indirect (type 1)
                    i32.eqz
                    br_if 1 (;@7;)
                    br 5 (;@3;)
                  end
                end
                i32.const 1049396
                local.get 1
                local.get 3
                call 36
                unreachable
              end
              i32.const 1049340
              call 37
              unreachable
            end
            local.get 1
            i32.load
            local.set 7
            local.get 1
            i32.load offset=4
            local.tee 8
            local.get 3
            local.get 3
            local.get 8
            i32.gt_u
            select
            local.tee 9
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 7
            i32.load
            local.get 7
            i32.load offset=4
            i32.const 1049220
            i32.load
            call_indirect (type 1)
            br_if 1 (;@3;)
            local.get 7
            i32.const 12
            i32.add
            local.set 4
            local.get 2
            i32.const 32
            i32.add
            local.set 0
            local.get 2
            i32.const 36
            i32.add
            local.set 10
            i32.const 1
            local.set 6
            loop  ;; label = @5
              local.get 5
              i32.load
              local.get 2
              i32.const 8
              i32.add
              local.get 5
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 2)
              br_if 2 (;@3;)
              local.get 6
              local.get 9
              i32.ge_u
              br_if 1 (;@4;)
              local.get 4
              i32.const -4
              i32.add
              local.set 1
              local.get 4
              i32.load
              local.set 3
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 5
              i32.const 8
              i32.add
              local.set 5
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              local.get 0
              i32.load
              local.get 1
              i32.load
              local.get 3
              local.get 10
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 8
          local.get 6
          i32.le_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 32
          i32.add
          i32.load
          local.get 7
          local.get 6
          i32.const 3
          i32.shl
          i32.add
          local.tee 4
          i32.load
          local.get 4
          i32.load offset=4
          local.get 2
          i32.const 36
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        br 1 (;@1;)
      end
      i32.const 0
    end
    local.set 4
    local.get 2
    i32.const -64
    i32.sub
    global.set 0
    local.get 4)
  (func (;41;) (type 14) (param i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    i32.const 39
    local.set 2
    block  ;; label = @1
      local.get 0
      i64.const 10000
      i64.ge_u
      if  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.const 9
          i32.add
          local.get 2
          i32.add
          local.tee 3
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i64.const 10000
          i64.div_u
          local.tee 7
          i64.const 10000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 5
          i32.const 100
          i32.div_u
          local.tee 6
          i32.const 1
          i32.shl
          i32.const 1048926
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const -2
          i32.add
          local.get 5
          local.get 6
          i32.const 100
          i32.mul
          i32.sub
          i32.const 1
          i32.shl
          i32.const 1048926
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 2
          i32.const -4
          i32.add
          local.set 2
          local.get 0
          i64.const 99999999
          i64.gt_u
          local.set 3
          local.get 7
          local.set 0
          local.get 3
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 0
      local.set 7
    end
    local.get 7
    i32.wrap_i64
    local.tee 3
    i32.const 99
    i32.gt_s
    if  ;; label = @1
      local.get 2
      i32.const -2
      i32.add
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 7
      i32.wrap_i64
      local.tee 3
      local.get 3
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 3
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048926
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 3
      i32.const 9
      i32.le_s
      if  ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        local.get 4
        i32.const 9
        i32.add
        i32.add
        local.get 3
        i32.const 48
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const -2
      i32.add
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 3
      i32.const 1
      i32.shl
      i32.const 1048926
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    local.get 1
    local.get 4
    i32.const 9
    i32.add
    local.get 2
    i32.add
    i32.const 39
    local.get 2
    i32.sub
    call 42
    local.set 2
    local.get 4
    i32.const 48
    i32.add
    global.set 0
    local.get 2)
  (func (;42;) (type 9) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1048748
    local.set 7
    i32.const 43
    i32.const 1114112
    local.get 0
    i32.load
    local.tee 5
    i32.const 1
    i32.and
    local.tee 4
    select
    local.set 9
    local.get 2
    local.get 4
    i32.add
    local.set 6
    local.get 7
    i32.const 0
    local.get 5
    i32.const 4
    i32.and
    select
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block (result i32)  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block (result i32)  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load offset=8
                            i32.const 1
                            i32.eq
                            if  ;; label = @13
                              local.get 0
                              i32.const 12
                              i32.add
                              i32.load
                              local.tee 3
                              local.get 6
                              i32.le_u
                              br_if 1 (;@12;)
                              local.get 5
                              i32.const 8
                              i32.and
                              br_if 2 (;@11;)
                              local.get 3
                              local.get 6
                              i32.sub
                              local.set 4
                              i32.const 1
                              local.get 0
                              i32.load8_u offset=48
                              local.tee 3
                              local.get 3
                              i32.const 3
                              i32.eq
                              select
                              local.tee 3
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 3
                              i32.const 2
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 4
                              br 5 (;@8;)
                            end
                            local.get 0
                            local.get 9
                            local.get 7
                            call 43
                            br_if 10 (;@2;)
                            br 11 (;@1;)
                          end
                          local.get 0
                          local.get 9
                          local.get 7
                          call 43
                          br_if 9 (;@2;)
                          br 10 (;@1;)
                        end
                        local.get 0
                        i32.const 1
                        i32.store8 offset=48
                        local.get 0
                        i32.const 48
                        i32.store offset=4
                        local.get 0
                        local.get 9
                        local.get 7
                        call 43
                        br_if 8 (;@2;)
                        local.get 3
                        local.get 6
                        i32.sub
                        local.set 4
                        i32.const 1
                        local.get 0
                        i32.const 48
                        i32.add
                        i32.load8_u
                        local.tee 3
                        local.get 3
                        i32.const 3
                        i32.eq
                        select
                        local.tee 3
                        i32.const 3
                        i32.and
                        i32.eqz
                        br_if 3 (;@7;)
                        local.get 3
                        i32.const 2
                        i32.eq
                        br_if 4 (;@6;)
                        i32.const 0
                        local.set 6
                        local.get 4
                        br 5 (;@5;)
                      end
                      local.get 4
                      local.set 10
                      i32.const 0
                      br 1 (;@8;)
                    end
                    local.get 4
                    i32.const 1
                    i32.add
                    i32.const 1
                    i32.shr_u
                    local.set 10
                    local.get 4
                    i32.const 1
                    i32.shr_u
                  end
                  local.set 3
                  i32.const -1
                  local.set 4
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 8
                  local.get 0
                  i32.const 24
                  i32.add
                  local.set 6
                  local.get 0
                  i32.const 28
                  i32.add
                  local.set 5
                  loop  ;; label = @8
                    local.get 4
                    i32.const 1
                    i32.add
                    local.tee 4
                    local.get 3
                    i32.lt_u
                    if  ;; label = @9
                      local.get 6
                      i32.load
                      local.get 8
                      i32.load
                      local.get 5
                      i32.load
                      i32.load offset=16
                      call_indirect (type 2)
                      i32.eqz
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                  end
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.set 8
                  local.get 0
                  local.get 9
                  local.get 7
                  call 43
                  br_if 5 (;@2;)
                  local.get 0
                  i32.const 24
                  i32.add
                  local.tee 3
                  i32.load
                  local.get 1
                  local.get 2
                  local.get 0
                  i32.const 28
                  i32.add
                  local.tee 5
                  i32.load
                  i32.load offset=12
                  call_indirect (type 1)
                  br_if 5 (;@2;)
                  local.get 3
                  i32.load
                  local.set 0
                  i32.const -1
                  local.set 3
                  local.get 5
                  i32.load
                  i32.const 16
                  i32.add
                  local.set 5
                  loop  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 3
                    local.get 10
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 0
                    local.get 8
                    local.get 5
                    i32.load
                    call_indirect (type 2)
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  br 5 (;@2;)
                end
                local.get 4
                local.set 6
                i32.const 0
                br 1 (;@5;)
              end
              local.get 4
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 6
              local.get 4
              i32.const 1
              i32.shr_u
            end
            local.set 3
            i32.const -1
            local.set 4
            local.get 0
            i32.const 4
            i32.add
            local.set 8
            local.get 0
            i32.const 24
            i32.add
            local.set 5
            local.get 0
            i32.const 28
            i32.add
            local.set 7
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.const 1
                i32.add
                local.tee 4
                local.get 3
                i32.ge_u
                br_if 1 (;@5;)
                local.get 5
                i32.load
                local.get 8
                i32.load
                local.get 7
                i32.load
                i32.load offset=16
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@6;)
              end
              br 3 (;@2;)
            end
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 8
            local.get 0
            i32.const 24
            i32.add
            local.tee 3
            i32.load
            local.get 1
            local.get 2
            local.get 0
            i32.const 28
            i32.add
            local.tee 5
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            br_if 2 (;@2;)
            local.get 3
            i32.load
            local.set 0
            i32.const -1
            local.set 3
            local.get 5
            i32.load
            i32.const 16
            i32.add
            local.set 5
            loop  ;; label = @5
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              local.get 6
              i32.ge_u
              br_if 2 (;@3;)
              local.get 0
              local.get 8
              local.get 5
              i32.load
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          i32.const 0
          return
        end
        i32.const 0
        return
      end
      i32.const 1
      return
    end
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 1))
  (func (;43;) (type 9) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 1
        i32.const 1114112
        i32.ne
        if  ;; label = @3
          i32.const 1
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=16
          call_indirect (type 2)
          br_if 1 (;@2;)
          drop
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 2
        i32.const 0
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
      end
      return
    end
    i32.const 0)
  (func (;44;) (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    if  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 17 17 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049912))
  (global (;2;) i32 (i32.const 1049912))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "allocate" (func 3))
  (export "deallocate" (func 4))
  (export "greet" (func 5))
  (elem (;0;) (i32.const 1) func 21 14 18 16 17 14 10 15 24 25 13 11 39 39 14 10)
  (data (;0;) (i32.const 1048576) "Hello, !called `Option::unwrap()` on a `None` valuesrc/libcore/option.rssrc/liballoc/raw_vec.rsTried to shrink to a larger capacitysrc/liballoc/raw_vec.rscapacity overflow\00index out of bounds: the len is  but the index is called `Option::unwrap()` on a `None` valuesrc/libcore/option.rssrc/libcore/slice/mod.rsindex  out of range for slice of length 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
  (data (;1;) (i32.const 1049136) "src/libcore/fmt/mod.rs")
  (data (;2;) (i32.const 1049160) "\08\00\10\00+\00\00\003\00\10\00\15\00\00\00Y\01\00\00\15\00\00\00_\00\10\00$\00\00\00H\00\10\00\17\00\00\00@\02\00\00\09\00\00\00\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\00\00\00\00\01\00\00\00\07\00\00\00\08\00\00\00\10\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\9a\00\10\00\11\00\00\00\83\00\10\00\17\00\00\00\ea\02\00\00\05\00\00\00\0f\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00\ac\00\10\00 \00\00\00\cc\00\10\00\12\00\00\00\de\00\10\00+\00\00\00\09\01\10\00\15\00\00\00Y\01\00\00\15\00\00\006\01\10\00\06\00\00\00<\01\10\00\22\00\00\00\1e\01\10\00\18\00\00\00m\09\00\00\05\00\00\000\02\10\00\16\00\00\00H\04\00\00(\00\00\000\02\10\00\16\00\00\00T\04\00\00\11"))
