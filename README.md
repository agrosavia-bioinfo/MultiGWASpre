# MultiGWAS with precompiled R libraries and Java runtime (For Ubuntu 20.04)
This installation includes both: precompiled R libraries used by MultiGWAS and a Java runtime environment (JRE).

To install MultiGWAS, follow the instructions below: 

```
1. Open a linux console (or terminal)
2. If not installed, install R (R>=3.6), and git
    sudo apt install r-base-core git 
3. Download or clone the MultiGWAS repository 
    git clone https://github.com/agrosavia-bioinfo/multiGWASpre.git
4. Change to install directory:
    cd install
5. Run the bash script to install the necessary linux packages (it needs sudo privileges).
    sh install-linux-packages.sh
6. Run the R script to install MultiGWAS
    Rscript INSTALL.R
7. Close and open a new terminal, and execute MultiGWAS CLI
    multigwas
8. Open a new terminal and execute MultiGWAS GUI
    jmultigwas


    
```
