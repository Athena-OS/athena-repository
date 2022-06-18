# hyper-startup
This is an extension for Hyper, which executes commands when Hyper launches.

## install

```
npm install -g hpm-cli
hpm install hyper-startup
```

## setup

In your `.hyper.js`...
```
module.exports = {
  config: {
  	...
    commands: ['echo first command', 'echo second command']
  },
  ...
};

```

