This layer adds Xenomai 3.0.8 to the Compulab cl-som-imx7. 

In theory the layer can be used for other hardware as well as the patches are made for the i.MX7D. Just change the name of the kernel directory and file to the preferred kernel provider of your hardware.

As this layer uses the .bbappend, Xenomai will automatically be added when this layer is included. Add the "xenomai" package to the image for the tests and libraries.

In order for Xenomai to work properly, the power saving has to be deactivated. However the i.mx kernel has some bugs when doing this, so a patch is needed. Use at your own risk!
