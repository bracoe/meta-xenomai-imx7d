DESCRIPTION = "Provides userspace xenomai support and libraries needed to for \
real-time applications using the xenomai RTOS implementation"
LICENSE = "GPLv2"
SECTION = "xenomai"
HOMEPAGE = "http://www.xenomai.org/"
PR = "r0"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://patch-4.9.11-rt9.patch"
SRC_URI += "file://fix_no_power_saving_modes_imx7d_4.9.11.patch"

#INHIBIT_DEFAULT_DEPS = "1"

do_rt_config () {
	cp ${WORKDIR}/config_imx7d_xenomai_merc ${B}/.config
}