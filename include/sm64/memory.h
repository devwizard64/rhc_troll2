#ifndef __SM64_MEMORY_H__
#define __SM64_MEMORY_H__

#define MEM_ALLOC_L 0
#define MEM_ALLOC_R 1

#define malloc(size)            heap_alloc(mem_heap, size)
#define free(ptr)               heap_free(mem_heap, ptr)

typedef struct mem_block
{
	struct mem_block *prev;
	struct mem_block *next;
	u64 pad;
}
MEM_BLOCK;

typedef struct mem_frame
{
	size_t size;
	MEM_BLOCK *blockl;
	MEM_BLOCK *blockr;
	struct mem_frame *frame;
}
MEM_FRAME;

typedef struct arena
{
	long size;
	long used;
	char *start;
	char *free;
}
ARENA;

typedef struct heap_block
{
	struct heap_block *next;
	size_t size;
}
HEAP_BLOCK;

typedef struct heap
{
	size_t size;
	HEAP_BLOCK *block;
	HEAP_BLOCK *free;
	u32 pad;
}
HEAP;

typedef struct bank_table
{
	unsigned int len;
	const char *src;
	struct
	{
		unsigned long start;
		unsigned long size;
	}
	table[1];
}
BANK_TABLE;

typedef struct bank
{
	BANK_TABLE *table;
	const char *src;
	char *buf;
}
BANK;

extern uintptr_t segment_table[32];
extern size_t mem_size;
extern char *mem_start;
extern char *mem_end;
extern MEM_BLOCK *mem_blockl;
extern MEM_BLOCK *mem_blockr;
extern HEAP *mem_heap;
extern MEM_FRAME *mem_frame;

extern uintptr_t segment_set(int segment, void *addr);
extern void *segment_get(int segment);
extern void *segment_to_virtual(const void *addr);
extern void *virtual_to_segment(int segment, const void *addr);
extern void segment_write(void);
extern void mem_init(void *start, void *end);
extern void *mem_alloc(size_t size, int mode);
extern size_t mem_free(void *ptr);
extern void *mem_realloc(void *ptr, size_t size);
extern size_t mem_available(void);
extern size_t mem_push(void);
extern size_t mem_pull(void);
extern void mem_dma(char *dst, const char *start, const char *end);
extern void *mem_load(const char *start, const char *end, int mode);
extern void *mem_load_data(
	int segment,
	const char *start,
	const char *end,
	int mode
);
extern void *mem_load_code(char *dst, const char *start, const char *end);
extern void *mem_load_szp(int segment, const char *start, const char *end);
extern void *mem_load_txt(int segment, const char *start, const char *end);
extern void mem_load_ulib(void);
extern ARENA *arena_init(size_t size, int mode);
extern void *arena_alloc(ARENA *arena, long size);
extern void *arena_resize(ARENA *arena, size_t size);
extern HEAP *heap_init(size_t size, int mode);
extern void *heap_alloc(HEAP *heap, size_t size);
extern void heap_free(HEAP *heap, void *ptr);
extern void *gfx_alloc(size_t size);
extern void bank_init(BANK *bank, const char *src, void *buf);
extern int bank_load(BANK *bank, unsigned int index);
extern void slidec(const char *src, char *dst);

#endif /* __SM64_MEMORY_H__ */
