## terraform

#### The following steps are necessary:
#### - Install terrafom && aws-cli && ssh-keygen (if needed)
#### - Check terraform && aws-cli

```
terraform version
aws --version
```

#### - Probe your aws secrets
```
ls ~/.aws
```

#### - List configured profile
```
aws configure list --profile <your-profile-name>
```

#### - Probe connection to aws api
```
aws ec2 describe-regions --profile <your-profile-name>
```

#### - You have to pull these repository
```
git clone --branch feature/1_step https://github.com/git67/tf3terraform.git ./1_step
cd ./1_step
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

#### - Lookup your environment by aws cli
```
aws ec2 describe-vpcs --vpc-ids <you get the id from terraform output> --profile <your awc cli profile>
```

#### - Remove your deployment
```
terraform destroy -auto-approve
```

