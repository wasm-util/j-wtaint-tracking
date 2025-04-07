// A Huffman tree node
struct MinHeapNode {

    // One of the input characters
    char data;

    // Frequency of the character
    unsigned freq;

    // Left and right child of this node
    struct MinHeapNode *left, *right;
};

// A Min Heap: Collection of
// min-heap (or Huffman tree) nodes
struct MinHeap {

    // Current size of min heap
    unsigned size;

    // capacity of min heap
    unsigned capacity;

    // Array of minheap node pointers
    struct MinHeapNode* array[100];
};

struct MinHeapNode* newNode(char data, unsigned freq, struct MinHeapNode nodes[], int* nodeIndex)
{
    struct MinHeapNode* temp = &nodes[(*nodeIndex)++];
    temp->left = temp->right = 0;
    temp->data = data;
    temp->freq = freq;
    return temp;
}

void createMinHeap(struct MinHeap* minHeap, unsigned capacity)
{
    minHeap->size = 0;
    minHeap->capacity = capacity;
}

void swapMinHeapNode(struct MinHeapNode** a, struct MinHeapNode** b)
{
    struct MinHeapNode* t = *a;
    *a = *b;
    *b = t;
}

void minHeapify(struct MinHeap* minHeap, int idx)
{
    int smallest = idx;
    int left = 2 * idx + 1;
    int right = 2 * idx + 2;

    if (left < minHeap->size && minHeap->array[left]->freq < minHeap->array[smallest]->freq)
        smallest = left;

    if (right < minHeap->size && minHeap->array[right]->freq < minHeap->array[smallest]->freq)
        smallest = right;

    if (smallest != idx) {
        swapMinHeapNode(&minHeap->array[smallest], &minHeap->array[idx]);
        minHeapify(minHeap, smallest);
    }
}

int isSizeOne(struct MinHeap* minHeap)
{
    return (minHeap->size == 1);
}

struct MinHeapNode* extractMin(struct MinHeap* minHeap)
{
    struct MinHeapNode* temp = minHeap->array[0];
    minHeap->array[0] = minHeap->array[minHeap->size - 1];
    --minHeap->size;
    minHeapify(minHeap, 0);
    return temp;
}

void insertMinHeap(struct MinHeap* minHeap, struct MinHeapNode* minHeapNode)
{
    ++minHeap->size;
    int i = minHeap->size - 1;

    while (i && minHeapNode->freq < minHeap->array[(i - 1) / 2]->freq) {
        minHeap->array[i] = minHeap->array[(i - 1) / 2];
        i = (i - 1) / 2;
    }

    minHeap->array[i] = minHeapNode;
}

// A standard function to build min heap
void buildMinHeap(struct MinHeap* minHeap)

{

    int n = minHeap->size - 1;
    int i;

    for (i = (n - 1) / 2; i >= 0; --i)
        minHeapify(minHeap, i);
}

// Utility function to check if this node is leaf
int isLeaf(struct MinHeapNode* root)

{

    return !(root->left) && !(root->right);
}

void createAndBuildMinHeap(struct MinHeap* minHeap, char data[], int freq[], int size, struct MinHeapNode nodes[], int* nodeIndex)
{
    createMinHeap(minHeap, size);
    for (int i = 0; i < size; ++i)
        minHeap->array[i] = newNode(data[i], freq[i], nodes, nodeIndex);
    minHeap->size = size;
    buildMinHeap(minHeap);
}

struct MinHeapNode* buildHuffmanTree(char data[], int freq[], int size)
{
    struct MinHeapNode *left, *right, *top;
    struct MinHeap minHeap;
    struct MinHeapNode nodes[100];
    int nodeIndex = 0;
    createAndBuildMinHeap(&minHeap, data, freq, size, nodes, &nodeIndex);

    while (!isSizeOne(&minHeap)) {
        left = extractMin(&minHeap);
        right = extractMin(&minHeap);
        top = newNode('$', left->freq + right->freq, nodes, &nodeIndex);
        top->left = left;
        top->right = right;
        insertMinHeap(&minHeap, top);
    }

    return extractMin(&minHeap);
}

// Prints huffman codes from the root of Huffman Tree.
// It uses arr[] to store codes
void printCodes(struct MinHeapNode* root, int arr[],
                int top, char table[256][100])

{

    if (root->left) {

        arr[top] = 0;
        printCodes(root->left, arr, top + 1, table);
    }

    if (root->right) {

        arr[top] = 1;
        printCodes(root->right, arr, top + 1, table);
    }

    if (isLeaf(root)) {

        for (int i = 0; i < top; i++) {
            table[(unsigned char)root->data][i] = '0' + arr[i];
        }
        table[(unsigned char)root->data][top] = '\0';
    }
}

void HuffmanCodes(char data[], int freq[], int size, int output[], char table[256][100])

{
    // Construct Huffman Tree
    struct MinHeapNode* root
        = buildHuffmanTree(data, freq, size);

    // Print Huffman codes using
    // the Huffman tree built above
    int top = 0;
    int arr[100];
    int outputIndex = 0;


    printCodes(root, arr, top, table);
}

void calcFreqs(char input[], int output[]) {
    int s2 = 0;
    char data[256];
    int f2[256];
    int count[256];
    for (int i = 0; i < 256; i++) {
        count[i] = 0;
    }

    for (int i = 0; input[i] != '\0'; i++) {
        count[(unsigned char)input[i]]++;
    }

    for (int i = 0; i < 256; i++) {
        if (count[i] > 0) {
            data[s2] = (char)i;
            f2[s2] = count[i];
            (s2)++;

        }
    }

    char arr[s2];
    int freq[s2];

    for (int i = 0; i < s2; i++) {
        arr[i] = data[i];
        freq[i] = f2[i];
    }

    int size = sizeof(arr) / sizeof(arr[0]);

    char table[256][100];

    HuffmanCodes(arr, freq, size, output, table);

    int index = 0;
    for (int i = 0; input[i] != '\0'; i++) {
        char *code = table[(unsigned char)input[i]];
        while (*code) {
            output[index++] = *code++;
        }
    }
    output[index] = 'b';
}