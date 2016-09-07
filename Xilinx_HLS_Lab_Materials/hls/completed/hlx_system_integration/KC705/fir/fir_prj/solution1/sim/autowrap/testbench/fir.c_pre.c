# 1 "C:/training/hls/labs/hlx_flow/KC705/fir/fir.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/training/hls/labs/hlx_flow/KC705/fir/fir.c"
# 1 "C:/training/hls/labs/hlx_flow/KC705/fir/fir.h" 1
# 11 "C:/training/hls/labs/hlx_flow/KC705/fir/fir.h"
typedef int coef_t;
typedef int data_t;
typedef int acc_t;


void fir (
  data_t *y,
  data_t x
  );
# 2 "C:/training/hls/labs/hlx_flow/KC705/fir/fir.c" 2

void fir (
  data_t *y,
  data_t x
  ) {

  const coef_t c[11] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
  static data_t shift_reg[11];
  acc_t acc;
  int i;

  acc=0;
  Shift_Accum_Loop: for (i=11 -1;i>=0;i--) {
     if (i==0) {
       acc+=x*c[0];
       shift_reg[0]=x;
     } else {
   shift_reg[i]=shift_reg[i-1];
   acc+=shift_reg[i]*c[i];
     }
  }
  *y=acc;
}
