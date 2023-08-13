  function ExecResample ()
  {
    # PROG = resample
    # CC = g++
    # CPPFLAGS = -g -Wall -I/usr/include/gdal
    # LDFLAGS = -L/usr/lib -lgdal -lm
    g++ resample.cpp -g -Wall -I/usr/include/gdal -L/usr/lib -lgdal -lm -o resample
  }
  export -f ExecResample

  ExecResample
  ./resample   "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_Clas_geo_clip_px25.tif"  \
               "../../DriveBiotopos/Daniel_Zamorano/Pixel25Norm/Transf_TRI_px25.tif"            \
               "../../DriveBiotopos/Daniel_Zamorano/Pixel25Resm/Transf_TRI_px25__resampled.tif"
