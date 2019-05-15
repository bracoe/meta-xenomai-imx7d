DESCRIPTION = "Provides userspace xenomai support and libraries needed to for \
real-time applications using the xenomai RTOS implementation"
LICENSE = "GPLv2"
SECTION = "xenomai"
HOMEPAGE = "http://www.xenomai.org/"
PR = "r0"

SRC_URI += "https://xenomai.org/downloads/xenomai/stable/xenomai-3.0.8.tar.bz2;name=xeno"
SRC_URI[xeno.sha256sum] = "c373261ddb8280d9d7078cdd9cd9646dfb7d70d8cd3aa9693d9148f03990d711"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "patch-4.9.11-rt9.patch"


#INHIBIT_DEFAULT_DEPS = "1"
