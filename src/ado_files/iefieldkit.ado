*! version 5.4 15DEC2017  DIME Analytics lcardosodeandrad@worldbank.org

capture program drop iefieldkit
program iefieldkit, rclass

	* UPDATE THESE LOCALS FOR EACH NEW VERSION PUBLISHED
	local version "5.4"
	local versionDate "15DEC2017"

	syntax [anything]

	/**********************
		Error messages
	**********************/

	* Make sure that no arguments were passed
	if "`anything'" != "" {
		noi di as error "This command does not take any arguments, write only {it:iefieldkit}"
		error 198
	}

	/**********************
		Output
	**********************/

	* Prepare returned locals
	return local 	versiondate "`versionDate'"
	return scalar 	version		= `version'

	* Display output
	noi di ""
	noi di _col(4) "This version of iefieldkit installed is version " _col(54)"`version'"
	noi di _col(4) "This version of iefieldkit was released on " _col(54)"`versionDate'"

end
