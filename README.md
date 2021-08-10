## Typescript declaration files generator service

### Installation
#### Docker
Install Docker.
https://docs.docker.com/install/

#### Install
Clone this repository and then run:

```shell
./install.sh
```

### Usage
#### Generate a Typescript declaration file from Javascript code


```shell
./bin/run.sh [NPM-MODULE-NAME] [OUTPUT_DIRECTORY]
```

#### Example
```shell
./bin/run.sh abs /tmp/results
```

`/tmp/results/abs/index.d.ts`:
```typescript
export = Abs;

declare function Abs(input: string): string;
```
