init_terraform() {
    for dir in "$@"
    do
        echo "Initializing terraform for" "$i"
        docker container run \
            --env AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
            --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
            --name infrastructure \
            --volume aws-provider:/app/src/aws/.terraform \
            --volume github-provider:/app/src/github/.terraform \
            --volume heroku-provider:/app/src/heroku/.terraform \
            infrastructure:$GITHUB_COMMIT_SHA -chdir=src/"$dir" init -input=false
    done
}

# format_terraform() {
#     for dir in "$@"
#     do
#         echo "Initializing terraform for" "$i"
#         docker container run \
#             --env AWS_ACCESS_KEY_ID=${{ secrets.AWS_ACCESS_KEY_ID }} \
#             --env AWS_SECRET_ACCESS_KEY=${{ secrets.AWS_SECRET_ACCESS_KEY }} \
#             --name infrastructure \
#             --volume aws-provider:/app/src/aws/.terraform \
#             --volume github-provider:/app/src/github/.terraform \
#             --volume heroku-provider:/app/src/heroku/.terraform \
#             infrastructure:${{ github.sha }} -chdir=src/"$dir" fmt -check
#     done
# }
