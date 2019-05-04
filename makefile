INCL_DIR	= ./include
BIN_DIR		= ./bin
SRC_DIR		= ./src
PROJ_DIRS	= $(BIN_DIR) $(INCL_DIR) $(SRC_DIR)
CC 		= gcc
SOURCES		= $(shell find . -type f -regex ".*\.c")
TARGET_EXEC	= main

$(TARGET_EXEC)	: $(SOURCES) 
		$(CC) -I$(INCL_DIR) -o $(BIN_DIR)/$(TARGET_EXEC) $(SOURCES)
clean		:
		find . -type f -regex ".*\.\([osi]\|exe\|out\)\|tags" | xargs rm -f
init		:
		mkdir $(PROJ_DIRS)

