#!/bin/bash

function set_aws_profile() {
  profiles=`aws configure list-profiles`
  profiles_as_array=()
  for i in $profiles; do profiles_as_array+=($i) ; done

  PS3='Please enter your AWS_PROFILE: '
  select opt in "${profiles_as_array[@]}"; do
    for profile in "${profiles_as_array[@]}"; do
      if [ "$opt" = "$profile" ]; then
          echo $profile
          break
      fi
    done
    break
  done
}

function set_aws_region() {
  regions=("eu-west-1" "us-east-1")
  PS3="Please enter your AWS_REGION: "
  select opt in "${regions[@]}"; do
    for region in "${regions[@]}"; do
      if [ "$opt" = "$region" ]; then
          echo $region
          break
      fi
    done
    break
  done
}

export AWS_PROFILE=$(set_aws_profile)
export AWS_REGION=$(set_aws_region)

aws sso login
#
#echo "You chose $AWS_PROFILE"
#echo Which AWS profile would you like to use?
#
#read aws_profile
#
#export AWS_PROFILE aws_profile