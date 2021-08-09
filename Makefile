
.PHONY: all clean patch
all: model.gcode patch

model.stl: model.scad
	openscad $< -o $@

model.gcode: model.stl
	slic3r $^

gui: model.stl
	slic3r --gui $^

patch:
	# Set bed and nozzle temperature at once
	sed model.gcode -i -e "s/M190 /M140 /"

clean:
	rm -f model.stl model.gcode
