## terraform

#### The following steps are necessary:
#### - Install terrafom && aws-cli (if needed)

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

