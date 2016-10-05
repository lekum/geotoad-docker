# geotoad-docker

A dockerized version of [geotoad](https://github.com/steve8x8/geotoad). The image built has a `/opt/gpx` directory that can be used to hold the output gpx, so that you could mount it via a volume and map to any directory in your host.

Usage:

Run the Text User Interface to manually perform the query and store the output gpx in `/opt/gpx` directory, which is in turn mapped to your current directory:

   ```
   docker run --rm -ti -v $PWD:/opt/gpx lekum/geotoad-docker
   ```

   When you are done with the settings, you can detach from your container with Ctrl-P + Ctrl-Q.

Alternatively, if you kwon the command line options that you need for geotoad, just issue:

   ```
   docker run -d -v $PWD:/opt/gpx lekum/geotoad-docker [options]
   ```
