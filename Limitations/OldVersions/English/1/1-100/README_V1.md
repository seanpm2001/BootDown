
***

# BootDown docs

## Known limitations

### Total memory

BootDown is a Bootloader extension at a very low boot level, thus it can only access 65,536 bytes of storage for its own usage. Other usage must be read from an existing partition.

### Lack of multi-lingual support

This limit prevents BootDown from doing things like having lots of features, one notable loss is the lack of multi-lingual support. You can only have 1 language at a time. You will have to choose the English version if you speak English, but will need to do a separate installation if you want to choose Esperanto, Spanish, German, etc. I don't even know if Chinese language support is possible with the given constraints, due to the Chinese language being so large and complex (over half of the UTF-16 block is just Chinese radicals

### No Internet support

BootDown isn't a traditional operating system, and is being done at the pre-boot stage. This means it can't access API calls or functions needed to connect to the Internet or run a web browser. Bluetooth isn't available either.

### Features

Features will be split across multiple variants. For example, there will be CLI version A that has a command line plus some features, CLI version B which is the same, but with some other features, GUI version A, which contains a Graphical User Interface and some features, and GUI version B, which is the same, but with some other features, etc.

### Application support

Application support is only available for programs written in x86 Assembly, VHDL, Verilog, or SystemVerilog. C and C++ programs may be possible, but programs written in Python, Java, C#, Go, Kotlin, and many other languages are not supported.

### Other

This is still an experimental project, limitations are still being found.

***

## File info

**File type:** `Markdown document (*.md *.mkd *.markdown)`

**File version:** `1 (Monday, 2021 September 20th at 10:01 pm)`

**Line count (including blank lines and compiler line):** `43`

***
