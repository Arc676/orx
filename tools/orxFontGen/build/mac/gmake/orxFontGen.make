# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug64
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxDEBUG__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/SOIL/include -I../../../../../extern/freetype-2.4.1/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -m64 -x c++ -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -fvisibility-inlines-hidden
  CXXFLAGS  += $(CFLAGS) -fno-exceptions
  LDFLAGS   += -L../../../lib -L../../../../../code/lib/dynamic -L../../../../../extern/SOIL/lib/mac -L../../../../../extern/freetype-2.4.1/lib/mac -m64 -L/usr/lib64 -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -dead_strip
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lorxd -lSOIL -lfreetype -framework OpenGL
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin
  endef
endif

ifeq ($(config),profile64)
  OBJDIR     = obj/x64/Profile
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxPROFILER__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/SOIL/include -I../../../../../extern/freetype-2.4.1/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m64 -x c++ -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -fvisibility-inlines-hidden
  CXXFLAGS  += $(CFLAGS) -fno-exceptions -fno-rtti
  LDFLAGS   += -L../../../lib -L../../../../../code/lib/dynamic -L../../../../../extern/SOIL/lib/mac -L../../../../../extern/freetype-2.4.1/lib/mac -m64 -L/usr/lib64 -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -dead_strip
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lorxp -lSOIL -lfreetype -framework OpenGL
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/SOIL/include -I../../../../../extern/freetype-2.4.1/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m64 -x c++ -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -fvisibility-inlines-hidden
  CXXFLAGS  += $(CFLAGS) -fno-exceptions -fno-rtti
  LDFLAGS   += -L../../../lib -L../../../../../code/lib/dynamic -L../../../../../extern/SOIL/lib/mac -L../../../../../extern/freetype-2.4.1/lib/mac -m64 -L/usr/lib64 -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -dead_strip
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lorx -lSOIL -lfreetype -framework OpenGL
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin
  endef
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxDEBUG__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/SOIL/include -I../../../../../extern/freetype-2.4.1/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -m32 -x c++ -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -fvisibility-inlines-hidden -mfix-and-continue
  CXXFLAGS  += $(CFLAGS) -fno-exceptions
  LDFLAGS   += -L../../../lib -L../../../../../code/lib/dynamic -L../../../../../extern/SOIL/lib/mac -L../../../../../extern/freetype-2.4.1/lib/mac -m32 -L/usr/lib32 -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -dead_strip
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lorxd -lSOIL -lfreetype -framework OpenGL
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin
  endef
endif

ifeq ($(config),profile32)
  OBJDIR     = obj/x32/Profile
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxPROFILER__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/SOIL/include -I../../../../../extern/freetype-2.4.1/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m32 -x c++ -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -fvisibility-inlines-hidden -mfix-and-continue
  CXXFLAGS  += $(CFLAGS) -fno-exceptions -fno-rtti
  LDFLAGS   += -L../../../lib -L../../../../../code/lib/dynamic -L../../../../../extern/SOIL/lib/mac -L../../../../../extern/freetype-2.4.1/lib/mac -m32 -L/usr/lib32 -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -dead_strip
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lorxp -lSOIL -lfreetype -framework OpenGL
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/SOIL/include -I../../../../../extern/freetype-2.4.1/include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m32 -x c++ -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -fvisibility-inlines-hidden -mfix-and-continue
  CXXFLAGS  += $(CFLAGS) -fno-exceptions -fno-rtti
  LDFLAGS   += -L../../../lib -L../../../../../code/lib/dynamic -L../../../../../extern/SOIL/lib/mac -L../../../../../extern/freetype-2.4.1/lib/mac -m32 -L/usr/lib32 -isysroot /Developer/SDKs/MacOSX10.6.sdk -mmacosx-version-min=10.6 -dead_strip
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -lorx -lSOIL -lfreetype -framework OpenGL
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin
  endef
endif

OBJECTS := \
	$(OBJDIR)/orxFontGen.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking orxFontGen
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning orxFontGen
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	-$(SILENT) cp $< $(OBJDIR)
else
	$(SILENT) xcopy /D /Y /Q "$(subst /,\,$<)" "$(subst /,\,$(OBJDIR))" 1>nul
endif
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.gch=%.d) -c "$<"
endif

$(OBJDIR)/orxFontGen.o: ../../../src/orxFontGen.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
