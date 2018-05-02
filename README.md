Template for using [revealjs](https://github.com/hakimel/reveal.js).

# Idea

- Clone this repo
- Run the install script
- You have a clean new start for your presentation

# Prerequisites

- wget
- tar

Tested with Linux and Windows.

Using RevealJs obviously requires NodeJs. This setup does not require NodeJs.

# Initial setup 

There are 2 theme templates: 
- dark
- light (default).

After cloning this repo:

- Run `./setup.sh`.
    - It will create a template with a light background template.
- Run `./setup.sh --dark`.
    - It will create a template with a dark background template.
- The `setup.sh` script will remove the `.git` folder so you can start from scratch.
- `cd slides && npm install && npm start`

That's it!

How to run a linux bash script on windows?

- easiest solution: minimal bash shell included with Git-for-windows (`git bash`)
- Or the Full-Linux Support with Windows10. 
- Or Cygwin. 
- Or...

# Project structure

- `slides`: the revealjs presentation

# Showcases

- [x] Background images with markdown
- [x] Change highlighting of code samples (step by step)
- [x] slide customizations using `data-*` attributes in markdown
- [x] company logo on each slide

# Screenshots

![company logo](screenshots/company-logo.png)

![code syntax highlighting](screenshots/code-syntax-highlighting.png)

![backround image](screenshots/background-images.png)

![tagcloud](screenshots/tagcloud.png)