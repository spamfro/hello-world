# Hello world

Small web app to demonstrate building with GitHub actions,
and deploying to GitHub pages.

IMPORTANT: The repo's [Settings/Pages](https://github.com/spamfro/hello-world/settings/pages) MUST be confgured for `GitHub Actions` source for build and deployment.

To serve over HTTPS enable `Enforce HTTPS` in repo's [Settings/Pages](https://github.com/spamfro/hello-world/settings/pages)

The [hello-world,yml](./.github/workflows/hello-world.yml) workflow
is configured for MANUAL trigger.  To build and deploy the app
trigger the workflow from the repo's Actions tab.

## Config
```bash
chmod ugo+x ./scripts/*.sh
```

## Build
```bash
./scripts/build.sh
```

## Run local with Node in Docker
### Start
```bash
./scripts/start.sh
```
### Check
```bash
HOST_IP=`docker container inspect node-app | jq -r '.[].NetworkSettings.IPAddress'`
curl http://${HOST_IP}:8080
```
### Stop
```bash
docker container stop node-app 
```

## Publish to GitHub
```bash
git subtree split --prefix playground/hello-world -b github/hello-world
git push git@github-spamfro:spamfro/hello-world.git github/hello-world:main
```
