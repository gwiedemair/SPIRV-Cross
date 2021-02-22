project "spirv-cross"
    location ""
    language "C++"
    cppdialect "C++latest"

    files {
		"spirv.hpp",
		"spirv_common.hpp",
		"spirv_cfg.hpp",
		"spirv_cpp.hpp",
		"spriv_parser.hpp",
		"spirv_cross.hpp",
		"spirv_cross_containers.hpp",
		"spirv_cross_parsed_ir.hpp",
		"spirv_cross_error_handling.hpp",
		"spirv_cross_util.hpp",
		"spirv_cfg.cpp",
		"spirv_cpp.cpp",
		"spirv_parser.cpp",
		"spirv_cross.cpp",
		"spirv_cross_parsed_ir.cpp",
		"spirv_cross_util.cpp",
    }

    includedirs {
    }

    defines {
    }

    filter "platforms:Static"
    kind "StaticLib"

    filter "platforms:Shared"
    kind "SharedLib"
    postbuildcommands {
        --("{COPY} \"%{wks.location}/bin/" .. outputdir .. "/Utils/*.dll\" %{cfg.targetdir}"),
    }
