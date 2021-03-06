/*Лабораторна робота №1
з дискретних структур даних
студента групи КП-52 Шароварського Костянтинв*/
#include "matrix.h"
#include <stdlib.h>
static matrix_t * get_identity_matrix(size_t size)
{
    int identity[size][size];
    for(int i = 0; i < size; i++)
        for(int k = 0; k < size; k++)
            identity[i][k] = k == i ? 1 : 0;
    return matrix_new(size, size, identity);
}
matrix_t * lab1_get_paths_at_length(matrix_t * con_mat, int length)
{
    if(con_mat->size_1 != con_mat->size_2)
        return NULL;

    matrix_t * next_con =con_mat;
    if(length == 1)
        return matrix_new(con_mat->size_1, con_mat->size_2, con_mat->matrix);
    for(int i = 0; i < length - 1; i++)
    {
        matrix_t * prev_con = next_con;
        next_con = matrix_multiply(next_con, con_mat);
        if(i!= 0)
            free(prev_con);
    }
    return next_con;
}

matrix_t * lab1_get_reachability(matrix_t * con_mat)
{
    if(con_mat->size_1 != con_mat->size_2)
        return NULL;

    matrix_t * connections = get_identity_matrix(con_mat->size_1);
    for(int i = 1; i < con_mat->size_1; i++)
    {
        matrix_t * prev_con = connections;
        matrix_t * con_length_mat = lab1_get_paths_at_length(con_mat, i);
        connections = matrix_add(connections, con_length_mat);
        free(con_length_mat);
        free(prev_con);
    }
    int size = connections->size_1 * connections->size_2;
    for(int i = 0; i < size; i++)
        connections->matrix[i] = connections->matrix[i] > 0 ? 1 : 0;
    return connections;
}

int lab1_cycles_paths(matrix_t * con_mat, int vertex)
{
    int size = con_mat->size_1;
    if(size != con_mat->size_2)
        return 0;
    if(vertex > size || vertex < 0)
        return 0;

    int vertex_cycles = 1;
    for(int i = 1; i < size - 1; i++)
    {
        matrix_t * paths = lab1_get_paths_at_length(con_mat, i);
        vertex_cycles += paths->matrix[(vertex - 1) * size + vertex - 1];
        free(paths);
    }
    return vertex_cycles;
}
matrix_t * lab1_square_diagonal(matrix_t * con_mat)
{
    matrix_t * reachability = lab1_get_reachability(con_mat);
    matrix_t * reachability_trans = matrix_transpose(reachability);
    matrix_t * sq_dia = matrix_multiply_elwise(reachability, reachability_trans);
    free(reachability_trans);
    free(reachability);
    return sq_dia;
}
matrix_t * lab1_get_paths(matrix_t * con_mat)
{
    int con_size = con_mat->size_1;
    int temparr[con_size * con_size];
    for(int i = 0; i < con_size*con_size; i++)
        temparr[i] = 0;
    matrix_t * cur_paths = matrix_new(con_size, con_size, temparr);
    for(int k = 1; k < con_size; k++)
    {
        matrix_t * con_length_mat = lab1_get_paths_at_length(con_mat, k);
        for(int i = 0; i < con_size; i++)
            for(int j = 0; j < con_size; j++)
                if(i != j && con_length_mat->matrix[i*con_size + j] != 0 && cur_paths->matrix[i*con_size + j] == 0)
                    cur_paths->matrix[i*con_size + j] = k;
        free(con_length_mat);
    }
    return cur_paths;
}
