:: gdalinfo C:\per\dev\gdal
echo on
rem set NLS_LANG=SWEDISH_SWEDEN.WE8ISO8859P1
rem set NLS_LANG=AMERICAN_SWEDEN.UTF8
rem set NLS_LANG=SWEDISH_SWEDEN.UTF8
rem chcp 1250
rem chcp 1252 verkar krävas för att åäö i filnamn, sökväg ska fungera
rem chcp 1252

Set CURRENTDIR=%CD%

:: 0. Sätt sökvägar:
rem set GDAL_OGR_HOME="C:\Program Files\QGIS Lyon\bin"
set GDAL_OGR_HOME="C:\Program Files\QGIS 3.2\bin"

rem set GDAL_DATA="C:\Program Files\QGIS Lyon\share\epsg_csv"
set GDAL_DATA="C:\Program Files\QGIS 3.2\share\epsg_csv"

set FILE="C:\per\data\mapillary\2016_03_20_12_49_23_203\2016_03_20_12_49_23_397.jpg"
::set FILE="C:\bilder\UKCamera\20140517_153348.jpg"
::set FILE="C:\bilder\torgny\Bild051.jpg"
set FILE="C:\per\dev\mapillary\downloads\6W2F1fxN-M-4QM3KvVDjIQ\0000.jpeg"
set FILE="C:\per\dev\mapillary\downloads\thumb-2048.jpg"
set FILE=C:\per\data\mapillary\2016_03_24_16_39_42_647___Mapillary\2016_03_24_16_39_42_824.jpg
set FILE=C:\bilder\UKCamera\20160324_230257.jpg
set FILE=C:\per\data\geotiff\S-Fernebo-nv_geo\S-Fernebo-nv_geo.tif
set FILE=C:\per\dev\odysseus\olsjokyrkstig\20160721_121440.jpg
set FILE=C:\cy\photo\IMG_1534.jpg

::Funkar
%GDAL_OGR_HOME%\gdalinfo %FILE% --debug ON

::Format:
::"C:\Program Files\QGIS Lyon\bin\gdalwarp" -of JPEG %FILE% S-Fernebo-nv_geo.jpg

::Clip:
::"C:\Program Files\QGIS Lyon\bin\gdalwarp" -s_srs EPSG:4326 -t_srs EPSG:4326 -dstalpha -te 14.0478122126 60.0504620508 14.0737064726 60.0704784726 -of GTiff C:\per\data\geotiff\S-Fernebo-nv_geo\S-Fernebo-nv_geo.tif ramsberg_mini.tiff

