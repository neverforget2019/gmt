#!/usr/bin/env bash
#               GMT EXAMPLE 44
#
# Purpose:      Illustrate use of map insets
# GMT modules:  coast, basemap, mapproject
#

gmt begin ex44 ps
	# Bottom map of Australia
	gmt coast -R110E/170E/44S/9S -JM6i -B -BWSne -Wfaint -N2/1p  -EAU+gbisque -Gbrown -Sazure1 -Da -Xc --FORMAT_GEO_MAP=dddF
	gmt inset begin  -DjTR+w1.5i+o0.15i/0.1i -F+gwhite+p1p+c0.1c+s -M0
		gmt coast -Rg -JG120/30S -Da -Gbrown -A5000 -Bg -Wfaint -EAU+gbisque
	gmt inset end
	gmt coast -R10W/5E/35N/44N -JM6i -B -BWSne -EES+gbisque -Gbrown -Wfaint -N1/1p -Sazure1 -Df -Y4.5i --FORMAT_GEO_MAP=dddF
	gmt inset begin -DjTR+w2i/0.93i+o0.15i/0.1i -F+gwhite+p1p+c0.1c+s -M0
		gmt coast -R15W/35E/30N/48N -JM -Da -Gbrown -B0 -EES+gbisque --MAP_FRAME_TYPE=plain
	gmt inset end
gmt end
