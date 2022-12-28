#CLI completions for blitz.js tool and framework
#Install with npm and not yarn

module completions {

def "templates" [] {
	["full", "minimal"]
}

def "languages" [] {
	["typescript", "javascript"]
}

def "form libraries" [] {
	["react-final-form", "react-hook-form", "formik"]
}

def "types" [] {
	["all", "resource", "model", "crud", "queries", "query", "mutations", "mutation", "pages"]
}


# export extern "blitz" []

# Generates a new Blitz project
export extern "blitz new" [
	name: string
	--template: string@"templates"				# Lets you choose a project's template
	--language: string@"languages"				# A new project's language
	--dry-run(-d)								# Displays what files would be generated but does not write the files to disk
	--no-git									# Skips git repository creation
	--skip-upgrade								# Skip blitz upgrade if outdated
	--form: string@"form libraries"				# A form library for the full project
	--yarn										# Use yarn as the package manager
	--npm										# Use npm as the package manager
	--pnpm										# Use pnpm as the package manager
	--env(-e): string							# Set app environment name
]

# Starts the Blitz development server. (blitz d)
export extern "blitz dev" [
	--hostname(-H)								# Set the hostname to use for the server
	--port(-p)									# Set the port you'd like the server to listen on
	--no-incremental-build						# Disable incremental build and start from a fresh cache
	--inspect									# Enable the Node.js inspector
	--env(-e): string							# Set app environment name
]
#Starts the Blitz development server. (blitz dev)
export extern "blitz d" [
	--hostname(-H)								# Set the hostname to use for the server
	--port(-p)									# Set the port you'd like the server to listen on
	--no-incremental-build						# Disable incremental build and start from a fresh cache
	--inspect									# Enable the Node.js inspector
	--env(-e): string							# Set app environment name
]

# Starts the Blitz production server. (Make sure to run blitz build first)
export extern "blitz start" [
	--hostname(-H)								# Set the hostname to use for the server
	--port(-p)									# Set the port you'd like the server to listen on
	--no-incremental-build						# Disable incremental build and start from a fresh cache
	--inspect									# Enable the Node.js inspector
	--env(-e): string							# Set app environment name
]

#Create a production build of your Blitz app (blitz b)
export extern "blitz build" [

	--env(-e): string							# Set app environment name
]
#Create a production build of your Blitz app (blitz build)
export extern "blitz b" [
	--env(-e): string							# Set app environment name
]

#Exports your Blitz app as a static application (Make sure to run blitz build first)
export extern "blitz export" [
	-o											# Set the output directory
	--env(-e): string							# Set app environment name
]
#Exports your Blitz app as a static application (Make sure to run blitz build first)
export extern "blitz e" [
	-o											# Set the output directory
	--env(-e): string							# Set app environment name
]

#This loads all your environment variables and then proxies all arguments to the Prisma CLI
export extern "blitz prisma" [
	--env(-e): string							# Set app environment name
]

export extern "blitz prisma generate" []
export extern "blitz prisma migrate" []
export extern "blitz prisma migrate dev" []
export extern "blitz prisma migrate deploy" []
export extern "blitz prisma studio" []

# Generate pages, queries, mutations, and Prisma models into your project
export extern "blitz generate" [
	type: string@"types"
	model?: string
	fields?: string
	--parent(-p): string						# specify that you want to generate files for a model which is a child of a parent model
	--dry-run(-d)								# Displays what files would be generated but does not write the files to disk
	--env(-e): string							# Set app environment name
]

# Generate pages, queries, mutations, and Prisma models into your project
export extern "blitz g" [
	type: string@"types"
	model?: string
	fields?: string
	--parent(-p): string						# specify that you want to generate files for a model which is a child of a parent model
	--dry-run(-d)								# Displays what files would be generated but does not write the files to disk
	--env(-e): string							# Set app environment name
]

# Generate the Route Manifest and Prisma client
export extern "blitz codegen" [
	--env(-e): string							# Set app environment name
]

# Generate the Route Manifest and Prisma client
export extern "blitz cg" [
	--env(-e): string							# Set app environment name
]

# Display all Blitz URL Routes
export extern "blitz routes" []
# Display all Blitz URL Routes
export extern "blitz r" []

export extern "blitz autocomplete" []

# Display help for blitz
export extern "blitz help" []

# Run database commands
export extern "blitz db" []

}

use completions *
