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

plan_terraform() {
    for dir in "$@"
    do
        echo "Generating terraform plan for" "$dir"
        docker container run \
            --env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
            --env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
            --env TF_VAR_GH_PERSONAL_ACCESS_TOKEN="$GH_PERSONAL_ACCESS_TOKEN" \
            --env TF_VAR_DOCKERHUB_USERNAME="$DOCKERHUB_USERNAME" \
            --env TF_VAR_DOCKERHUB_TOKEN="$DOCKERHUB_TOKEN" \
            --env TF_VAR_HEROKU_EMAIL="$HEROKU_EMAIL" \
            --env TF_VAR_HEROKU_API_KEY="$HEROKU_API_KEY" \
            --env TF_VAR_EMAIL_SERVICE_CODECOV_TOKEN="$EMAIL_SERVICE_CODECOV_TOKEN" \
            --env TF_VAR_API_GATEWAY_CODECOV_TOKEN="$API_GATEWAY_CODECOV_TOKEN" \
            --env TF_VAR_EMAIL_SERVICE_DATABASE_URL="$EMAIL_SERVICE_DATABASE_URL" \
            --env TF_VAR_EMAIL_SERVICE_MAIL_PASSWORD="$EMAIL_SERVICE_MAIL_PASSWORD" \
            --env TF_VAR_EMAIL_SERVICE_MAIL_USERNAME="$EMAIL_SERVICE_MAIL_USERNAME" \
            --env TF_VAR_EMAIL_SERVICE_REDIS_TLS_URL="$EMAIL_SERVICE_REDIS_TLS_URL" \
            --env TF_VAR_EMAIL_SERVICE_REDIS_URL="$EMAIL_SERVICE_REDIS_URL" \
            --env TF_VAR_PROFILE_SERVICE_DATABASE_URL="$PROFILE_SERVICE_DATABASE_URL" \
            --env TF_VAR_PROFILE_SERVICE_REDIS_TLS_URL="$PROFILE_SERVICE_REDIS_TLS_URL" \
            --env TF_VAR_PROFILE_SERVICE_REDIS_URL="$PROFILE_SERVICE_REDIS_URL" \
            --env TF_VAR_WIKI_DATABASE_HOST="$WIKI_DATABASE_HOST" \
            --env TF_VAR_WIKI_DATABASE_PORT="$WIKI_DATABASE_PORT" \
            --env TF_VAR_WIKI_DATABASE_USER="$WIKI_DATABASE_USER" \
            --env TF_VAR_WIKI_DATABASE_PASSWORD="$WIKI_DATABASE_PASSWORD" \
            --env TF_VAR_WIKI_DATABASE_NAME="$WIKI_DATABASE_NAME" \
            --env TF_VAR_DISCORD_WEBHOOK_URL="$DISCORD_WEBHOOK_URL" \
            --env TF_VAR_TRUSTED_HOSTS="$TRUSTED_HOSTS" \
            --env TF_VAR_GAMBLEY_CD_USER_AWS_ACCESS_KEY="$GAMBLEY_CD_USER_AWS_ACCESS_KEY" \
            --env TF_VAR_GAMBLEY_CD_USER_AWS_SECRET_KEY="$GAMBLEY_CD_USER_AWS_SECRET_KEY" \
            --env TF_VAR_SNYK_SECRET_KEY="$SNYK_SECRET_KEY" \
            --volume aws-provider:/app/src/aws/.terraform \
            --volume github-provider:/app/src/github/.terraform \
            --volume heroku-provider:/app/src/heroku/.terraform \
            infrastructure:"$GITHUB_COMMIT_SHA" -chdir=src/"$dir" plan -input=false 2>&1
    done
}

apply_terraform() {
    for dir in "$@"
    do
        echo "Applying terraform plan for" "$dir"
        docker container run \
            --env AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
            --env AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
            --env TF_VAR_GH_PERSONAL_ACCESS_TOKEN="$GH_PERSONAL_ACCESS_TOKEN" \
            --env TF_VAR_DOCKERHUB_USERNAME="$DOCKERHUB_USERNAME" \
            --env TF_VAR_DOCKERHUB_TOKEN="$DOCKERHUB_TOKEN" \
            --env TF_VAR_HEROKU_EMAIL="$HEROKU_EMAIL" \
            --env TF_VAR_HEROKU_API_KEY="$HEROKU_API_KEY" \
            --env TF_VAR_EMAIL_SERVICE_CODECOV_TOKEN="$EMAIL_SERVICE_CODECOV_TOKEN" \
            --env TF_VAR_API_GATEWAY_CODECOV_TOKEN="$API_GATEWAY_CODECOV_TOKEN" \
            --env TF_VAR_EMAIL_SERVICE_DATABASE_URL="$EMAIL_SERVICE_DATABASE_URL" \
            --env TF_VAR_EMAIL_SERVICE_MAIL_PASSWORD="$EMAIL_SERVICE_MAIL_PASSWORD" \
            --env TF_VAR_EMAIL_SERVICE_MAIL_USERNAME="$EMAIL_SERVICE_MAIL_USERNAME" \
            --env TF_VAR_EMAIL_SERVICE_REDIS_TLS_URL="$EMAIL_SERVICE_REDIS_TLS_URL" \
            --env TF_VAR_EMAIL_SERVICE_REDIS_URL="$EMAIL_SERVICE_REDIS_URL" \
            --env TF_VAR_PROFILE_SERVICE_DATABASE_URL="$PROFILE_SERVICE_DATABASE_URL" \
            --env TF_VAR_PROFILE_SERVICE_REDIS_TLS_URL="$PROFILE_SERVICE_REDIS_TLS_URL" \
            --env TF_VAR_PROFILE_SERVICE_REDIS_URL="$PROFILE_SERVICE_REDIS_URL" \
            --env TF_VAR_WIKI_DATABASE_HOST="$WIKI_DATABASE_HOST" \
            --env TF_VAR_WIKI_DATABASE_PORT="$WIKI_DATABASE_PORT" \
            --env TF_VAR_WIKI_DATABASE_USER="$WIKI_DATABASE_USER" \
            --env TF_VAR_WIKI_DATABASE_PASSWORD="$WIKI_DATABASE_PASSWORD" \
            --env TF_VAR_WIKI_DATABASE_NAME="$WIKI_DATABASE_NAME" \
            --env TF_VAR_DISCORD_WEBHOOK_URL="$DISCORD_WEBHOOK_URL" \
            --env TF_VAR_TRUSTED_HOSTS="$TRUSTED_HOSTS" \
            --env TF_VAR_GAMBLEY_CD_USER_AWS_ACCESS_KEY="$GAMBLEY_CD_USER_AWS_ACCESS_KEY" \
            --env TF_VAR_GAMBLEY_CD_USER_AWS_SECRET_KEY="$GAMBLEY_CD_USER_AWS_SECRET_KEY" \
            --env TF_VAR_SNYK_SECRET_KEY="$SNYK_SECRET_KEY" \
            --volume aws-provider:/app/src/aws/.terraform \
            --volume github-provider:/app/src/github/.terraform \
            --volume heroku-provider:/app/src/heroku/.terraform \
            infrastructure:"$GITHUB_COMMIT_SHA" -chdir=src/"$dir" apply -auto-approve -input=false 2>&1
    done
}
