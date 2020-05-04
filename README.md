# Windows Terminal Here Menu Item

A simple way to add a context menu item for Windows to open Windows Terminal.

## Install

* Download the [most recent release][release], start the installer.
* If you've encountered "Windows protected your PC" window, click on "More info"
  and choose "Run anyway."
* Choose options or continue with default options.

## Uninstall

Uninstall normally through "Add or remove programs."

## Upgrade

In order to upgrade this application, you should uninstall an old version
prior to installing a new version.
An upgrade without uninstalling is not supported.

## Build

All you need is an Inno Setup Compiler (or Inno Setup Command-line Compiler).
You can download it from the [official site jrsoftware.org][inno-setup].

Clone the repository. Open the `wt-here-menu.iss` script in the compiler
and build it. If you want to use a command line, add the Inno Setup's
directory to your PATH and call iscc:

```
iscc.exe wt-here-menu.iss
```

## Legal information

This project is licensed under [MIT License][license].

This project uses some parts of [Windows Terminal][wt-license].

Project inspired by [shanselman/WindowsTerminalHere][inspired].

[release]: https://github.com/rensatsu/windows-terminal-here/releases/latest
[license]: https://github.com/rensatsu/windows-terminal-here/blob/master/LICENSE
[wt-license]: https://github.com/microsoft/terminal/blob/a6a8937af7af1f98f7e0888b4b10cf5adf057990/LICENSE
[inspired]: https://github.com/shanselman/WindowsTerminalHere
[inno-setup]: https://jrsoftware.org/isdl.php
