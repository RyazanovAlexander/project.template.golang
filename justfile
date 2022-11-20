GENDIR := ".gen"

# This list of available targets.
default:
	@just --list

# Creates a new project.
create:
	@rm -rf {{GENDIR}}
	@cookiecutter . -o {{GENDIR}}