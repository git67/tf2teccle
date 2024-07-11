![Terraform Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Terraform_Logo.svg/1024px-Terraform_Logo.svg.png?20181016201549)

The examples provided are intended for illustrative simple purposes to facilitate an introductory understanding of Terraform.

#### - Probe connection to aws api
```
aws ec2 describe-regions --profile <your-profile-name>
```

#### - You have to pull these repository
```
git clone --branch main https://github.com/git67/tf4teccle.git 
```

###### - Place your profile name into main.tf:
```
...
  default = "<your aws cli profile>"
...
```

#### - Initialisation of terraform environment
```
terraform init
```

#### - Probe your terraform code
```
terraform validate
terraform plan
```

#### - Run terraform without any interaction
```
terraform apply -auto-approve
```

#### - Remove your deployment
```
terraform destroy -auto-approve
```
