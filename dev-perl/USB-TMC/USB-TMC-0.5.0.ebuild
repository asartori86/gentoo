# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_VERSION=0.005
DIST_AUTHOR=AMBA
KEYWORDS="~amd64 ~x86"
inherit perl-module

DESCRIPTION="Perl interface to the USB Test & Measurement (USBTMC) backend"

SLOT="0"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Data-Dumper
	dev-perl/Moose
	dev-perl/MooseX-Params-Validate
	dev-perl/USB-LibUSB
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Module-Load
		virtual/perl-Test-Simple
	)
"
