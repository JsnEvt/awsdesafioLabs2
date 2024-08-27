#!/bin/bash


sg_ids=(
    "sg-0a6c8835d649a7243"
    "sg-0c4d15e6828b74075"
    "sg-0716cf24045de3a22"
    "sg-09e680deb2260c2c7"
    "sg-054997ae220f420b9"
    "sg-0aaaabe6792999f28"
    "sg-0fdfd8cd01ba912f9"
    "sg-0261da7c3e064ca7e"
    "sg-025ecb927802d0bcd"
    "sg-0bd65ff95b51b76ca"
    "sg-0e170724349378642"
    "sg-08ed5e60367afb262"
    "sg-0aca9124e7ce9c574"
    "sg-09b26e093d784bb3d"
    "sg-0f5df99d82d1c9c26"
    "sg-0012b30fdd022396d"
    "sg-02724264f324bdf83"
    "sg-03ea44cf0b9dd3207"
    "sg-0d1d3e865900666ba"
    "sg-0baeda3ad1206f5e6"
)

sg_names=(
    "ec2"
    "ssh local"
    "bia-alb"
    "awseb-e-paytmqmrdw-stack-AWSEBSecurityGroup-0MnjPUq2T5wh"
    "awseb-e-5ypitgybwp-stack-AWSEBSecurityGroup-fIKGHsXqxsqC"
    "dev-work-machine"
    "alb-ec2-wordpress"
    "bia-dev"
    "alb"
    "WEB - HTTP"
    "bia-ec2"
    "ec2-efs"
    "bia-build"
    "bia-db"
    "bia-web"
    "acesso-aula-docker-aws"
    "default"
    "bia-beanstalk"
    "launch-wizard-1"
    "wordpress-db"
)


# for sg_id in $(aws ec2 describe-security-groups --query 'SecurityGroups[*].GroupId' --output json); do
#     for sg_name in $(aws ec2 describe-security-groups --query 'SecurityGroups[*].GroupName' --output json); do
# for sg_id in "${sg_ids[@]}"; do
#     for sg_name in $([sg_names[@]]); do
#     echo "Importing security group $sg_id"
#     # terraform import aws_security_group.$gs_names + " " + $sg_id
#     terraform import aws_security_group.$sg_names[@] + " " + $sg_id[@]
#     done
# done

for i in "${!sg_ids[@]}"; do
    sg_id=${sg_ids[$i]}
    sg_name=${sg_names[$i]}
    echo "Importando Security Group $sg_id com o nome $sg_name"
    terraform import aws_security_group.$sg_name $sg_id
done

echo "Importação concluída."
# terraform plan -out=sec_grp
# terraform show -json tfplan > plan.json
# echo "All security groups imported."