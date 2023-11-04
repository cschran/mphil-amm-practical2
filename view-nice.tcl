# Change defaults
set material AOChalky
color Display Background white
axes location Off
display depthcue off
color change rgb 2 0.700000 0.700000 0.700000
color change rgb 0 0.000000 0.210000 0.380000
color Name H gray

# load the molecule
mol new [lindex $argv 3] waitfor all first [lindex $argv 0] last [lindex $argv 1] step [lindex $argv 2]
# delete default represenatation
mol delrep 0 0

# Set box size and wrap
pbc set {12.42 12.42 12.42} -all
pbc wrap -compound res -compoundref "name O H" -all
pbc box -color black -style tubes -width 1.0

mol representation CPK 1.0 0.4 12.0 12.0
mol color Name
mol selection {all}
mol material AOChalky
mol addrep top
mol selupdate 0 top 0
mol colupdate 0 top 0
