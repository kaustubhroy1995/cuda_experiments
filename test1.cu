
#include <stdio.h>
#include <cuda.h>

__global__ void kernel(){
  printf("Hello!");
}

using namespace std;
int main(){
  kernel<<< 1, 32 >>>();
  cudaDeviceSynchronize();
}
