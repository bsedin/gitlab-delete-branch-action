# Delete branch from Gitlab

Inspired by https://github.com/SvanBoxel/gitlab-mirror-and-ci-action

A GitHub Action that deletes branch from GitLab

## Example workflow

This is an example of a pipeline that uses this action:

```workflow
name: Delete branch from GitLab

on: [delete]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: delete-branch
      uses: kressh/gitlab-delete-branch-action
      with:
        args: "https://gitlab.com/<namespace>/<repository>"
      env:
        GITLAB_HOSTNAME: "gitlab.com"
        GITLAB_USERNAME: "gitlab"
        GITLAB_PASSWORD: ${{ secrets.GITLAB_PASSWORD }} // Generate here: https://gitlab.com/profile/personal_access_tokens
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }} // https://help.github.com/en/articles/virtual-environments-for-github-actions#github_token-secret
```

Be sure to define the `GITLAB_PASSWORD` secret.
