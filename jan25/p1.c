#include <stdio.h>
#include <stdlib.h>

#define HOLE 0
#define OCC 1
#define HEAD 2
#define TRUE 1
#define FALSE 0

typedef struct node {
	char name;
	int status; // 0 => hole, 1 => occupied, 2 => head
	int size;
	struct node *next;
}node;

void insertNode(node *prev, int status, int size, char name){
	node *newNode = malloc(sizeof(node));
	newNode->status = status;
	newNode->name = name;
	newNode->size = size;
	newNode->next = prev->next;
	prev->next = newNode;
}

void appendNode(node *head, int status, int size, char name)
{
	node *newNode = malloc(sizeof(node));
	newNode->status = status;
	newNode->name = name;
	newNode->size = size;
	newNode->next = NULL;
	
	while(head->next != NULL)
	{
		head = head->next;		
	}

	head->next = newNode;
}

node *createList()
{
	node *head = malloc(sizeof(node));
	head->name = '@';
	head->status = HEAD;
	head->size = 0;
	head->next = NULL;

	appendNode(head, OCC, 50, 'X');
	appendNode(head, HOLE, 75, '0');
	appendNode(head, OCC, 150, 'Y');
	appendNode(head, HOLE, 175, '0');
	appendNode(head, OCC, 300, 'Z');

	return head;
}

void firstFit(int n, int *nodes, node *head)
{
	node *trav = head;
	char name = 'A';
	for(int i = 0; i < n; i++)
	{
		while(trav != NULL)
		{
			if(trav->status == HOLE && trav->size >= nodes[i])
			{
				int diff = trav->size - nodes[i];
				trav->status = OCC;
				trav->size = nodes[i];
				trav->name = name++;
				if(diff)
				{
					insertNode(trav, HOLE, diff, '0');
				}
				break;
			}
			trav = trav->next;
		}
		trav = head;
	}
}

void worstFit(int n, int *nodes, node *head)
{
	node *trav = head;
	int maxSize = 0;
	node *maxNode = NULL;
	char name = 'A';
	for(int i = 0; i < n; i++)
	{
		while(trav != NULL)
		{
			if(trav->status == HOLE && trav->size >= nodes[i] && trav->size >= maxSize)
			{
				maxSize = trav->size;	
				maxNode = trav;
			}
			//break;
			trav = trav->next;				
			
		}
		int diff = maxNode->size - nodes[i];
		maxNode->status = OCC;
		maxNode->size = nodes[i];
		maxNode->name = name++;
		if(diff)
		{
			insertNode(maxNode, HOLE, diff, '0');
		}
		maxSize = 0;
		trav = head;
	}
}

void bestFit(int n, int *nodes, node *head)
{
	node *trav = head;
	char name = 'A';
	node *bestNode = head;
	
	
	trav = head;
	int found = FALSE;

	for(int i = 0; i < n; i++)
	{
		//found = FALSE;

		while(trav != NULL)
		{
			if(trav->status == HOLE && trav->size >= nodes[i])
			{
				bestNode = trav;
				break;
			}
			trav = trav->next;
		}

		trav = bestNode->next;

		while(trav != NULL)
		{
			if(trav->status == HOLE && trav->size >= nodes[i] && (trav->size < bestNode->size))
			{
				bestNode = trav;
				//found = TRUE;				
			}
			trav = trav->next;
		}
		if(bestNode)
		{	int diff = bestNode->size - nodes[i];
			bestNode->status = OCC;
			bestNode->size = nodes[i];
			bestNode->name = name++;
			if(diff)
			{
				insertNode(bestNode, HOLE, diff, '0');
			}
		}		
		trav = head;
	}
}

void printList(node *head)
{
	node *trav = head;
	while(trav)
	{
		printf("%c:%d -> ", trav->name, trav->size);
		trav = trav->next;
	}
	printf("END\n");
}

int main(int argc, char *argv[])
{
	node *head = createList();
	printf("\nInitially, the list is:\n\n");
	printList(head);	
	printf("\n");
	int nNodes = argc - 1;
	int nodes[argc - 1];
	for(int i = 0; i < nNodes; i++)
	{
		nodes[i] = atoi(argv[i + 1]);
	}
	
	printf("Enter strategy:\n");
	printf("1 - First fit\n2 - Best fit\n3 - Worst fit\n");
	int ch;
	scanf("%d", &ch);
	switch(ch)
	{
		case 1:
			firstFit(nNodes, nodes, head);
			break;
		case 2:
			bestFit(nNodes, nodes, head);
			break;			
		case 3:
			worstFit(nNodes, nodes, head);
			break;
		default:
			printf("Invalid!");
			break;
	}
	
	printList(head);

	return 0;
}