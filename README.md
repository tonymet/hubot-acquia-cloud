### Installation

```
$ npm install --save hubot-acquia-cloud
# add hubot-acquia-cloud to external-scripts.json and check
$ grep acquia external-scripts.json
  "hubot-acquia-cloud",

# test hubot
$ export ACQUIA_PASSWORD="XXXX"
$ export ACQUIA_SITE="prod:XXXXX"
$ export ACQUIA_USERNAME="user@domain.com"

```

### Testing
```
$ ./bin/hubot
Hubot> hubot ac envs
Shell: env: dev, version: develop
...
```
