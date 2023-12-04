#include <stdio.h>

int binarysearch(int * arr, int size, int key)
{
	int i,L=0,H=size-1,mid;
	mid=(L+H)/2;
	while(H>=L)
	{
		mid=(L+H)/2;
		if(arr[mid]>key){ H=mid-1;}
		else if(arr[mid]<key) {L=mid+1;}
		else {return mid;}
		
	}
	return -1;
}
void main()
{
	int arr[10]= {5,4,7,8,9,3,2,54,14,84};
	int key = 54;
	int index = binarysearch(arr,10,key);
	if (index == -1) {printf("The num not found");}
	else {printf("The num found in index = %d",index);}	
}
