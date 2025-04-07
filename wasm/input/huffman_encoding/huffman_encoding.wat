(module $huffman_encoding.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0))
  (func $newNode (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 3
    local.get 3
    i32.load
    local.tee 4
    i32.const 1
    i32.add
    i32.store
    local.get 2
    local.get 4
    i32.const 4
    i32.shl
    i32.add
    local.tee 3
    i64.const 0
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store8
    local.get 3)
  (func $createMinHeap (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func $swapMinHeapNode (type 2) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.set 2
    local.get 0
    local.get 1
    i32.load
    i32.store
    local.get 1
    local.get 2
    i32.store)
  (func $minHeapify (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    local.get 1
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.tee 1
      i32.const 1
      i32.shl
      local.tee 3
      i32.const 2
      i32.add
      local.set 4
      local.get 1
      local.set 5
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.or
        local.tee 3
        local.get 0
        i32.load
        local.tee 6
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        local.get 2
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.load offset=4
        local.get 2
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.load offset=4
        i32.lt_u
        select
        local.set 5
      end
      local.get 5
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          local.get 6
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.set 4
          br 1 (;@2;)
        end
        local.get 4
        local.get 5
        local.get 2
        local.get 4
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.load offset=4
        local.get 2
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.load offset=4
        i32.lt_u
        select
        local.set 4
      end
      block  ;; label = @2
        local.get 4
        local.tee 4
        local.get 1
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.const 2
        i32.shl
        i32.add
        local.get 2
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        call $swapMinHeapNode
        local.get 4
        local.set 1
        br 1 (;@1;)
      end
    end)
  (func $isSizeOne (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 1
    i32.eq)
  (func $extractMin (type 3) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.get 0
    i32.load
    i32.const -1
    i32.add
    local.tee 1
    i32.store
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store offset=8
    local.get 0
    i32.const 0
    call $minHeapify
    local.get 2)
  (func $insertMinHeap (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    local.get 0
    i32.load
    local.tee 2
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 2
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 4
      local.get 1
      i32.load offset=4
      local.set 5
      local.get 2
      local.set 6
      loop  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 4
          local.get 6
          local.tee 2
          i32.const -1
          i32.add
          i32.const 2
          i32.div_s
          local.tee 3
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee 6
          i32.load offset=4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.set 3
          br 2 (;@1;)
        end
        local.get 4
        local.get 2
        i32.const 2
        i32.shl
        i32.add
        local.get 6
        i32.store
        local.get 3
        local.set 6
        local.get 3
        local.set 3
        local.get 2
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.const 2
    i32.shl
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func $buildMinHeap (type 4) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const -2
      i32.add
      local.tee 1
      i32.const -1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i32.const 2
      i32.div_s
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 2
        local.tee 1
        call $minHeapify
        local.get 1
        i32.const -1
        i32.add
        local.set 2
        local.get 1
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
      end
    end)
  (func $isLeaf (type 3) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      i32.eqz
      local.set 1
    end
    local.get 1)
  (func $createAndBuildMinHeap (type 5) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 3
    call $createMinHeap
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.set 1
      local.get 2
      local.set 2
      local.get 0
      i32.const 8
      i32.add
      local.set 6
      local.get 3
      local.set 7
      loop  ;; label = @2
        local.get 6
        local.tee 6
        local.get 1
        local.tee 1
        i32.load8_s
        local.get 2
        local.tee 2
        i32.load
        local.get 4
        local.get 5
        call $newNode
        i32.store
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 6
        i32.const 4
        i32.add
        local.set 6
        local.get 7
        i32.const -1
        i32.add
        local.tee 8
        local.set 7
        local.get 8
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    call $buildMinHeap)
  (func $buildHuffmanTree (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 2032
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 1624
    i32.add
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 16
    i32.add
    local.get 3
    i32.const 12
    i32.add
    call $createAndBuildMinHeap
    block  ;; label = @1
      local.get 3
      i32.const 1624
      i32.add
      call $isSizeOne
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        i32.const 1624
        i32.add
        call $extractMin
        local.set 2
        i32.const 36
        local.get 3
        i32.const 1624
        i32.add
        call $extractMin
        local.tee 0
        i32.load offset=4
        local.get 2
        i32.load offset=4
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 12
        i32.add
        call $newNode
        local.tee 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        local.get 3
        i32.const 1624
        i32.add
        local.get 1
        call $insertMinHeap
        local.get 3
        i32.const 1624
        i32.add
        call $isSizeOne
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 1624
    i32.add
    call $extractMin
    local.set 2
    local.get 3
    i32.const 2032
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $printCodes (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 2
      i32.shl
      i32.add
      i32.const 0
      i32.store
      local.get 4
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      local.get 3
      call $printCodes
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 2
      i32.shl
      i32.add
      i32.const 1
      i32.store
      local.get 4
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      local.get 3
      call $printCodes
    end
    block  ;; label = @1
      local.get 0
      call $isLeaf
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        local.set 1
        local.get 3
        local.set 4
        local.get 2
        local.set 5
        loop  ;; label = @3
          local.get 4
          local.tee 4
          local.get 0
          i32.load8_u
          i32.const 100
          i32.mul
          i32.add
          local.get 1
          local.tee 1
          i32.load8_u
          i32.const 48
          i32.add
          i32.store8
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 5
          i32.const -1
          i32.add
          local.tee 6
          local.set 5
          local.get 6
          br_if 0 (;@3;)
        end
      end
      local.get 3
      local.get 0
      i32.load8_u
      i32.const 100
      i32.mul
      i32.add
      local.get 2
      i32.add
      i32.const 0
      i32.store8
    end)
  (func $HuffmanCodes (type 8) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 400
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 0
    local.get 1
    local.get 2
    call $buildHuffmanTree
    local.get 5
    i32.const 0
    local.get 4
    call $printCodes
    local.get 5
    i32.const 400
    i32.add
    global.set $__stack_pointer)
  (func $calcFreqs (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 27904
    i32.sub
    local.tee 2
    local.set 3
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 3
      i32.const 25600
      i32.add
      local.get 4
      local.tee 4
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 4
      i32.add
      local.tee 5
      local.set 4
      local.get 5
      i32.const 1024
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 4
      local.get 5
      local.set 5
      loop  ;; label = @2
        local.get 3
        i32.const 25600
        i32.add
        local.get 5
        i32.const 255
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee 5
        local.get 5
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 4
        local.tee 5
        i32.const 1
        i32.add
        local.set 4
        local.get 5
        i32.load8_u
        local.tee 6
        local.set 5
        local.get 6
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 25600
    i32.add
    local.set 6
    i32.const 0
    local.set 4
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.set 5
      local.get 4
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.tee 6
          i32.load
          local.tee 7
          i32.const 1
          i32.ge_s
          br_if 0 (;@3;)
          local.get 4
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        i32.const 27648
        i32.add
        local.get 4
        i32.add
        local.get 5
        i32.store8
        local.get 3
        i32.const 26624
        i32.add
        local.get 4
        i32.const 2
        i32.shl
        i32.add
        local.get 7
        i32.store
        local.get 4
        i32.const 1
        i32.add
        local.set 4
      end
      local.get 6
      i32.const 4
      i32.add
      local.set 6
      local.get 4
      local.tee 8
      local.set 4
      local.get 5
      i32.const 1
      i32.add
      local.tee 7
      local.set 5
      local.get 7
      i32.const 256
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    local.set 9
    local.get 2
    local.get 8
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    i32.sub
    local.tee 10
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 8
    i32.const 2
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    i32.sub
    local.tee 11
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 8
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 27648
      i32.add
      local.set 4
      local.get 10
      local.set 5
      local.get 3
      i32.const 26624
      i32.add
      local.set 6
      local.get 11
      local.set 7
      local.get 8
      local.set 2
      loop  ;; label = @2
        local.get 5
        local.tee 5
        local.get 4
        local.tee 4
        i32.load8_u
        i32.store8
        local.get 7
        local.tee 7
        local.get 6
        local.tee 6
        i32.load
        i32.store
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 6
        i32.const 4
        i32.add
        local.set 6
        local.get 7
        i32.const 4
        i32.add
        local.set 7
        local.get 2
        i32.const -1
        i32.add
        local.tee 12
        local.set 2
        local.get 12
        br_if 0 (;@2;)
      end
    end
    local.get 9
    local.set 9
    local.get 10
    local.get 11
    local.get 8
    local.get 4
    local.get 3
    call $HuffmanCodes
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const 1
      i32.or
      local.set 10
      local.get 4
      local.set 4
      i32.const 0
      local.set 5
      i32.const 0
      local.set 6
      loop  ;; label = @2
        local.get 6
        local.set 7
        local.get 5
        local.set 8
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 4
            i32.const 255
            i32.and
            i32.const 100
            i32.mul
            local.tee 5
            i32.add
            i32.load8_u
            local.tee 6
            br_if 0 (;@4;)
            local.get 7
            local.set 12
            br 1 (;@3;)
          end
          local.get 1
          local.get 7
          i32.const 2
          i32.shl
          i32.add
          local.set 4
          local.get 10
          local.get 5
          i32.add
          local.set 5
          local.get 6
          local.set 6
          local.get 7
          local.set 7
          loop  ;; label = @4
            local.get 4
            local.tee 4
            local.get 6
            i32.extend8_s
            i32.store
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 5
            local.tee 6
            i32.const 1
            i32.add
            local.set 5
            local.get 6
            i32.load8_u
            local.tee 2
            local.set 6
            local.get 7
            i32.const 1
            i32.add
            local.tee 12
            local.set 7
            local.get 12
            local.set 12
            local.get 2
            br_if 0 (;@4;)
          end
        end
        local.get 12
        local.tee 6
        local.set 2
        local.get 0
        local.get 8
        i32.const 1
        i32.add
        local.tee 5
        i32.add
        i32.load8_u
        local.tee 7
        local.set 4
        local.get 5
        local.set 5
        local.get 6
        local.set 6
        local.get 7
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 2
    i32.const 2
    i32.shl
    i32.add
    i32.const 98
    i32.store
    local.get 9
    drop
    local.get 3
    i32.const 27904
    i32.add
    global.set $__stack_pointer)
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
  (export "newNode" (func $newNode))
  (export "createMinHeap" (func $createMinHeap))
  (export "swapMinHeapNode" (func $swapMinHeapNode))
  (export "minHeapify" (func $minHeapify))
  (export "isSizeOne" (func $isSizeOne))
  (export "extractMin" (func $extractMin))
  (export "insertMinHeap" (func $insertMinHeap))
  (export "buildMinHeap" (func $buildMinHeap))
  (export "isLeaf" (func $isLeaf))
  (export "createAndBuildMinHeap" (func $createAndBuildMinHeap))
  (export "buildHuffmanTree" (func $buildHuffmanTree))
  (export "printCodes" (func $printCodes))
  (export "HuffmanCodes" (func $HuffmanCodes))
  (export "calcFreqs" (func $calcFreqs))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__stack_low" (global 3))
  (export "__stack_high" (global 4))
  (export "__global_base" (global 5))
  (export "__heap_base" (global 6))
  (export "__heap_end" (global 7))
  (export "__memory_base" (global 8))
  (export "__table_base" (global 9)))
