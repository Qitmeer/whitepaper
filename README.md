# whitepaper
The Qitmeer White Paper

# How To Build

### Mac

#### download and install

go to [http://www.tug.org/mactex/mactex-download.html](http://www.tug.org/mactex/mactex-download.html) download and install the latest `MacTeX.pkg` file

```
http://tug.org/cgi-bin/mactex-download/MacTeX.pkg
```

#### run 

```
make
```

### Windows

#### download and install

go to [https://miktex.org/download](https://miktex.org/download)
Download & install miktex binary for windows platfrom. 
```
http://ctan.sharelatex.com/tex-archive/systems/win32/miktex/setup/basic-miktex-2.9.6361-x64.exe
```
A windows installation tutorial:  [https://miktex.org/howto/install-miktex](https://miktex.org/howto/install-miktex)

Make sure to install cygwin on windows (the `GNU make` installed) before execute `make`.

#### run 
```
make
```
Notice: 
1. You might need to install some additional packages when you at the first-run. (the popup windows of MikTex package manager might ask you to confirm to download and install additional packages.)
2. Test ok on the window7 64bit vmbox environment.





