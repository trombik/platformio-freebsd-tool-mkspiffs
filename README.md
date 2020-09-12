# `platformio-freebsd-tool-mkspiffs`

Trick `platformio` so that it thinks `tool-mkspiffs`, a `platformio` package, is
installed.

## Rationale

Same as in
[`trombik/platformio-freebsd-toolchain-xtensa`](https://github.com/trombik/platformio-freebsd-toolchain-xtensa).


## What it does

`init.sh` creates symlinks to the directories where the system package
installed the tool-chain, and creates `package.json`.

## Requirements

Install the following packages.

- `devel/mkspiffs`

Note that `devel/mkspiffs` is not in the official ports tree. You need to
build the package yourself. Here is my port,
[https://github.com/trombik/freebsd-ports-mkspiffs](https://github.com/trombik/freebsd-ports-mkspiffs).

## Usage

```console
cd ~/.platformio/packages
git clone https://github.com/trombik/platformio-freebsd-tool-mkspiffs.git tool-mkspiffs
cd tool-mkspiffs
./init.sh
```

`init.sh` creates symlinks and `package.json`.

## Further improvement

The script should be able to support other OSes, such as OpenBSD as long as a
package for the OS is provided.
