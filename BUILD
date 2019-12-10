java_library(
    name = "changes_often",
    srcs = ["ChangesOften.java"],
)

java_library(
    name = "inherited",
    srcs = ["Inherited.java"],
    deps = [":changes_often"],
)

java_library(
    name = "on_inherited",
    srcs = ["OnInherited.java"],
    deps = [":inherited"],
)

java_library(
    name = "not_exposed",
    srcs = ["NotExposed.java"],
    deps = [":changes_often"],
)

java_library(
    name = "on_not_exposed",
    srcs = ["OnNotExposed.java"],
    deps = [":not_exposed"],
)
