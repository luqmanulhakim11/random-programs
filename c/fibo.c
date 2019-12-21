#include<stdio.h>

int fibo(int g) {
  if (g == 0) {
    return 0;
  }

  if (g == 1) {
    return 1;
  }
  return fibo(g - 1) + fibo(g - 2);
}

int main(void) {
  int g = 0;
  char a;
  do {
      printf("\nNumbers are: %d \t ", fibo(g));
      g++;
  } while ((a = getchar()) != '0');
  return 0;
}
