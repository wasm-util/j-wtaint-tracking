int c_func(int x, int y, int z, int a) {
  return x + y + z + a;
}

void b_func(int x, int y, int z) {
  c_func(x, y, z, 10);
}

int a_func(int x, int y) {
  b_func(x, y, 1);
  return 5;
}