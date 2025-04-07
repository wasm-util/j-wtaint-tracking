void compressRLE(char *input, char *output) {
    int count = 1;
    char current = input[0];
    int outIndex = 0;

    for (int i = 1; input[i] != '\0'; i++) {
        if (input[i] == current) {
            count++;
        } else {
            output[outIndex++] = current;
            output[outIndex++] = count + '0';
            current = input[i];
            count = 1;
        }
    }
    output[outIndex++] = current;
    output[outIndex++] = count + '0';
    output[outIndex] = '\0';
}