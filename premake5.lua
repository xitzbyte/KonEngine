
workspace "KonEngine"
 location "Build"
 architecture "x86_64"
 startproject "Sandbox"
 configurations {"Debug", "Release"}

include "Engine"
include "Sandbox"