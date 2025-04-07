#define SHADOW_OFFSET 20000

void bitwise_or(int *first, int *second, int *third) {
    int a = *first;
    int taint_a = *((int*)((char*)first + SHADOW_OFFSET));

    int b = *second;
    int taint_b = *((int*)((char*)second + SHADOW_OFFSET));

    int result = a | b;
    int taint_result = taint_a | taint_b;

    *third = result;
    *((int*)((char*)third + SHADOW_OFFSET)) = taint_result;
}

int start(int first, int second) {

    int *shadow_first = (int*)((char*)&first + SHADOW_OFFSET);
    int *shadow_second = (int*)((char*)&second + SHADOW_OFFSET);
    *shadow_first = 1;
    *shadow_second = 0;

    int third = 0;
    bitwise_or(&first, &second, &third);
    return third;
}