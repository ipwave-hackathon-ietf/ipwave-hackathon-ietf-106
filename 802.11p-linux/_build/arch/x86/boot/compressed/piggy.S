.section ".rodata..compressed","a",@progbits
.globl z_input_len
z_input_len = 6486794
.globl z_output_len
z_output_len = 21231800
.globl z_extract_offset
z_extract_offset = 0xe22000
.globl z_extract_offset_negative
z_extract_offset_negative = -0xe22000
.globl z_run_size
z_run_size = 22335488
.globl input_data, input_data_end
input_data:
.incbin "arch/x86/boot/compressed/vmlinux.bin.gz"
input_data_end:
