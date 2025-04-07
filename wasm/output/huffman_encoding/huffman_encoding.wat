(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32) (result i32 i32)))
  (type (;13;) (func (param i32 i32) (result i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32)))
  (type (;16;) (func (param i32 i32) (result i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32) (result i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i32 i32 i32)))
  (import "env" "memory" (memory (;0;) 4))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    call 15
    global.set 12
    local.set 2
    local.get 2)
  (func (;2;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    call 16)
  (func (;3;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    call 17)
  (func (;4;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    call 18)
  (func (;5;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    call 19
    global.set 13
    local.set 1
    local.get 1)
  (func (;6;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    call 20
    global.set 14
    local.set 1
    local.get 1)
  (func (;7;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    call 21)
  (func (;8;) (type 4) (param i32)
    local.get 0
    i32.const 0
    call 22)
  (func (;9;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    call 23
    global.set 15
    local.set 1
    local.get 1)
  (func (;10;) (type 5) (param i32 i32 i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    local.get 2
    i32.const 0
    local.get 3
    i32.const 0
    call 24)
  (func (;11;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    local.get 2
    i32.const 0
    call 25
    global.set 16
    local.set 3
    local.get 3)
  (func (;12;) (type 7) (param i32 i32 i32 i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    local.get 2
    i32.const 0
    local.get 3
    i32.const 0
    local.get 4
    i32.const 0
    call 26)
  (func (;13;) (type 5) (param i32 i32 i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    local.get 2
    i32.const 0
    local.get 3
    i32.const 0
    call 27)
  (func (;14;) (type 2) (param i32 i32)
    local.get 0
    i32.const -1
    local.get 1
    i32.const 0
    call 28)
  (func (;15;) (type 8) (param i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    i32.const 0
    i32.const 0
    drop
    local.tee 6
    i32.load offset=1024
    local.get 6
    i32.load offset=66560
    local.set 5
    local.tee 4
    local.get 5
    i32.const 1
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=1024
    local.get 8
    local.get 6
    i32.store offset=66560
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
    i32.shl
    local.get 6
    local.set 5
    local.tee 4
    local.get 5
    i32.const 1052
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    i32.const 0
    i32.const 0
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store
    local.get 8
    local.get 6
    i32.store offset=65536
    local.get 4
    local.get 5
    i32.const 1048
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    i32.const 0
    i32.const 0
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store
    local.get 8
    local.get 6
    i32.store offset=65536
    local.get 4
    local.get 5
    i32.const 1044
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    local.get 2
    local.get 3
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store
    local.get 8
    local.get 6
    i32.store offset=65536
    local.get 4
    local.get 5
    i32.const 1040
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    local.set 5
    local.tee 4
    local.get 5
    local.get 0
    local.get 1
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store8
    local.get 8
    local.get 6
    i32.store8 offset=65536
    local.get 4
    local.get 5)
  (func (;16;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.set 4
    local.set 5
    drop
    local.tee 6
    local.get 5
    i32.store offset=4
    local.get 6
    local.get 4
    i32.store offset=65540
    local.get 0
    local.get 1
    i32.const 0
    i32.const 0
    local.set 4
    local.set 5
    drop
    local.tee 6
    local.get 5
    i32.store
    local.get 6
    local.get 4
    i32.store offset=65536)
  (func (;17;) (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    drop
    local.tee 6
    i32.load
    local.get 6
    i32.load offset=65536
    local.set 5
    local.set 4
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    drop
    local.tee 6
    i32.load
    local.get 6
    i32.load offset=65536
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store
    local.get 8
    local.get 6
    i32.store offset=65536
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store
    local.get 8
    local.get 6
    i32.store offset=65536)
  (func (;18;) (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.const 8
    i32.const 0
    local.set 14
    local.set 15
    local.get 14
    i32.or
    local.set 14
    local.get 15
    i32.add
    local.get 14
    local.set 5
    local.set 4
    local.get 2
    local.get 3
    local.set 3
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      local.set 3
      local.tee 2
      local.get 3
      i32.const 1
      i32.const 0
      local.set 14
      local.set 15
      local.get 14
      i32.or
      local.set 14
      local.get 15
      i32.shl
      local.get 14
      local.set 7
      local.tee 6
      local.get 7
      i32.const 2
      i32.const 0
      local.set 14
      local.set 15
      local.get 14
      i32.or
      local.set 14
      local.get 15
      i32.add
      local.get 14
      local.set 9
      local.set 8
      local.get 2
      local.get 3
      local.set 11
      local.set 10
      block  ;; label = @2
        local.get 6
        local.get 7
        i32.const 1
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.or
        local.get 14
        local.set 7
        local.tee 6
        local.get 7
        local.get 0
        local.get 1
        drop
        local.tee 14
        i32.load
        local.get 14
        i32.load offset=65536
        local.set 13
        local.tee 12
        local.get 13
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.ge_u
        local.get 14
        drop
        br_if 0 (;@2;)
        local.get 6
        local.get 7
        local.get 2
        local.get 3
        local.get 4
        local.get 5
        local.get 6
        local.get 7
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        drop
        local.tee 14
        i32.load
        local.get 14
        i32.load offset=65536
        drop
        local.tee 14
        i32.load offset=4
        local.get 14
        i32.load offset=65540
        local.get 4
        local.get 5
        local.get 2
        local.get 3
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        drop
        local.tee 14
        i32.load
        local.get 14
        i32.load offset=65536
        drop
        local.tee 14
        i32.load offset=4
        local.get 14
        i32.load offset=65540
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.lt_u
        local.get 14
        local.set 14
        local.set 15
        local.set 16
        local.set 17
        drop
        local.tee 18
        local.get 16
        local.get 14
        select
        local.set 14
        local.get 18
        local.get 17
        local.get 15
        select
        local.get 14
        local.set 11
        local.set 10
      end
      local.get 10
      local.get 11
      local.set 11
      local.set 10
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          local.get 9
          local.get 12
          local.get 13
          local.set 14
          local.set 15
          local.get 14
          i32.or
          local.set 14
          local.get 15
          i32.lt_u
          local.get 14
          drop
          br_if 0 (;@3;)
          local.get 10
          local.get 11
          local.set 9
          local.set 8
          br 1 (;@2;)
        end
        local.get 8
        local.get 9
        local.get 10
        local.get 11
        local.get 4
        local.get 5
        local.get 8
        local.get 9
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        drop
        local.tee 14
        i32.load
        local.get 14
        i32.load offset=65536
        drop
        local.tee 14
        i32.load offset=4
        local.get 14
        i32.load offset=65540
        local.get 4
        local.get 5
        local.get 10
        local.get 11
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        drop
        local.tee 14
        i32.load
        local.get 14
        i32.load offset=65536
        drop
        local.tee 14
        i32.load offset=4
        local.get 14
        i32.load offset=65540
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.lt_u
        local.get 14
        local.set 14
        local.set 15
        local.set 16
        local.set 17
        drop
        local.tee 18
        local.get 16
        local.get 14
        select
        local.set 14
        local.get 18
        local.get 17
        local.get 15
        select
        local.get 14
        local.set 9
        local.set 8
      end
      block  ;; label = @2
        local.get 8
        local.get 9
        local.set 9
        local.tee 8
        local.get 9
        local.get 2
        local.get 3
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.eq
        local.get 14
        drop
        br_if 0 (;@2;)
        local.get 4
        local.get 5
        local.get 8
        local.get 9
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        local.get 4
        local.get 5
        local.get 2
        local.get 3
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        call 17
        local.get 8
        local.get 9
        local.set 3
        local.set 2
        br 1 (;@1;)
      end
    end)
  (func (;19;) (type 12) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    drop
    local.tee 2
    i32.load
    local.get 2
    i32.load offset=65536
    i32.const 1
    i32.const 0
    local.set 2
    local.set 3
    local.get 2
    i32.or
    local.set 2
    local.get 3
    i32.eq
    local.get 2)
  (func (;20;) (type 13) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 0
    local.get 1
    drop
    local.tee 6
    i32.load
    local.get 6
    i32.load offset=65536
    i32.const -1
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    local.set 3
    local.tee 2
    local.get 3
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store
    local.get 8
    local.get 6
    i32.store offset=65536
    local.get 0
    local.get 1
    drop
    local.tee 6
    i32.load offset=8
    local.get 6
    i32.load offset=65544
    local.set 5
    local.set 4
    local.get 0
    local.get 1
    local.get 0
    local.get 1
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
    local.get 2
    local.get 3
    i32.const 2
    i32.const 0
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.shl
    local.get 6
    local.set 6
    local.set 7
    local.get 6
    i32.or
    local.set 6
    local.get 7
    i32.add
    local.get 6
    drop
    local.tee 6
    i32.load
    local.get 6
    i32.load offset=65536
    local.set 6
    local.set 7
    drop
    local.tee 8
    local.get 7
    i32.store offset=8
    local.get 8
    local.get 6
    i32.store offset=65544
    local.get 0
    local.get 1
    i32.const 0
    i32.const 0
    call 18
    local.get 4
    local.get 5)
  (func (;21;) (type 14) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 0
    local.get 1
    drop
    local.tee 14
    i32.load
    local.get 14
    i32.load offset=65536
    local.set 5
    local.tee 4
    local.get 5
    i32.const 1
    i32.const 0
    local.set 14
    local.set 15
    local.get 14
    i32.or
    local.set 14
    local.get 15
    i32.add
    local.get 14
    local.set 14
    local.set 15
    drop
    local.tee 16
    local.get 15
    i32.store
    local.get 16
    local.get 14
    i32.store offset=65536
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        local.get 5
        drop
        br_if 0 (;@2;)
        local.get 4
        local.get 5
        local.set 7
        local.set 6
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.const 8
      i32.const 0
      local.set 14
      local.set 15
      local.get 14
      i32.or
      local.set 14
      local.get 15
      i32.add
      local.get 14
      local.set 9
      local.set 8
      local.get 2
      local.get 3
      drop
      local.tee 14
      i32.load offset=4
      local.get 14
      i32.load offset=65540
      local.set 11
      local.set 10
      local.get 4
      local.get 5
      local.set 13
      local.set 12
      loop  ;; label = @2
        block  ;; label = @3
          local.get 10
          local.get 11
          local.get 8
          local.get 9
          local.get 12
          local.get 13
          local.set 5
          local.tee 4
          local.get 5
          i32.const -1
          i32.const 0
          local.set 14
          local.set 15
          local.get 14
          i32.or
          local.set 14
          local.get 15
          i32.add
          local.get 14
          i32.const 2
          i32.const 0
          local.set 14
          local.set 15
          local.get 14
          i32.or
          local.set 14
          local.get 15
          i32.div_s
          local.get 14
          local.set 7
          local.tee 6
          local.get 7
          i32.const 2
          i32.const 0
          local.set 14
          local.set 15
          local.get 14
          i32.or
          local.set 14
          local.get 15
          i32.shl
          local.get 14
          local.set 14
          local.set 15
          local.get 14
          i32.or
          local.set 14
          local.get 15
          i32.add
          local.get 14
          drop
          local.tee 14
          i32.load
          local.get 14
          i32.load offset=65536
          local.set 13
          local.tee 12
          local.get 13
          drop
          local.tee 14
          i32.load offset=4
          local.get 14
          i32.load offset=65540
          local.set 14
          local.set 15
          local.get 14
          i32.or
          local.set 14
          local.get 15
          i32.lt_u
          local.get 14
          drop
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          local.set 7
          local.set 6
          br 2 (;@1;)
        end
        local.get 8
        local.get 9
        local.get 4
        local.get 5
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.shl
        local.get 14
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        local.get 12
        local.get 13
        local.set 14
        local.set 15
        drop
        local.tee 16
        local.get 15
        i32.store
        local.get 16
        local.get 14
        i32.store offset=65536
        local.get 6
        local.get 7
        local.set 13
        local.set 12
        local.get 6
        local.get 7
        local.set 7
        local.set 6
        local.get 4
        local.get 5
        i32.const 2
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.gt_u
        local.get 14
        drop
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    local.get 6
    local.get 7
    i32.const 2
    i32.const 0
    local.set 14
    local.set 15
    local.get 14
    i32.or
    local.set 14
    local.get 15
    i32.shl
    local.get 14
    local.set 14
    local.set 15
    local.get 14
    i32.or
    local.set 14
    local.get 15
    i32.add
    local.get 14
    i32.const 8
    i32.const 0
    local.set 14
    local.set 15
    local.get 14
    i32.or
    local.set 14
    local.get 15
    i32.add
    local.get 14
    local.get 2
    local.get 3
    local.set 14
    local.set 15
    drop
    local.tee 16
    local.get 15
    i32.store
    local.get 16
    local.get 14
    i32.store offset=65536)
  (func (;22;) (type 15) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      drop
      local.tee 6
      i32.load
      local.get 6
      i32.load offset=65536
      i32.const -2
      i32.const 0
      local.set 6
      local.set 7
      local.get 6
      i32.or
      local.set 6
      local.get 7
      i32.add
      local.get 6
      local.set 3
      local.tee 2
      local.get 3
      i32.const -1
      i32.const 0
      local.set 6
      local.set 7
      local.get 6
      i32.or
      local.set 6
      local.get 7
      i32.lt_s
      local.get 6
      drop
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.const 2
      i32.const 0
      local.set 6
      local.set 7
      local.get 6
      i32.or
      local.set 6
      local.get 7
      i32.div_s
      local.get 6
      local.set 5
      local.set 4
      loop  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        local.get 5
        local.set 3
        local.tee 2
        local.get 3
        call 18
        local.get 2
        local.get 3
        i32.const -1
        i32.const 0
        local.set 6
        local.set 7
        local.get 6
        i32.or
        local.set 6
        local.get 7
        i32.add
        local.get 6
        local.set 5
        local.set 4
        local.get 2
        local.get 3
        i32.const 0
        i32.const 0
        local.set 6
        local.set 7
        local.get 6
        i32.or
        local.set 6
        local.get 7
        i32.gt_s
        local.get 6
        drop
        br_if 0 (;@2;)
      end
    end)
  (func (;23;) (type 16) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.const 0
    local.set 3
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      drop
      local.tee 4
      i32.load offset=8
      local.get 4
      i32.load offset=65544
      drop
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      drop
      local.tee 4
      i32.load offset=12
      local.get 4
      i32.load offset=65548
      local.set 4
      i32.eqz
      local.get 4
      local.set 3
      local.set 2
    end
    local.get 2
    local.get 3)
  (func (;24;) (type 17) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 6
    local.get 7
    call 16
    block  ;; label = @1
      local.get 6
      local.get 7
      i32.const 1
      i32.const 0
      local.set 14
      local.set 15
      local.get 14
      i32.or
      local.set 14
      local.get 15
      i32.lt_s
      local.get 14
      drop
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      local.set 3
      local.set 2
      local.get 4
      local.get 5
      local.set 5
      local.set 4
      local.get 0
      local.get 1
      i32.const 8
      i32.const 0
      local.set 14
      local.set 15
      local.get 14
      i32.or
      local.set 14
      local.get 15
      i32.add
      local.get 14
      local.set 9
      local.set 8
      local.get 6
      local.get 7
      local.set 11
      local.set 10
      loop  ;; label = @2
        local.get 8
        local.get 9
        local.set 9
        local.tee 8
        local.get 9
        local.get 2
        local.get 3
        local.set 3
        local.tee 2
        local.get 3
        drop
        local.tee 14
        i32.load8_s
        local.get 14
        i32.load8_s offset=65536
        local.get 4
        local.get 5
        local.set 5
        local.tee 4
        local.get 5
        drop
        local.tee 14
        i32.load
        local.get 14
        i32.load offset=65536
        call 15
        local.set 14
        local.set 15
        drop
        local.tee 16
        local.get 15
        i32.store
        local.get 16
        local.get 14
        i32.store offset=65536
        local.get 2
        local.get 3
        i32.const 1
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        local.set 3
        local.set 2
        local.get 4
        local.get 5
        i32.const 4
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        local.set 5
        local.set 4
        local.get 8
        local.get 9
        i32.const 4
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        local.set 9
        local.set 8
        local.get 10
        local.get 11
        i32.const -1
        i32.const 0
        local.set 14
        local.set 15
        local.get 14
        i32.or
        local.set 14
        local.get 15
        i32.add
        local.get 14
        local.set 13
        local.tee 12
        local.get 13
        local.set 11
        local.set 10
        local.get 12
        local.get 13
        drop
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    local.get 6
    local.get 7
    local.set 14
    local.set 15
    drop
    local.tee 16
    local.get 15
    i32.store
    local.get 16
    local.get 14
    i32.store offset=65536
    local.get 0
    local.get 1
    call 22)
  (func (;25;) (type 18) (param i32 i32 i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    global.get 11
    i32.const 416
    i32.const 0
    local.set 8
    local.set 9
    local.get 8
    i32.or
    local.set 8
    local.get 9
    i32.sub
    local.get 8
    local.set 7
    local.tee 6
    local.get 7
    global.set 11
    global.set 0
    local.get 6
    local.get 7
    i32.const 8
    i32.const 0
    local.set 8
    local.set 9
    local.get 8
    i32.or
    local.set 8
    local.get 9
    i32.add
    local.get 8
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call 24
    block  ;; label = @1
      local.get 6
      local.get 7
      i32.const 8
      i32.const 0
      local.set 8
      local.set 9
      local.get 8
      i32.or
      local.set 8
      local.get 9
      i32.add
      local.get 8
      call 19
      drop
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 6
        local.get 7
        i32.const 8
        i32.const 0
        local.set 8
        local.set 9
        local.get 8
        i32.or
        local.set 8
        local.get 9
        i32.add
        local.get 8
        call 20
        local.set 5
        local.set 4
        i32.const 36
        i32.const 0
        local.get 6
        local.get 7
        i32.const 8
        i32.const 0
        local.set 8
        local.set 9
        local.get 8
        i32.or
        local.set 8
        local.get 9
        i32.add
        local.get 8
        call 20
        local.set 1
        local.tee 0
        local.get 1
        drop
        local.tee 8
        i32.load offset=4
        local.get 8
        i32.load offset=65540
        local.get 4
        local.get 5
        drop
        local.tee 8
        i32.load offset=4
        local.get 8
        i32.load offset=65540
        local.set 8
        local.set 9
        local.get 8
        i32.or
        local.set 8
        local.get 9
        i32.add
        local.get 8
        call 15
        local.set 3
        local.tee 2
        local.get 3
        local.get 0
        local.get 1
        local.set 8
        local.set 9
        drop
        local.tee 10
        local.get 9
        i32.store offset=12
        local.get 10
        local.get 8
        i32.store offset=65548
        local.get 2
        local.get 3
        local.get 4
        local.get 5
        local.set 8
        local.set 9
        drop
        local.tee 10
        local.get 9
        i32.store offset=8
        local.get 10
        local.get 8
        i32.store offset=65544
        local.get 6
        local.get 7
        i32.const 8
        i32.const 0
        local.set 8
        local.set 9
        local.get 8
        i32.or
        local.set 8
        local.get 9
        i32.add
        local.get 8
        local.get 2
        local.get 3
        call 21
        local.get 6
        local.get 7
        i32.const 8
        i32.const 0
        local.set 8
        local.set 9
        local.get 8
        i32.or
        local.set 8
        local.get 9
        i32.add
        local.get 8
        call 19
        local.set 8
        i32.eqz
        local.get 8
        drop
        br_if 0 (;@2;)
      end
    end
    local.get 6
    local.get 7
    i32.const 8
    i32.const 0
    local.set 8
    local.set 9
    local.get 8
    i32.or
    local.set 8
    local.get 9
    i32.add
    local.get 8
    call 20
    local.set 5
    local.set 4
    local.get 6
    local.get 7
    i32.const 416
    i32.const 0
    local.set 8
    local.set 9
    local.get 8
    i32.or
    local.set 8
    local.get 9
    i32.add
    local.get 8
    global.set 11
    global.set 0
    local.get 4
    local.get 5)
  (func (;26;) (type 19) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      drop
      local.tee 12
      i32.load offset=8
      local.get 12
      i32.load offset=65544
      local.set 11
      local.tee 10
      local.get 11
      local.set 12
      i32.eqz
      local.get 12
      drop
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      i32.const 2
      i32.const 0
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.shl
      local.get 12
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.add
      local.get 12
      i32.const 0
      i32.const 0
      local.set 12
      local.set 13
      drop
      local.tee 14
      local.get 13
      i32.store
      local.get 14
      local.get 12
      i32.store offset=65536
      local.get 10
      local.get 11
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      i32.const 1
      i32.const 0
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.add
      local.get 12
      local.get 6
      local.get 7
      local.get 8
      local.get 9
      call 26
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      drop
      local.tee 12
      i32.load offset=12
      local.get 12
      i32.load offset=65548
      local.set 11
      local.tee 10
      local.get 11
      local.set 12
      i32.eqz
      local.get 12
      drop
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      i32.const 2
      i32.const 0
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.shl
      local.get 12
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.add
      local.get 12
      i32.const 1
      i32.const 0
      local.set 12
      local.set 13
      drop
      local.tee 14
      local.get 13
      i32.store
      local.get 14
      local.get 12
      i32.store offset=65536
      local.get 10
      local.get 11
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      i32.const 1
      i32.const 0
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.add
      local.get 12
      local.get 6
      local.get 7
      local.get 8
      local.get 9
      call 26
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      call 23
      local.set 12
      i32.eqz
      local.get 12
      drop
      br_if 0 (;@1;)
      local.get 4
      local.get 5
      i32.const 1
      i32.const 0
      local.set 12
      local.set 13
      local.get 12
      i32.or
      local.set 12
      local.get 13
      i32.lt_s
      local.get 12
      drop
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      local.set 1
      local.set 0
      local.get 4
      local.get 5
      local.set 5
      local.set 4
      loop  ;; label = @2
        local.get 6
        local.get 7
        local.get 8
        local.get 9
        drop
        local.tee 12
        i32.load
        local.get 12
        i32.load offset=65536
        i32.const 2
        i32.const 0
        local.set 12
        local.set 13
        local.get 12
        i32.or
        local.set 12
        local.get 13
        i32.shl
        local.get 12
        local.set 12
        local.set 13
        local.get 12
        i32.or
        local.set 12
        local.get 13
        i32.add
        local.get 12
        local.get 0
        local.get 1
        local.set 1
        local.tee 0
        local.get 1
        drop
        local.tee 12
        i32.load
        local.get 12
        i32.load offset=65536
        local.set 12
        local.set 13
        drop
        local.tee 14
        local.get 13
        i32.store
        local.get 14
        local.get 12
        i32.store offset=65536
        local.get 8
        local.get 9
        local.get 8
        local.get 9
        drop
        local.tee 12
        i32.load
        local.get 12
        i32.load offset=65536
        i32.const 1
        i32.const 0
        local.set 12
        local.set 13
        local.get 12
        i32.or
        local.set 12
        local.get 13
        i32.add
        local.get 12
        local.set 12
        local.set 13
        drop
        local.tee 14
        local.get 13
        i32.store
        local.get 14
        local.get 12
        i32.store offset=65536
        local.get 0
        local.get 1
        i32.const 4
        i32.const 0
        local.set 12
        local.set 13
        local.get 12
        i32.or
        local.set 12
        local.get 13
        i32.add
        local.get 12
        local.set 1
        local.set 0
        local.get 4
        local.get 5
        i32.const -1
        i32.const 0
        local.set 12
        local.set 13
        local.get 12
        i32.or
        local.set 12
        local.get 13
        i32.add
        local.get 12
        local.set 3
        local.tee 2
        local.get 3
        local.set 5
        local.set 4
        local.get 2
        local.get 3
        drop
        br_if 0 (;@2;)
      end
    end)
  (func (;27;) (type 20) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    global.get 11
    i32.const 416
    i32.const 0
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.sub
    local.get 10
    local.set 9
    local.tee 8
    local.get 9
    global.set 11
    global.set 0
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call 25
    local.set 5
    local.set 4
    local.get 8
    local.get 9
    i32.const 0
    i32.const 0
    local.set 10
    local.set 11
    drop
    local.tee 12
    local.get 11
    i32.store offset=12
    local.get 12
    local.get 10
    i32.store offset=65548
    local.get 4
    local.get 5
    local.get 8
    local.get 9
    i32.const 16
    i32.const 0
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.add
    local.get 10
    i32.const 0
    i32.const 0
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    i32.const 12
    i32.const 0
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.add
    local.get 10
    call 26
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    drop
    local.tee 10
    i32.load offset=12
    local.get 10
    i32.load offset=65548
    i32.const 2
    i32.const 0
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.shl
    local.get 10
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.add
    local.get 10
    i32.const 98
    i32.const 0
    local.set 10
    local.set 11
    drop
    local.tee 12
    local.get 11
    i32.store
    local.get 12
    local.get 10
    i32.store offset=65536
    local.get 8
    local.get 9
    i32.const 416
    i32.const 0
    local.set 10
    local.set 11
    local.get 10
    i32.or
    local.set 10
    local.get 11
    i32.add
    local.get 10
    global.set 11
    global.set 0)
  (func (;28;) (type 21) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    global.get 11
    i32.const 2304
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.sub
    local.get 24
    local.set 5
    local.tee 4
    local.get 5
    local.set 7
    local.set 6
    local.get 4
    local.get 5
    global.set 11
    global.set 0
    i32.const 0
    i32.const 0
    local.set 9
    local.set 8
    loop  ;; label = @1
      local.get 6
      local.get 7
      local.get 8
      local.get 9
      local.set 9
      local.tee 8
      local.get 9
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      i32.const 0
      i32.const 0
      local.set 24
      local.set 25
      drop
      local.tee 26
      local.get 25
      i32.store
      local.get 26
      local.get 24
      i32.store offset=65536
      local.get 8
      local.get 9
      i32.const 4
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      local.set 11
      local.tee 10
      local.get 11
      local.set 9
      local.set 8
      local.get 10
      local.get 11
      i32.const 1024
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.ne
      local.get 24
      drop
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      drop
      local.tee 24
      i32.load8_u
      local.get 24
      i32.load8_u offset=65536
      local.set 11
      local.tee 10
      local.get 11
      local.set 24
      i32.eqz
      local.get 24
      drop
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 1
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      local.set 9
      local.set 8
      local.get 10
      local.get 11
      local.set 11
      local.set 10
      loop  ;; label = @2
        local.get 6
        local.get 7
        local.get 10
        local.get 11
        i32.const 255
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.and
        local.get 24
        i32.const 2
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.shl
        local.get 24
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 11
        local.tee 10
        local.get 11
        local.get 10
        local.get 11
        drop
        local.tee 24
        i32.load
        local.get 24
        i32.load offset=65536
        i32.const 1
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 24
        local.set 25
        drop
        local.tee 26
        local.get 25
        i32.store
        local.get 26
        local.get 24
        i32.store offset=65536
        local.get 8
        local.get 9
        local.set 11
        local.tee 10
        local.get 11
        i32.const 1
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 9
        local.set 8
        local.get 10
        local.get 11
        drop
        local.tee 24
        i32.load8_u
        local.get 24
        i32.load8_u offset=65536
        local.set 1
        local.tee 0
        local.get 1
        local.set 11
        local.set 10
        local.get 0
        local.get 1
        drop
        br_if 0 (;@2;)
      end
    end
    local.get 6
    local.get 7
    local.set 1
    local.set 0
    i32.const 0
    i32.const 0
    local.set 9
    local.set 8
    i32.const 0
    i32.const 0
    local.set 11
    local.set 10
    loop  ;; label = @1
      local.get 10
      local.get 11
      local.set 11
      local.set 10
      local.get 8
      local.get 9
      local.set 9
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          local.set 1
          local.tee 0
          local.get 1
          drop
          local.tee 24
          i32.load
          local.get 24
          i32.load offset=65536
          local.set 13
          local.tee 12
          local.get 13
          i32.const 1
          i32.const 0
          local.set 24
          local.set 25
          local.get 24
          i32.or
          local.set 24
          local.get 25
          i32.ge_s
          local.get 24
          drop
          br_if 0 (;@3;)
          local.get 8
          local.get 9
          local.set 9
          local.set 8
          br 1 (;@2;)
        end
        local.get 6
        local.get 7
        i32.const 2048
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.get 8
        local.get 9
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.get 10
        local.get 11
        local.set 24
        local.set 25
        drop
        local.tee 26
        local.get 25
        i32.store8
        local.get 26
        local.get 24
        i32.store8 offset=65536
        local.get 6
        local.get 7
        i32.const 1024
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.get 8
        local.get 9
        i32.const 2
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.shl
        local.get 24
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.get 12
        local.get 13
        local.set 24
        local.set 25
        drop
        local.tee 26
        local.get 25
        i32.store
        local.get 26
        local.get 24
        i32.store offset=65536
        local.get 8
        local.get 9
        i32.const 1
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 9
        local.set 8
      end
      local.get 0
      local.get 1
      i32.const 4
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      local.set 1
      local.set 0
      local.get 8
      local.get 9
      local.set 15
      local.tee 14
      local.get 15
      local.set 9
      local.set 8
      local.get 10
      local.get 11
      i32.const 1
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      local.set 13
      local.tee 12
      local.get 13
      local.set 11
      local.set 10
      local.get 12
      local.get 13
      i32.const 256
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.ne
      local.get 24
      drop
      br_if 0 (;@1;)
    end
    local.get 4
    local.get 5
    local.get 14
    local.get 15
    i32.const 15
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.add
    local.get 24
    i32.const -16
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.and
    local.get 24
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.sub
    local.get 24
    local.set 17
    local.tee 16
    local.get 17
    local.set 9
    local.tee 8
    local.get 9
    global.set 11
    global.set 0
    local.get 8
    local.get 9
    local.get 14
    local.get 15
    i32.const 2
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.shl
    local.get 24
    i32.const 15
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.add
    local.get 24
    i32.const -16
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.and
    local.get 24
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.sub
    local.get 24
    local.set 19
    local.tee 18
    local.get 19
    global.set 11
    global.set 0
    local.get 4
    local.get 5
    local.set 21
    local.set 20
    block  ;; label = @1
      local.get 14
      local.get 15
      i32.const 1
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.lt_s
      local.get 24
      drop
      br_if 0 (;@1;)
      local.get 6
      local.get 7
      i32.const 2048
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      local.set 9
      local.set 8
      local.get 16
      local.get 17
      local.set 11
      local.set 10
      local.get 6
      local.get 7
      i32.const 1024
      i32.const 0
      local.set 24
      local.set 25
      local.get 24
      i32.or
      local.set 24
      local.get 25
      i32.add
      local.get 24
      local.set 1
      local.set 0
      local.get 18
      local.get 19
      local.set 13
      local.set 12
      local.get 14
      local.get 15
      local.set 5
      local.set 4
      loop  ;; label = @2
        local.get 10
        local.get 11
        local.set 11
        local.tee 10
        local.get 11
        local.get 8
        local.get 9
        local.set 9
        local.tee 8
        local.get 9
        drop
        local.tee 24
        i32.load8_u
        local.get 24
        i32.load8_u offset=65536
        local.set 24
        local.set 25
        drop
        local.tee 26
        local.get 25
        i32.store8
        local.get 26
        local.get 24
        i32.store8 offset=65536
        local.get 12
        local.get 13
        local.set 13
        local.tee 12
        local.get 13
        local.get 0
        local.get 1
        local.set 1
        local.tee 0
        local.get 1
        drop
        local.tee 24
        i32.load
        local.get 24
        i32.load offset=65536
        local.set 24
        local.set 25
        drop
        local.tee 26
        local.get 25
        i32.store
        local.get 26
        local.get 24
        i32.store offset=65536
        local.get 8
        local.get 9
        i32.const 1
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 9
        local.set 8
        local.get 10
        local.get 11
        i32.const 1
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 11
        local.set 10
        local.get 0
        local.get 1
        i32.const 4
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 1
        local.set 0
        local.get 12
        local.get 13
        i32.const 4
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 13
        local.set 12
        local.get 4
        local.get 5
        i32.const -1
        i32.const 0
        local.set 24
        local.set 25
        local.get 24
        i32.or
        local.set 24
        local.get 25
        i32.add
        local.get 24
        local.set 23
        local.tee 22
        local.get 23
        local.set 5
        local.set 4
        local.get 22
        local.get 23
        drop
        br_if 0 (;@2;)
      end
    end
    local.get 16
    local.get 17
    local.get 18
    local.get 19
    local.get 14
    local.get 15
    local.get 2
    local.get 3
    call 27
    local.get 20
    local.get 21
    drop
    drop
    local.get 6
    local.get 7
    i32.const 2304
    i32.const 0
    local.set 24
    local.set 25
    local.get 24
    i32.or
    local.set 24
    local.get 25
    i32.add
    local.get 24
    global.set 11
    global.set 0)
  (global (;0;) (mut i32) (i32.const 68176))
  (global (;1;) i32 (i32.const 1040))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 2640))
  (global (;4;) i32 (i32.const 2640))
  (global (;5;) i32 (i32.const 68176))
  (global (;6;) i32 (i32.const 1024))
  (global (;7;) i32 (i32.const 133712))
  (global (;8;) i32 (i32.const 196608))
  (global (;9;) i32 (i32.const 0))
  (global (;10;) i32 (i32.const 1))
  (global (;11;) (mut i32) (i32.const 0))
  (global (;12;) (mut i32) (i32.const 0))
  (global (;13;) (mut i32) (i32.const 0))
  (global (;14;) (mut i32) (i32.const 0))
  (global (;15;) (mut i32) (i32.const 0))
  (global (;16;) (mut i32) (i32.const 0))
  (export "__wasm_call_ctors" (func 0))
  (export "newNode" (func 1))
  (export "nodes" (global 1))
  (export "createMinHeap" (func 2))
  (export "swapMinHeapNode" (func 3))
  (export "minHeapify" (func 4))
  (export "isSizeOne" (func 5))
  (export "extractMin" (func 6))
  (export "insertMinHeap" (func 7))
  (export "buildMinHeap" (func 8))
  (export "isLeaf" (func 9))
  (export "createAndBuildMinHeap" (func 10))
  (export "buildHuffmanTree" (func 11))
  (export "printCodes" (func 12))
  (export "HuffmanCodes" (func 13))
  (export "calcFreqs" (func 14))
  (export "__dso_handle" (global 2))
  (export "__data_end" (global 3))
  (export "__stack_low" (global 4))
  (export "__stack_high" (global 5))
  (export "__global_base" (global 6))
  (export "__heap_base" (global 7))
  (export "__heap_end" (global 8))
  (export "__memory_base" (global 9))
  (export "__table_base" (global 10))
  (export "taint_result_15_0" (global 12))
  (export "taint_result_19_0" (global 13))
  (export "taint_result_20_0" (global 14))
  (export "taint_result_23_0" (global 15))
  (export "taint_result_25_0" (global 16))
  (export "taint_signature_createAndBuildMinHeap" (func 24))
  (export "taint_signature_calcFreqs" (func 28))
  (export "taint_signature_buildMinHeap" (func 22))
  (export "taint_signature_isSizeOne" (func 19))
  (export "taint_signature_printCodes" (func 26))
  (export "taint_signature_buildHuffmanTree" (func 25))
  (export "taint_signature_isLeaf" (func 23))
  (export "taint_signature_swapMinHeapNode" (func 17))
  (export "taint_signature_minHeapify" (func 18))
  (export "taint_signature_HuffmanCodes" (func 27))
  (export "taint_signature_extractMin" (func 20))
  (export "taint_signature_insertMinHeap" (func 21))
  (export "taint_signature_createMinHeap" (func 16))
  (export "taint_signature_newNode" (func 15))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
