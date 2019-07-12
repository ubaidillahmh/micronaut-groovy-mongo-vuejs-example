# micronaut-vuejs

VueJS and Micronaut are currently two of my favorite technologies, and they complement 
each other beautifully: VueJS handles the front end, while Micronaut runs the back end.

However, getting a project set up that plugs them both together requires a lot of configuration
steps. This is simple skeleton project to enable rapid creation of a VueJS front end backed by 
Micronaut backend with just a couple of commands.

## Requirements

Make sure you have a recent version of `npm` and vuecli3 installed.

## Project setup
```
npm install
./gradlew -b setup.gradle setup
```

### Compiles and hot-reloads for development

Terminal 1 - launch Micronaut:
```
./gradlew run
```

Terminal 2 - launch VueJS dev server:
```
npm run serve
```

Terminal 3 - launch Mongodb:
```
mongo
```

### Get All Data
```
$ curl http://localhost:8090/api
```

### Input Data
```
$ curl \
    http://localhost:8090/api \
    -X POST \
    --header 'Content-type: application/json' \
    --data '{"nominal": "1.000.000", "type": "debet"}'
```

### References
```
https://gitlab.com/ssadedin/micronaut-vuejs
https://github.com/jeantessier/micronaut-mongo-gorm-example
```

