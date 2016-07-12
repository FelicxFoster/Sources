#include <stdio.h>
#include <stdlib.h>

int main( int argc, char *argv[] )
{
    FILE *in, *out;
    int ch;   //!

    if( argc != 3 )
    {
        fprintf( stderr, "输入形式：copyFile.exe 原文件名 目标文件名\n");
        exit( EXIT_FAILURE );
    }

    if( ( in=fopen(argv[1], "rb") ) == NULL )
    {
        fprintf( stderr, "打不开文件：%s\n", argv[1] );
        exit( EXIT_FAILURE );
    }

    if( (out=fopen(argv[2], "wb") ) == NULL )
    {
        fprintf( stderr, "打不开文件：%s\n", argv[2] );
        fclose(in);         //记得擦屁股
        exit( EXIT_FAILURE );
    }

    while( (ch=getc(in)) != EOF )  //end of file
    {
        if( putc(ch ,out) == EOF )
        {
            break;
        }
    }

    if( ferror( in ) )
    {
        printf("读取文件%s失败！\n", argv[1] );
    }

    if( ferror( out ) )
    {
        printf("写入文件%s失败！\n", argv[2] );
    }

    printf("成功复制一个文件！\n");

    fclose( in );
    fclose( out );

    system("pause");
    return 0;
}
