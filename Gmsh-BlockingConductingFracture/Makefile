clean:
	rm -f *~ \#* *.vtu

flcean:
	rm -f *.msh

pvtu:
	msh2vtu --ogs --rdcd geo.msh

## 

gvtu:
	~/build-release/bin/GMSH2OGS -i geo.msh -o block_conduct_frac.vtu && ~/build-release/bin/NodeReordering -i block_conduct_frac.vtu -o block_conduct_frac.vtu 
