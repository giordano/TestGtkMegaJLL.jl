module TestGtkMegaJLL

using Pkg, Pkg.BinaryPlatforms, Pkg.Artifacts, Libdl
import Base: UUID

# We put these inter-JLL-package API values here so that they are always defined, even if there
# is no underlying wrapper held within this JLL package.
const PATH_list = String[]
const LIBPATH_list = String[]

# # Load Artifacts.toml file
artifacts_toml = joinpath(@__DIR__, "..", "Artifacts.toml")

# Extract all platforms
artifacts = Pkg.Artifacts.load_artifacts_toml(artifacts_toml; pkg_uuid=UUID("05f542c5-fd2e-4f6f-a354-1fd7cae9a8d6"))
platforms = [Pkg.Artifacts.unpack_platform(e, "ATK", artifacts_toml) for e in artifacts["ATK"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Bzip2", artifacts_toml) for e in artifacts["Bzip2"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Cairo", artifacts_toml) for e in artifacts["Cairo"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Dbus", artifacts_toml) for e in artifacts["Dbus"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Expat", artifacts_toml) for e in artifacts["Expat"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Fontconfig", artifacts_toml) for e in artifacts["Fontconfig"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "FreeType2", artifacts_toml) for e in artifacts["FreeType2"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "FriBidi", artifacts_toml) for e in artifacts["FriBidi"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "GTK3", artifacts_toml) for e in artifacts["GTK3"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Gettext", artifacts_toml) for e in artifacts["Gettext"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Glib", artifacts_toml) for e in artifacts["Glib"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Graphene", artifacts_toml) for e in artifacts["Graphene"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Graphite2", artifacts_toml) for e in artifacts["Graphite2"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "HarfBuzz", artifacts_toml) for e in artifacts["HarfBuzz"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "JpegTurbo", artifacts_toml) for e in artifacts["JpegTurbo"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "LZO", artifacts_toml) for e in artifacts["LZO"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libepoxy", artifacts_toml) for e in artifacts["Libepoxy"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libffi", artifacts_toml) for e in artifacts["Libffi"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libgcrypt", artifacts_toml) for e in artifacts["Libgcrypt"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libglvnd", artifacts_toml) for e in artifacts["Libglvnd"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libgpg_error", artifacts_toml) for e in artifacts["Libgpg_error"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libiconv", artifacts_toml) for e in artifacts["Libiconv"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libtiff", artifacts_toml) for e in artifacts["Libtiff"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Libuuid", artifacts_toml) for e in artifacts["Libuuid"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "PCRE", artifacts_toml) for e in artifacts["PCRE"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Pango", artifacts_toml) for e in artifacts["Pango"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Pixman", artifacts_toml) for e in artifacts["Pixman"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Wayland", artifacts_toml) for e in artifacts["Wayland"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Wayland_protocols", artifacts_toml) for e in artifacts["Wayland_protocols"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "X11", artifacts_toml) for e in artifacts["X11"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "XML2", artifacts_toml) for e in artifacts["XML2"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "XSLT", artifacts_toml) for e in artifacts["XSLT"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_compositeproto", artifacts_toml) for e in artifacts["Xorg_compositeproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_damageproto", artifacts_toml) for e in artifacts["Xorg_damageproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_fixesproto", artifacts_toml) for e in artifacts["Xorg_fixesproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_glproto", artifacts_toml) for e in artifacts["Xorg_glproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_inputproto", artifacts_toml) for e in artifacts["Xorg_inputproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_kbproto", artifacts_toml) for e in artifacts["Xorg_kbproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libX11", artifacts_toml) for e in artifacts["Xorg_libX11"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXau", artifacts_toml) for e in artifacts["Xorg_libXau"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXcomposite", artifacts_toml) for e in artifacts["Xorg_libXcomposite"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXcursor", artifacts_toml) for e in artifacts["Xorg_libXcursor"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXdamage", artifacts_toml) for e in artifacts["Xorg_libXdamage"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXdmcp", artifacts_toml) for e in artifacts["Xorg_libXdmcp"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXext", artifacts_toml) for e in artifacts["Xorg_libXext"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXfixes", artifacts_toml) for e in artifacts["Xorg_libXfixes"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXi", artifacts_toml) for e in artifacts["Xorg_libXi"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXinerama", artifacts_toml) for e in artifacts["Xorg_libXinerama"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXrandr", artifacts_toml) for e in artifacts["Xorg_libXrandr"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXrender", artifacts_toml) for e in artifacts["Xorg_libXrender"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libXtst", artifacts_toml) for e in artifacts["Xorg_libXtst"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libpthread_stubs", artifacts_toml) for e in artifacts["Xorg_libpthread_stubs"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libxcb", artifacts_toml) for e in artifacts["Xorg_libxcb"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_libxkbfile", artifacts_toml) for e in artifacts["Xorg_libxkbfile"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_randrproto", artifacts_toml) for e in artifacts["Xorg_randrproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_recordproto", artifacts_toml) for e in artifacts["Xorg_recordproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_renderproto", artifacts_toml) for e in artifacts["Xorg_renderproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_util_macros", artifacts_toml) for e in artifacts["Xorg_util_macros"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xcb_proto", artifacts_toml) for e in artifacts["Xorg_xcb_proto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xextproto", artifacts_toml) for e in artifacts["Xorg_xextproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xineramaproto", artifacts_toml) for e in artifacts["Xorg_xineramaproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xkbcomp", artifacts_toml) for e in artifacts["Xorg_xkbcomp"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xkeyboard_config", artifacts_toml) for e in artifacts["Xorg_xkeyboard_config"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xproto", artifacts_toml) for e in artifacts["Xorg_xproto"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Xorg_xtrans", artifacts_toml) for e in artifacts["Xorg_xtrans"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Zlib", artifacts_toml) for e in artifacts["Zlib"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "Zstd", artifacts_toml) for e in artifacts["Zstd"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "adwaita_icon_theme", artifacts_toml) for e in artifacts["adwaita_icon_theme"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "at_spi2_atk", artifacts_toml) for e in artifacts["at_spi2_atk"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "at_spi2_core", artifacts_toml) for e in artifacts["at_spi2_core"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "gdk_pixbuf", artifacts_toml) for e in artifacts["gdk_pixbuf"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "hicolor_icon_theme", artifacts_toml) for e in artifacts["hicolor_icon_theme"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "iso_codes", artifacts_toml) for e in artifacts["iso_codes"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "libpng", artifacts_toml) for e in artifacts["libpng"]]
platforms = [Pkg.Artifacts.unpack_platform(e, "xkbcommon", artifacts_toml) for e in artifacts["xkbcommon"]]

# Filter platforms based on what wrappers we've generated on-disk
platforms = filter(p -> isfile(joinpath(@__DIR__, "wrappers", triplet(p) * ".jl")), platforms)

# From the available options, choose the best platform
best_platform = select_platform(Dict(p => triplet(p) for p in platforms))

# Silently fail if there's no binaries for this platform
if best_platform === nothing
    @debug("Unable to load TestGtkMegaJLL; unsupported platform $(triplet(platform_key_abi()))")
else
    # Load the appropriate wrapper
    include(joinpath(@__DIR__, "wrappers", "x86_64-linux-gnu.jl"))
end

end # module
