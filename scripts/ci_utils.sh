init_terraform() {
    for i in $@
    do
        `terraform -chdir=$1 init -input=false`
    done
}

validate_terraform() {
    for i in $@
    do
        `terraform -chdir=$1 validate -json`
    done
}
