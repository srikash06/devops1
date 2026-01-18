#!/bin/bash

############################
# Author: Srikash
# Date: 07/01/2026
# 
# Version: v1
#
# This script will resource the aws resource usuage
# ###########################

# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM users

set -x

#!/bin/bash

# AWS S3 Buckets
echo "=== print list of S3 buckets ===" >> /home/ubuntu/srikash/AwsTracker/resourceTracker
aws s3 ls >> /home/ubuntu/srikash/AwsTracker/resourceTracker

# AWS EC2 Instances
echo "=== print list of EC2 instance IDs ===" >> /home/ubuntu/srikash/AwsTracker/resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/ubuntu/srikash/AwsTracker/resourceTracker

# AWS Lambda Functions
echo "=== print list of Lambda functions ===" >> /home/ubuntu/srikash/AwsTracker/resourceTracker
aws lambda list-functions >> /home/ubuntu/srikash/AwsTracker/resourceTracker

# AWS IAM Users
echo "=== print list of IAM users ===" >> /home/ubuntu/srikash/AwsTracker/resourceTracker
aws iam list-users >> /home/ubuntu/srikash/AwsTracker/resourceTracker

