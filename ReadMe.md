# VS Code Template for C64 Assembly Programming Using Kick Assembler

This VS Code template is intended to be used with the [Kick Assembler Studio](https://marketplace.visualstudio.com/items?itemName=sanmont.kickass-studio) extension by [SanMont](https://marketplace.visualstudio.com/publishers/sanmont). It may also work with other extensions since Kick Assembler Studio debugging/language server seems currently broken and the tasks in `tasks.json` are self-contained/independent.

Kick Assembler resources: [Kick Assembler Homepage](http://www.theweb.dk/KickAssembler/)

Use `Ctrl+Shift+P` then `Tasks: Run Test Task` to automatically build and launch VICE. Use `Ctrl+Shift+B` to build a `.prg` in the `build` directory only.

See `.vscode/tasks.json` for setting your OS' path to the VICE binary as well as your paths to the `java` binary and `KickAss.jar`.

Source code should go into the `src` directory for structuring purposes.

(C) 2023 by [DarkLord79at](https://github.com/DarkLord79at) ([prof79](https://github.com/prof79)) of [VCC](https://logiker.com/vcc). The template itself is "unlicensed" 🙂.
