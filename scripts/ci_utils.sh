init_terraform() {
    for i in "$@"
    do
        echo "Initializing terraform for" "$i"
        terraform -chdir=$1 init -input=false
    done
}

validate_terraform() {
    for i in "$@"
    do
        echo "Validating terraform plan for" "$i"
        terraform -chdir=$1 validate -json
    done
}
