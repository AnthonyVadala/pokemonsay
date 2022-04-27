import os
import requests
from pokedex import national

def downloadFile(url, fileName, subdir='images'):
	this_dir = os.path.dirname(os.path.abspath(__file__))
	dest_dir = os.path.join(this_dir, subdir)
	# Does not raise error if exists
	os.makedirs(dest_dir, exist_ok=True)
	# Directory path + file name
	path = os.path.join(dest_dir, fileName)

	file = open(path, 'wb')
	print('Donwnloading [', fileName, '] from -> ', url)
	file.write(requests.get(url).content)
	file.close()

	return True

def main():
	for pokemon in national:
		# A suffix is needed for Pokémon with regional variants
		suffix = pokemon[0].split('/')[-1]
		downloadFile(pokemon[0], pokemon[1] + '_' + suffix)

if __name__ == "__main__":
	main()
