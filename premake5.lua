project "spirv-cross"
    location ""
    language "C++"
    cppdialect "C++latest"

    files {
        "main.cpp",

    }

    includedirs {

    }

    defines {
        "HAVE_SPIRV_CROSS_GIT",
    }

    filter "platforms:Static"
    kind "StaticLib"

    filter "platforms:Shared"
    kind "SharedLib"
    postbuildcommands {
        ("{COPY} \"%{wks.location}/bin/" .. outputdir .. "/Utils/*.dll\" %{cfg.targetdir}"),
    }
