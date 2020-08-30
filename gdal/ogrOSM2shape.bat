:: gdalinfo C:\per\dev\gdal
echo on
rem set NLS_LANG=SWEDISH_SWEDEN.WE8ISO8859P1
rem set NLS_LANG=AMERICAN_SWEDEN.UTF8
rem set NLS_LANG=SWEDISH_SWEDEN.UTF8
rem chcp 1250
rem chcp 1252 verkar krävas för att åäö i filnamn, sökväg ska fungera
rem chcp 1252

Set CURRENTDIR=%CD%

:: 0. Sätt sökvägar
set GDAL_OGR_HOME="C:\Program Files\QGIS Lyon\bin"
set GDAL_OGR_HOME="C:\Program Files\QGIS 2.18\bin"
set GDAL_DATA=C:\Program Files\QGIS 2.18\share\epsg_csv"

rem set OSM_CONFIG_FILE=C:\Program Files\QGIS 2.16.0\share\gdal\osmconf.ini
rem set OSM_CONFIG_FILE=C:\Program Files\QGIS 2.18\share\gdal\osmconf.ini
rem set OSM_CONFIG_FILE=C:\per\dev\gdal\osmconf.ini

set INDATA=C:\data\osm
set UTDATA=C:\data\osm
set FILE=sarsta.osm
set FILE=sweden-latest.osm.pbf

::Funkar
%GDAL_OGR_HOME%\ogrinfo %INDATA%\%FILE% --debug ON

%GDAL_OGR_HOME%\ogr2ogr -f "ESRI Shapefile" %UTDATA% %INDATA%\%FILE% -progress SHPT=POINT/ARC/POLYGON/MULTIPOINT/POINTZ/ARCZ/POLYGONZ/MULTIPOINTZ/MULTIPATCH
rem %GDAL_OGR_HOME%\ogr2ogr -f "ESRI Shapefile" %UTDATA% %INDATA%\%FILE% -lco COLUMN_TYPES=other_tags=hstore
