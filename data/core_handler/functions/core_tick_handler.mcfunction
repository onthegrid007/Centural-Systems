#function storage_handler:tick

function player_handler:tick
function orientation_handler:tick
function tp_handler:tick
function gamemode_handler:tick
function mod_handler:tick
execute if entity @p as @a run function home_handler:tick/tick

function spawn_handler:tick
