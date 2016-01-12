# Lessons learned...

Install `yeoman` and use the [`generator-reveal`](https://github.com/slara/generator-reveal) package.

# Junk

## Prerequisites

- git
- node
- grunt

## Instructions

tl/dr `./install.sh` otherwhise

- Clone reveal.js: `git clone https://github.com/hakimel/reveal.js.git`
- Remove the `.git` folder from reveal.js: `rm -rf reveal.js/.git`
- Install reveal.js: `cd reveal.js && npm install`
- Softlink/Overwrite `reveal.js/index.html` with `template/index.html`: `cp template/index.html reveal.js/index.html`
- Softlink/Copy `talk/talk-template.md` to `reveal.js/talk-template.md`: `cp talk/talk-template.md reveal.js/talk-template.md`


### Create your own git repo

`rm -rf $currentdir/.git`

### Now we can commit everything to our own repository!

```
git add .
git commit -am "talk foobar"
```
