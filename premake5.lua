project "ImGuizmo"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"
	systemversion "latest"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs {
		"%{IncludeDir.imgui}"
	}

	files {
		"*.h",
		"*.cpp"
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
