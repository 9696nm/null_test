#include <stdio.h>
#include <errno.h>

int	main(void)
{
	int	ret;
	int	errnum;
	
	printf("Start\n");

	errno = 0;
	ret = printf("%s\n", NULL);  // 未定義動作
	errnum = errno;
	printf("ret:%i errno:%i\n", ret, errnum);

	errno = 0;
	ret = printf(NULL);  // 未定義動作
	errnum = errno;
	printf("ret:%i errno:%i\n", ret, errnum);

	printf("End\n");
	return 0;
}
