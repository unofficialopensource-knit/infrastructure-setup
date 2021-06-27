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
