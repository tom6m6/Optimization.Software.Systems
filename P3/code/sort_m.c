/**
 * Copyright (c) 2012 MIT License by 6.172 Staff
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 **/


#include "./util.h"

// Function prototypes
static void merge_m(data_t* A, int p, int q, int r);
static void copy_m(data_t* source, data_t* dest, int n);
extern void isort(data_t* begin, data_t* end);
// A basic merge sort routine that sorts the subarray A[p..r]
void sort_m(data_t* A, int p, int r) {
  assert(A);
  int a=16;
  if (p < r) {
    if((r-p)<=a){
      isort(A+p,A+r);
      return;
    }
    int q = (p + r) / 2;
    sort_m(A, p, q);
    sort_m(A, q + 1, r);
    merge_m(A, p, q, r);
  }
}

// A merge routine. Merges the sub-arrays A [p..q] and A [q + 1..r].
// Uses two arrays 'left' and 'right' in the merge operation.
static void merge_m(data_t* A, int p, int q, int r) {
  assert(A);
  assert(p <= q);
  assert((q + 1) <= r);
  int n1 = q - p + 1;
  //int n2 = r - q;
  
  //data_t* left = 0, * right = 0;
  data_t* buffer=0;
  //mem_alloc(&left, n1 + 1);
  //mem_alloc(&right, n2 + 1);
  mem_alloc(&buffer,n1 + 1);
  
  /*
  if (left == NULL || right == NULL) {
    mem_free(&left);
    mem_free(&right);
    return;
  }
  */
  if(buffer==NULL){
    mem_free(&buffer);
    return;
  }
  //copy_m(&(A[p]), left, n1);
  copy_m(&(A[p]), buffer, n1);
  //copy_m(&(A[q + 1]), right, n2);
  //left[n1] = UINT_MAX;
  //right[n2] = UINT_MAX;

  buffer[n1]=UINT_MAX;
  //int i = 0;
  //int j = 0;
  data_t* LEFT=buffer;
  data_t* RIGHT=A+q;
  
 /*
  for (int k = p; k <= r; k++) {
    if (left[i] <= right[j]) {
      A[k] = left[i];
      i++;
    } else {
      A[k] = right[j];
      j++;
    }
  }
  */
  for(data_t* Ai=A+p;Ai<=A+r;Ai++){
    if(*LEFT <= *RIGHT){
      *Ai=*LEFT;
      LEFT++;
    }
    else{
      *Ai=*RIGHT;
      RIGHT++;
    }
  }
  
  //mem_free(&left);
  //mem_free(&right);
  mem_free(&buffer);
}

static void copy_m(data_t* source, data_t* dest, int n) {
  assert(dest);
  assert(source);

  for (int i = 0 ; i < n ; i++) {
    dest[i] = source[i];
  }
}