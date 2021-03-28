#!/usr/bin/Rscript

# Installation for precompiled MultiGWAS

# Remove previous installations
cmm = "sed /multiGWAS/d -i  ~/.bashrc"
system (cmm)

# Create multiGWAS profile according to current directory
MULTIGWAS_HOME = strsplit (getwd (), "/install")[[1]][1]
message ("MULTIGWAS_HOME=",MULTIGWAS_HOME)

message ("Creating multiGWAS profile...")
sink (paste0(MULTIGWAS_HOME, "/multiGWAS_profile.sh"), append=F)
writeLines ("\n#------------------- multiGWAS.R profile ---------------------")
writeLines (paste0 ("export MULTIGWAS_HOME=", MULTIGWAS_HOME))
writeLines ("MULTIGWAS_TOOLS=$MULTIGWAS_HOME/opt/tools")
writeLines ("MULTIGWAS_JAVA=$MULTIGWAS_HOME/opt/jre/bin")
writeLines ("MULTIGWAS_MAIN=$MULTIGWAS_HOME/main")
writeLines ("export PATH=$MULTIGWAS_TOOLS:$MULTIGWAS_MAIN:$MULTIGWAS_JAVA:$PATH:")
sink()

# Write into .bashrc
profileFile = paste0 (path.expand ("~"), "/.bashrc")
sink (profileFile, append=T)
writeLines ("\n#------------------- multiGWAS.R tool profile ---------------------")
writeLines (paste0 (". ", MULTIGWAS_HOME, "/multiGWAS_profile.sh"))
sink ()

message ("\n------------------------------------------\n")
message ("Close the terminal to finish the installation process")
message ("Then, open a new terminal and write: ")
message ("multiGWAS")
message ("\n------------------------------------------\n")
