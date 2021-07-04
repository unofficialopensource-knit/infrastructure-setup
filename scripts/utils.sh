init_terraform() {
    for dir in "$@"
    do
        echo "Initializing terraform for" "$dir"
        docker container run \
            --env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
            --env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
            --volume aws-provider:/app/src/aws/.terraform \
            --volume github-provider:/app/src/github/.terraform \
            --volume heroku-provider:/app/src/heroku/.terraform \
            infrastructure:"$GITHUB_COMMIT_SHA" -chdir=src/"$dir" init -input=false 2>&1
    done
}

format_terraform() {
    for dir in "$@"
    do
        echo "Formatting terraform files for" "$dir"
        docker container run \
            --env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
            --env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
            --volume aws-provider:/app/src/aws/.terraform \
            --volume github-provider:/app/src/github/.terraform \
            --volume heroku-provider:/app/src/heroku/.terraform \
            infrastructure:"$GITHUB_COMMIT_SHA" -chdir=src/"$dir" fmt -check 2>&1
    done
}

validate_terraform() {
    for dir in "$@"
    do
        echo "Validating terraform plan for" "$dir"
        docker container run \
            --env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
            --env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
            --volume aws-provider:/app/src/aws/.terraform \
            --volume github-provider:/app/src/github/.terraform \
            --volume heroku-provider:/app/src/heroku/.terraform \
            infrastructure:"$GITHUB_COMMIT_SHA" -chdir=src/"$dir" validate -json 2>&1
    done
}
