init_terraform() {
    for i in "$@"
    do
        echo "Initializing terraform for" "$i"
        terraform -chdir="src/$i" init -input=false
    done
}

format_terraform() {
    for i in "$@"
    do
        echo "Formatting terraform files for" "$i"
        terraform -chdir="src/$i" fmt -check
    done
}

validate_terraform() {
    for i in "$@"
    do
        echo "Validating terraform plan for" "$i"
        terraform -chdir="src/$i" validate -json
    done
}

plan_terraform() {
    for i in "$@"
    do
        echo "Generating terraform plan for" "$i"
        terraform -chdir="src/$i" plan -input=false
    done
}

apply_terraform() {
    for i in "$@"
    do
        echo "Applying terraform plan for" "$i"
        terraform -chdir="src/$i" apply -auto-approve -input=false
    done
}

setup_data() {
    echo "Created data directory"
    mkdir -p src/aws/data/user_data
    cd src/aws/data

    echo "Copying test data to data directory"
    aws s3 cp s3://gambley-infra-data/public_keys/id_gambley.pub .
    echo "Copying IAM Role Policy to data directory"
    aws s3 cp s3://gambley-infra-data/iam/iam_role_policy.json .
    echo "Copying IAM Role Instance Policy to data directory"
    aws s3 cp s3://gambley-infra-data/iam/iam_role_instance_policy.json .
    echo "Copying user data script data directory"
    aws s3 cp s3://gambley-infra-data/user_data/swarm_master_node_setup.sh .
    echo "Copying nginx user data script data directory"
    aws s3 cp s3://gambley-infra-data/user_data/install_nginx.sh user_data
}
