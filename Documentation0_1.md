NetCDF2GMaps Project Documentation

1) A Command line tool was built:

The function of this Command line tool is: to take NetCDF file and run a program that generates
Image Overlays in Jpeg format

2) It was Generated an Json file that presents Image Overlay file list and the metadata

The Metadata that needs to be collected for each visualization looks like that on a json file:

{
> "imagesOverlays":[
> > "![http://s3dsfdfdf/1992.jpg](http://s3dsfdfdf/1992.jpg)",
> > "![http://s3dsfdfdf/1993.jpg](http://s3dsfdfdf/1993.jpg)",
> > "![http://s3dsfdfdf/1994.jpg](http://s3dsfdfdf/1994.jpg)",
> > "![http://s3dsfdfdf/1995.jpg](http://s3dsfdfdf/1995.jpg)",
> > "![http://s3dsfdfdf/1995_2.jpg](http://s3dsfdfdf/1995_2.jpg)"

> ],
> "description":"This is an example experiment",
> "author":"brasil@home",
> "more\_info\_url":"http://brasilathome.org",
> "bbox\_minx":"-180",
> "bbox\_miny":"-85",
> "bbox\_maxx":"180",
> "bbox\_maxy":"85"
}

3) A Flash application was built:

It goes to a visualization tool on the web and write the overlay URL

When you open the web browser, the default is to open an UI to enter the URL of the NetCDF2GMaps URL file.
Alternatively, the URL can be passed directly on the web browser

Then the Overlays+Json metadata file are uploaded to a web server

4) More info about the Flash app:

We created a project that lets you view data about climate. Was
used with Flex integration with GoogleMaps. Basically the user will
able to select a point on the map and after that will be displayed
an animation-themed atmosphere over a given period of time.

It was request that a development in Flash a dynamic display of images. But Flash MX doesn't support PNG files with transparency. So, the final decision-making was done in the Flex. The description of the
algorithm of the basic image display is shown below:

1) Parameters are defined in a metadata file as described above
2) Loop with a display of images

5) The Website describing the project is at http://code.google.com/p/netcdf2gmaps