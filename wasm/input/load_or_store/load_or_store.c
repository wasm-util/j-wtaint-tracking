int start(int first, int second) {

  volatile int a = first;
  volatile int b = second;

  return a - b;
}