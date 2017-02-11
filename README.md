# ghost-docker

Run your Ghost blog in a Docker container and publish it with Buster to GitHub pages.

## Edit locally

```bash
docker-compose up -d
open http://localhost:2368/ghost
```

## View locally

```bash
open http://localhost:2368
```

## Deploy to GitHub pages

```bash
./deploy.sh
```

## Customization

### Casper Theme

Updated Casper theme to 1.3.5 from https://github.com/TryGhost/Casper

```bash
cd content/themes
rm -rf casper
git clone https://github.com/TryGhost/Casper
mv Casper casper
cd ../..
```

### Disqus

Followed http://academy.ghost.org/adding-disqus-to-your-ghost-blog/ to add Disqus to
`post.hbs` and then copied it into the themes folder.

```bash
cp post.hbs content/themes/casper/post.hbs
```


