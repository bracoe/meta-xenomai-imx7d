DESCRIPTION = "Provides userspace xenomai support and libraries needed to for \
real-time applications using the xenomai RTOS implementation"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://include/COPYING;md5=79ed705ccb9481bf9e7026b99f4e2b0e"
SECTION = "xenomai"
HOMEPAGE = "http://www.xenomai.org/"
#PR = "r0"

SRC_URI = "https://xenomai.org/downloads/xenomai/stable/xenomai-${PV}.tar.bz2"
SRC_URI[sha256sum] = "c373261ddb8280d9d7078cdd9cd9646dfb7d70d8cd3aa9693d9148f03990d711"

S = "${WORKDIR}/xenomai-${PV}"

inherit autotools pkgconfig

includedir = "/usr/include/xenomai"

EXTRA_OECONF += "--enable-smp \
                --with-core=cobalt \
                --prefix=/"
                
PACKAGES += "${PN}-demos"

FILES_${PN}-demos = "/usr/demo"
FILES_${PN}-dev += "/dev"
FILES_${PN} += " \
  /usr/lib/modechk.wrappers \
  /usr/lib/cobalt.wrappers \
  /usr/lib/dynlist.ld \
  "