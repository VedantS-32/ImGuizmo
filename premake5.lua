project "ImGuizmo"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "off"
	systemversion "latest"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"GraphEditor.h",
		"GraphEditor.cpp",
		"ImGuizmo.h",
		"ImGuizmo.cpp",
		"ImGradient.h",
		"ImGradient.cpp",
		"ImSequencer.h",
		"ImSequencer.cpp",
		"ImCurveEdit.h",
		"ImCurveEdit.cpp",
		"ImZoomSlider.h"
	}

	includedirs {
      "",
		"../imgui"
	}

	links {
		"imgui"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
