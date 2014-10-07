
# True if the library is actually to be created in this block
SET(BII_CREATE_LIB False)
# All the source code files of this library
SET(BII_LIB_SRC  )
# STATIC or SHARED
SET(BII_LIB_TYPE STATIC)
# Data files that have to be copied to bin 
SET(BII_LIB_DATA_FILES  )
# Dependencies to other libraries (user2_block2, user3_blockX)
SET(BII_LIB_DEPS )
# System linking requirements as winmm, m, ws32, pthread...
SET(BII_LIB_SYSTEM_DEPS )


# Executables to be created
SET(BII_BLOCK_EXES hello_world)
# Each executable has 2 parts: MAIN and SRC
# MAIN is initially the file that contains the main() function
# SRC are other files from this block, that are required by this main()


# EXECUTABLE hello_world ##################################

# The name of the executable, is user_block_filename, but you can change
SET(BII_hello_world_NAME manu343726_tmp101turbo_hello_world)
# The main file in with the main() function is located
SET(BII_hello_world_MAIN hello_world.cpp)
# Other files that the executable needs. If BII_CREATE_LIB, they are
# in the block library, and they are not added to the executable
SET(BII_hello_world_SRC )
SET(BII_hello_world_MAIN_DATA_FILES  )
# The dependencies (e.g. user2_blockX) of the main file
SET(BII_hello_world_MAIN_DEPS )
# System dependencies (e.g. winmm, pthread) of the main file
SET(BII_hello_world_MAIN_SYSTEM_DEPS )
SET(BII_hello_world_SRC_DATA_FILES  )
# The dependencies (e.g. user2_blockX) of the other files
SET(BII_hello_world_SRC_DEPS )
# System dependencies (e.g. winmm, pthread) of the other files
SET(BII_hello_world_SRC_SYSTEM_DEPS )

