
--// GLFW library
project "glfw"
 location "ThirdParty"
 kind "StaticLib"
 language "C"
 cdialect "C11"

 targetdir "%{wks.location}/Bin/%{cfg.buildcfg}"
 objdir "%{wks.location}/Bin/Int/%{cfg.buildcfg}"

 files {"glfw/include/**.h", "glfw/src/**.c"}
 includedirs {"glfw/include"}

 filter "system:windows"
  defines {"_GLFW_WIN32"}

 filter "system:linux"
  defines {"_GLFW_WAYLAND"}

 filter "system:macosx"
  defines {"_GLFW_COCOA"}

--// The engine itself
project "KonEngine"
 kind "StaticLib"
 language "C++"
 cppdialect "C++17"

 targetdir "%{wks.location}/Bin/%{cfg.buildcfg}"
 objdir "%{wks.location}/Bin/Int/%{cfg.buildcfg}"

 links {"glfw"}
 files {"Public/**.h", "RunTime/**.h", "RunTime/**.cpp"}
 includedirs {"glfw/include", "Public/**.h"}
