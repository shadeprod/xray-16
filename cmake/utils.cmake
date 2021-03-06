macro(add_dir DIRS)
  foreach(dir ${DIRS})
    message( "adding  ${dir} to ${PROJECT_NAME}")
    include_directories  (${dir} )
    file( GLOB ${dir}__INCLUDES_H ${dir} ${dir}/*.h)
    file( GLOB ${dir}__INCLUDES_HPP ${dir} ${dir}/*.hpp)
    list( APPEND ${PROJECT_NAME}__INCLUDES ${${dir}__INCLUDES_H} ${${dir}__INCLUDES_HPP} )
    file( GLOB ${dir}__SOURCES_CPP ${dir} ${dir}/*.cpp)
    file( GLOB ${dir}__SOURCES_C ${dir} ${dir}/*.c)
    list( APPEND ${PROJECT_NAME}__SOURCES ${${dir}__SOURCES_C} ${${dir}__SOURCES_CPP} )
  endforeach()
endmacro()
