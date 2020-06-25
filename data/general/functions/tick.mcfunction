# Access Log:
# Handle	Date		Comment
# Bonesdog	06/19/2020	Added storage handler tick refference & inital comment header.
# Bonesdog	06/21/2020	Added spawn_handler tick refference
#
# Description: This mcfunction file should be used as the main tick, ideally running core/system level first then conditionally running
#                subsequent tasks in the main tick loop.

# Note: Storage Handler should be in the core handler when made as it is a core component; All other plugin components should use core features
#       /this storage when neccisary.
function storage_handler:tick

function playerhandler:tick
function orientationhandler:tick
function tphandler:tick
function gamemodehandler:tick
function modhandler:tick
function homehandler:tick

# Note: This is incomplete but I am commenting each section of code to better seperate it out later
function spawn_handler:tick
