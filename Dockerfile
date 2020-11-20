FROM makocchi/alpine-git-curl-jq:latest

LABEL "com.github.actions.name"="Delete branch from GitLab"
LABEL "com.github.actions.description"="Automate deletion of git branches from GitLab"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="magenta"

LABEL "repository"="https://github.com/kressh/gitlab-delete-branch-action"
LABEL "homepage"="https://github.com/kressh/gitlab-delete-branch-action"
LABEL "maintainer"="Sergey Besedin <kr3ssh@gmail.com>"


COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]
