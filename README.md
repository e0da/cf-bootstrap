Bootstrap cf.

## Setup

```sh
GITHUB_ACCESS_TOKEN=actual-github-access-token
URL=https://raw.githubusercontent.com/justinforce/cf-bootstrap/master/cf-bootstrap 

wget -O- $URL | GITHUB_ACCESS_TOKEN=$GITHUB_ACCESS_TOKEN bash
```

Alternately copy `example.env` to `.env` and update it if your environment
supports .env.

## Testing and Debugging

```sh
# To test
./test

# To debug
./debug
```
