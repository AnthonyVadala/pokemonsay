## Build/Update Instructions

Download img2xterm to the `build` directory

```
$ git clone https://github.com/denilsonsa/img2xterm.git
```

Install [libpng](http://www.libpng.org/pub/png/libpng.html) for image reading, [imagemagick](https://imagemagick.org) for the `convert` command in `make_cows.sh`, rename for use in the `build.sh` script.

```
$ brew install libpng
$ brew install imagemagick
$ brew install rename
```

Build img2xterm

```
$ cd img2xterm
$ make
$ sudo make install
```

Run `build.sh` to download and convert Pokémon images into `.cow` format and move them into the repo's `cows` directory for distribution

```
$ ./build
```

Finished!