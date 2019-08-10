#!/usr/bin/env python3

import sys, shutil, os

#SRCDIR='/home/tablet/a86_system_mnt_0/'
#DESTDIR='/home/tablet/android/lineage_16.0.bak1/vendor/asus/A86/proprietary/'
SRCDIR='/home/chris/gaming_mnt1/home/tablet/a86_system_mnt_0/'
DESTDIR='/home/chris/gaming_mnt1/home/tablet/android/lineage_16.0.bak1/vendor/asus/A86/proprietary/'

def parse_file(fn):
    with open(fn, 'rt') as fp:
        for line in fp:
            line = line.strip()
            if (not line or line.startswith('#')):
                continue
            if (line.startswith('-')):
                line = line[1:]
            line = line.strip()
            line = line.split('|')[0]
            #print(line)
            fnarr = line.split(':')
            if (len(fnarr) == 1):
                src = dest = fnarr[0]
            elif (len(fnarr) == 2):
                src, dest = fnarr
            else:
                print('Invalid line', repr(line))
                exit(1)
            dest = f'{DESTDIR}{dest}'
            destdirname = os.path.dirname(dest)
            os.makedirs(destdirname, exist_ok=True)
            shutil.copy2(f'{SRCDIR}{src}', dest, follow_symlinks=False)
            
            


files = sys.argv[1:]

for fn in files:
    parse_file(fn)


