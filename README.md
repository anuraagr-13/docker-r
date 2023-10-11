## R Package Management using Docker

This is utilizing Docker for R package management. The idea is to create an image with packages installed and then utilize the former image to build a new that runs a code.
This is a pretty simple example , bring developed for a more complicated use-case.

#### Docker-install

This image is used to copy required files and install some packages.

To run the same, cd to the folder that encloses the docker_install

```
$ docker build docker_install -t install-r
```

#### Docker-run

This image is built upon the docker_install (install-r) image, and runs the code to give an output.

```
$ docker build docker_run -t run_code
$ docker run -v ./docker_run/output_files: /output run_code
```

This in our case gives, sends the required plots to the folder.