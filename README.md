# jenkins-docker-cookbook
Chef cookbook install docker, pulls jenkins container, and run container in port 8080

## Supported Platforms

ubuntu 14.04

## Attributes

## Usage
run bundle install and berks install
kitchen test -d=never will bring up ubuntu 14.04 and run the default recipe which will install docker, pulls jenkins container, and run container in po
rt 8080
The jenkins instance will be accessible at 192.168.33.33:8080

### jenkins-docker-cookbook::default

Include `jenkins-docker-cookbook` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[jenkins-docker-cookbook::default]"
  ]
}
```

## License and Authors

Author:: Sungho Park (caseeker@gmail.com)
