# ghost-buster-docker

Run your Ghost blog in a Docker container and publish it with Buster to static
GitHub pages.

## Edit content with Ghost

```bash
docker-compose up -d ghost
open http://localhost:2368/ghost
```

or

```bash
./edit.sh
```

You can create and publish new content, they are still only locally available.

## View content locally

View the local Ghost site in your Browser

```bash
open http://localhost:2368
```

## Generate static files

This will run `buster` in a container and update the files in the `static`
folder. The data still remains locally on your disk.

```bash
docker-compose run buster
```

## Preview static files locally

If you want to preview the generated static pages, use another container.

```bash
docker-compose up -d preview
open http://localhost:2369
```

or

```bash
./preview.sh
```

## Deploy static files to GitHub pages

To deploy the static files the shell script `deploy.sh` is used that checks
in all local changes in the `static` folder and pushes it as new Git commit
to your GitHub pages repo.

```bash
./deploy.sh
```

## Customization

Some notes for me so I can look up what I have done "years" ago.

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

Followed http://academy.ghost.org/adding-disqus-to-your-ghost-blog/ to add
Disqus to `post.hbs` and then copied it into the themes folder.

```bash
cp post.hbs content/themes/casper/post.hbs
```

### Clone GitHub pages

Put your GitHub pages into a folder `static`.

```bash
git clone git@github.com:StefanScherer/stefanscherer.github.io
mv stefanscherer.github.io static
```
