# cloudbuild-tf
Provisioning infra for GCP using terraform and cloud build 

# GIT command used

- git init - Initialize a local Git repository
- git clone URL - Create a local copy of a remote repository
 
- git branch -a - List branches
 
- git branch [branch name] - Create a new branch
- git checkout [branch name] - Switch to a branch
 
 add the codes..
 
- git add . / git add -A
- git commit -m "message"
- git push origin <branchname>
 
 cide pushed to sub branch.
 
- git checkout <masterbranch> - change to masterbranch
- git merge <sub branch> - merge sub branch code to master branch
- git push origin <master branch> - push the commit to master branch

==========================

# **Create 2 folders**

	- Environment (contains dev, qa, prod)
	- Modules (contains vpc, firewall, vm instance template, server using template, mig)


Environment - This folder which contains env specific terraform file (main.tf) which will be executed first and invoke module folders which contains code for creation of voc, firewall and vm.

Modules - Code for VPC, VM.

===============================

# **Commands used**

- terraform init - initialize the package of terraform version and terraform lockstate will get created.
- terraform plan - shows what all gng to be added or removed in the existing infra using terraform.tfstate file.
- terraform apply - Apply thr new code
- terraform destroy - Destry all the codes.

==============================


# **Files used**

- main.tf - 1st file to be executed and take the necessary action items.
- provider.tf - contains the terraform version, provider version and backend used (eg: GCS which is used to store the terraform lock state file)
- outputs.tf - Print the outputs which we defined from other tf files.
- variables.tf - contains variables declaration 
- terrafomr.tfvars - contains variable values.


