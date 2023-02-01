#  ____  _____               ______   __    _   _          
# |_   \|_   _|             |_   _ \ [  |  (_) / |_        
#   |   \ | |  __   _  ______ | |_) | | |  __ `| |-'____   
#   | |\ \| | [  | | ||______||  __'. | | [  | | | [_   ]  
#  _| |_\   |_ | \_/ |,      _| |__) || |  | | | |, .' /_  
# |_____|\____|'.__.'_/     |_______/[___][___]\__/[_____]

module completions {

####################
### Autocomplete ###
####################

def "shells" [] {
    ["bash", "fish", "zsh"]
  }

#autocomplete installation instructions (Not Nu compatible)
export extern "blitz autocomplete" [
  shell?: string@"shells"               # Shell type
  --refresh-cache(-r)                   # Refresh cache (ignores displaying instructions)
]


#############
### Build ###
#############

#Create a production build of your Blitz app (blitz b)
export extern "blitz build" [
	--env(-e): string							        # Set app environment name
  --help(-h)                            # Show CLI help
]


###############
### Codegen ###
###############

# Generate the Route Manifest and Prisma client
export extern "blitz codegen" [
	--env(-e): string					        		# Set app environment name
  --help(-h)                            # Show CLI help
]


###############
### Console ###
###############

# Run the Blitz console REPL
export extern "blitz console" [
	--env(-e): string						        	# Set app environment name
  --help(-h)                            # Show CLI help
]


################
### Database ###
################

# Run database commands
export extern "blitz db" [
  command?: string
	--env(-e): string						        	# Set app environment name
  --file(-f): string                    # Path to the seeds file
  --help(-h)                            # Show CLI help
]


###########
### Dev ###
###########

# Starts the development server. (blitz d)
export extern "blitz dev" [
	--hostname(-H)							        	# Set the hostname to use for the server
	--port(-p)									          # Set the port you'd like the server to listen on
	--no-incremental-build					    	# Disable incremental build and start from a fresh cache
	--inspect					            				# Enable the Node.js inspector
	--env(-e): string						        	# Set app environment name
  --help(-h)                            # Show CLI help
]


##############
### Export ###
##############

#Exports a static page 
export extern "blitz export" [
	--outdir(-o): string							  	# Set the output directory
	--env(-e): string						        	# Set app environment name
  --help(-h)                            # Show CLI help
]


################
### Generate ###
################

def "types" [] {
	["all", "resource", "model", "crud", "queries", "query", "mutations", "mutation", "pages"]
}

# Generate new files for your project
export extern "blitz generate" [
	type: string@"types"
	model?: string
	fields?: string
  --context(-c): string                 # Context folder for generated files
	--parent(-p): string					      	# Specify a parent model for generating nested routes
	--dry-run(-d)							           	# Show result without writing to disk
	--env(-e): string					        		# Set app environment name
]


############
### Help ###
############

def "commands" [] {
    ["autocomplete", "build", "codegen", "console", "db", "dev", "export", "generate", "help", "install", "new", "prisma", "routes", "start"]
  }

# Display help for blitz
export extern "blitz help" [
  command?: string@"commands"
]


###############
### Install ###
###############

# Install a Recipe
export extern "blitz install" [
  recipe: string
  recipe_flags?: string
	--env(-e): string						        	# Set app environment name
  --help(-h)                            # Show CLI help
  --yes(-y)                             # Install without confirmations
]


###########
### New ###
###########

def "templates" [] {
	["full", "minimal"]
}

def "languages" [] {
	["typescript", "javascript"]
}

def "form libraries" [] {
	["react-final-form", "react-hook-form", "formik"]
}

# Generates a new Blitz project
export extern "blitz new" [
	name: string
	--template: string@"templates"				# Pick your new app template 
	--language: string@"languages"				# Pick your new app language
	--dry-run(-d)							          	# Show result without writing to disk
	--no-git									            # Skips git repository creation
	--skip-upgrade							        	# Skip blitz upgrade if outdated
	--form: string@"form libraries"				# Which form library to use
	--yarn									            	# Use yarn as the package manager
	--npm								              		# Use npm as the package manager
	--pnpm									            	# Use pnpm as the package manager
]


##############
### Prisma ###
##############

def "prismaSubcommands" [] {
    ["format", "generate", "migrate", "studio"]
  }

def "migrationtypes" [] {
    ["dev", "deploy"]
  }

# Loads env variables then proxies all args to Prisma CLI
export extern "blitz prisma" [
  sub?: string@"prismaSubcommands"
  migrationType?: string@"migrationtypes"
	--env(-e): string						        	# Set app environment name
]


##############
### Routes ###
##############

# Display all Blitz URL Routes
export extern "blitz routes" [
  --help(-h)                            # Show CLI help
]


#############
### Start ###
#############

# Start the production server
export extern "blitz start" [
	--hostname(-H)					        			# Set the hostname to use for the server
	--port(-p)									          # Set the port you'd like the server to listen on
#	--no-incremental-build				    		# Disable incremental build and start from a fresh cache
	--inspect							            		# Enable the Node.js inspector
	--env(-e): string						        	# Set app environment name
  --help(-h)                            # Show CLI help
]


}

use completions *
