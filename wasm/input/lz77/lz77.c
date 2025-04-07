#define WINDOW_SIZE 64
#define BUFFER_SIZE 16

unsigned int lz77_compress(const char *input, unsigned int input_length, char *output) {
    unsigned int pos = 0;
    unsigned int out_pos = 0;
    while (pos < input_length) {
        int best_offset = 0, best_length = 0;
        char next_char = input[pos];
        for (int offset = 1; offset <= WINDOW_SIZE && pos >= offset; offset++) {
            int match_length = 0;
            while (match_length < BUFFER_SIZE &&
                   pos + match_length < input_length &&
                   input[pos - offset + match_length] == input[pos + match_length]) {
                match_length++;
            }
            if (match_length > best_length) {
                best_length = match_length;
                best_offset = offset;
                if (pos + best_length < input_length) {
                    next_char = input[pos + best_length];
                } else {
                    next_char = '\0';
                }
            }
        }
        output[out_pos++] = (char)best_offset;
        output[out_pos++] = (char)best_length;
        output[out_pos++] = next_char;
        pos += best_length + 1;
    }
    return out_pos;
}