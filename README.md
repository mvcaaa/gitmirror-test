# gitmirror-test

## Installation
1. Set up new free buildkite account
2. Set up new buildkite agent
3. Edit ```/etc/buildkite-agent/buildkite-agent.cfg``` - add ```meta-data="git_cache_dir=/var/enkora-cache"``` (or other folder), restart agent. Give write permission on this folder to buildkite-agent user.
4. Set up new Dynamic pipeline https://buildkite.com/docs/pipelines/defining-steps#dynamic-pipelines
5. Make new commits, see system in action

