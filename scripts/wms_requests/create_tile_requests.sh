#!/bin/bash

## wms_request.py
## -count	        Number of requests to generate (default=100)
## -region	        Bounding box: <minx> <miny> <maxx> <maxy>
## -minlevel	    Minimum zoom level (zero based)
## -maxlevel	    Maximum zoom level (zero based)
## -tilesize        Tile size in pixels: <width> <height> (default=256,256)
## -level0          columns and rows in level 0: <columns> <rows> (default=2,1)
## -srs             Source coordinate reference system (default=4326)
## -srs2            Output coordinate reference system (optional)
## -filter_within   Name of the file containing geometries to filter out (optional)
## -output          Name of the output file (default=<srs>.csv)
## -output2         Name of the output file (default=<srs2>.csv)
##
## Example: Generate 1000 WMS requests in CSV format around Ventura, CA
##  python wms_tile_request.py -count 1000 -region -120 34 -119 35 -minlevel 0 -maxlevel 23 -output ventura.csv
##
## Example: World Wind Java WMS requests
##  python wms_tile_request.py -count 1000 -region -120 34 -119 35 -level0 10 5  -minlevel 0 -maxlevel 23 -output ventura.csv


python  wms_tile_request.py -count 100 -region "-180" "-90" 180 90 -minlevel 0 -maxlevel 4 -output global_0-4.csv
python  wms_tile_request.py -count 100 -region "-180" "-90" 180 90 -minlevel 0 -maxlevel 4 -tilesize 512 512 -level0 10 5 -output global_0-4_wwj.csv
python  wms_tile_request.py -count 100 -region "-120" 34 "-119" 35  -minlevel 0 -maxlevel 23 -output ventura_0-23.csv
python  wms_tile_request.py -count 100 -region "-126" 39 "-116" 50  -minlevel 0 -maxlevel 23 -output pnw_0-23.csv