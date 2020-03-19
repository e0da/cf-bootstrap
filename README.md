Bootstrap cf.

## Setup

```sh
GITHUB_ACCESS_TOKEN=actual-github-access-token
URL=https://raw.githubusercontent.com/justinforce/cf-test/master/cf-bootstrap 

wget -O- $URL | GITHUB_ACCESS_TOKEN=$GITHUB_ACCESS_TOKEN bash
```

## Testing

```sh
./test
```
