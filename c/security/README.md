# 버퍼오버플로우 취약한 함수들

``` c
strcpy(char *dest, const char *src);
```

``` c
strcat(char *dest, const char *src);
```

``` c
getwd(char *buf);
```

``` c
gets(char *s);
```

``` c
fscanf(FILE *stream, const char *format, ~);
```

``` c
scanf(const char *format,~);
```

``` c
realpath(char *path, char resolved_path[]);
```

``` c
sprintf(char *str, const char *format);
```