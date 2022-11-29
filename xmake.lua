set_languages("cxx20")
add_rules("mode.debug", "mode.releasedbg", "mode.release")

if is_mode("release") then
  add_defines("NDEBUG")
  set_optimize("fastest")
end

target("PapyrusVM")
  set_kind("static")
  if is_plat("windows") then
    add_defines("WIN32")
  end
  add_headerfiles("src/**.h")
  add_headerfiles("libs/**.h")
  add_files("src/**.cpp")
  add_files("libs/**.cpp")
