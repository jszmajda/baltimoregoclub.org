# baltimoregoclub.org

Baltimore Go Club Site

### Editing Stuff

You probably want to change things in `views`. Go in there, edit, send a pull request. Jess will deploy / make live.

### Setup

- make sure [node.js](http://nodejs.org) and [roots](http://roots.netlify.com/) are installed
- clone this repo down and `cd` into the folder
- run `npm install`
- run `roots watch`
- ???
- get money

### Deploying

- If you just want to compile the production build, run `roots compile -e production` and it will build to public.
- To deploy your site with a single command, run `roots deploy -to XXX` with `XXX` being whichever [ship](https://github.com/carrot/ship#usage) deployer you want to use.
