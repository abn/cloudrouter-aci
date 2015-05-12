# CloudRouter ACI: BIRD

CloudRouter [BIRD](http://bird.network.cz/) [App Container Image](https://github.com/appc/spec/blob/master/SPEC.md#app-container-image). This image was build and tested against [CoreOS rkt](https://github.com/coreos/rkt) app container runtime.

For more information on App Containers, refer to the [App Container Specification](https://github.com/appc/spec/blob/master/SPEC.md#app-container-specification).

## Requirements

* [actool](https://github.com/appc/spec/tree/master/actool)
* [BIRD](http://bird.network.cz/)

### Installing requirements on Fedora 21
```
yum -y install bird actool
```

## Build image
```sh
make
```

## Running with CoreOS Rocket
```
rkt --insecure-skip-verify run bird.aci
```
