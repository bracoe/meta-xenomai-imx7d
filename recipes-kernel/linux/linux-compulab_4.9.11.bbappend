DESCRIPTION = "Provides userspace xenomai support and libraries needed to for \
real-time applications using the xenomai RTOS implementation"
LICENSE = "GPLv2"
SECTION = "xenomai"
HOMEPAGE = "http://www.xenomai.org/"
PR = "r0"

SRC_URI += "https://xenomai.org/downloads/xenomai/stable/xenomai-3.0.8.tar.bz2;name=xeno"
SRC_URI[xeno.sha256sum] = "c373261ddb8280d9d7078cdd9cd9646dfb7d70d8cd3aa9693d9148f03990d711"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

IPIPE_PATCH = "ipipe-4.9.11-imx-arm.patch"
SRC_URI += "file://${IPIPE_PATCH};apply=0"
SRC_URI += "file://fix_no_power_saving_modes_imx7d_4.9.11.patch"
SRC_URI += "file://config_imx7d_xenomai;apply=0"

XENOMAI_SRC = "${WORKDIR}/xenomai-3.0.8"

#INHIBIT_DEFAULT_DEPS = "1"


do_add_xenomai () {
    # Prepare kernel
    
    ${XENOMAI_SRC}/scripts/prepare-kernel.sh --arch=${ARCH} --linux=${S} --ipipe="${WORKDIR}/${IPIPE_PATCH}" --default
    cp config_imx7d_xenomai ${S}/.config
    
}

addtask add_xenomai after do_preconfigure before do_configure