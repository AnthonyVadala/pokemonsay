# Build/Update Instructions

Download img2xterm to the `build` directory

```sh
$ git clone https://github.com/denilsonsa/img2xterm.git
```

Install [libpng](http://www.libpng.org/pub/png/libpng.html) for image reading, [imagemagick](https://imagemagick.org) for the `convert` command in `make_cows.sh`, rename for use in the `build.sh` script.

```sh
$ brew install libpng
$ brew install imagemagick
$ brew install rename
```

Build img2xterm
```sh
$ cd img2xterm
$ make
$ sudo make install
```

Create a Python virtual environment
```sh
python3 -m venv pokemonsay-build
```

Activate the virtual enviroment
```sh
source pokemonsay-build/bin/activate
```

Install required Python modules
```sh
pip3 install requests
pip3 install bs4
pip3 install tqdm
```

Download images
```sh
python3 download_pokemon.py
```

Trim images
```sh
./fix_images.sh
```

Convert images to.cows
```sh
./make_cows.sh
```

Lowercase Cows
```sh
cd cows
autoload zmv
zmv -vQ '(**/)(?)(*.cow)(.)' '$1${(L)2}$3'
```

Deactivate Python virtual environment
```sh
deactivate
```

Delete the root `/cows` folder and then copy the `/cows` folder from the `/build/` directory to the repository root