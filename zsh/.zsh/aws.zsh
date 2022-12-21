# switching creds with https://github.com/ArcadiaPower/axolotl
# sample usage: `awsrole dev-arcadia-admin`
function awsrole() {
    unset AWS_AXOLOTL
    eval $(ax --profile $1 -- env | grep AWS | sed -e 's/^/export\ /')
    export AWS_PROFILE=${1}
    export DEFAULT_AWS_PROFILE=${1}
    export AWS_DEFAULT_REGION=$AWS_REGION
}

# enable axolotl shell auto-complete
eval "$(ax --completion-script-zsh)"

# Stax
function s() {
    (
        cd $(git rev-parse --show-toplevel)/ops;
        bundle exec stax $*
    )
}

## make it easier to tag docker images
function ecr_login() {
    aws ecr get-login-password|docker login --username AWS --password-stdin $(ecr)
}

function ecr () {
    echo -n "${AWS_ACCOUNT_ID:-$(aws sts get-caller-identity --query Account --output text)}.dkr.ecr.${AWS_REGION}.amazonaws.com"
}

function dockerbuild () {
    docker build -t $(ecr)/$1:$(git rev-parse --abbrev-ref HEAD) .
}
function dockerpush () {
    docker push $(ecr)/$1:$(git rev-parse --abbrev-ref HEAD)
}

function ssmget() {
    aws ssm get-parameter --name "$1" --with-decryption --query 'Parameter.Value' --output text
}

function setfury () {
    export GEMFURY_TOKEN=$(ssmget /gemfury/token)
    echo "gemfury token set"
}
