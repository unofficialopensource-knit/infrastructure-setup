init_terraform() {
    for i in $@
    do
        `terraform -chdir=$1 init -input=false`
    done
}
