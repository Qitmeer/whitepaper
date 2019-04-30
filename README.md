# whitepaper
The HalalChain White Paper

# How To Build

### Mac

#### download and install

```
http://tug.org/cgi-bin/mactex-download/BasicTeX.pkg
```

#### run 

```
export PATH=$PATH:/usr/local/texlive/2016basic/bin/x86_64-darwin
sudo tlmgr install appendix
sudo tlmgr update --self
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

Makesure to install cygwin on windows (the `GNU make` installed) before execute `make`.

#### run 
```
make
```
Notice: 
1. You might need to install some additional packages when you at the first-run. (the popup windows of MikTex package manager might ask you to confrim to download and install additioanal packages.)
2. Test ok on the window7 64bit vmbox environment.





