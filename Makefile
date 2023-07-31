clean:
	rm -rf __pycache__
	rm -f *.log *~

orun:
	~/build-release/bin/ogs -l debug block_conduct_frac.prj 
