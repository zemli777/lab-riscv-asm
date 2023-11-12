#include <stdio.h>

#define N 5
#define M 4

int process(int n, int m, int matrix [M][N], int result)
{   
    result = matrix[0][0];
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < n; ++j) {
            if (result > matrix[i][j]) {
                result = matrix[i][j];
                //printf("%d ", result);
            } 
        }
    }
    return result;

}

int main(int argc, char** argv)
{
    int matrix[M][N];
    int result;
    
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {   
            scanf("%d", &matrix[i][j]);
        }
    }

    
    result = process(N, M, matrix, result);

    printf("%d ", result);
    
    return 0;
}
