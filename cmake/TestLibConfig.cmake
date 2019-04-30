set(_supported_components Base Ext)

foreach(_comp ${TestLib_FIND_COMPONENTS})
  if (NOT ";${_supported_components};" MATCHES _comp)
    set(TestLib_FOUND False)
    set(TestLib_NOT_FOUND_MESSAGE "Unsupported component: ${_comp}")
  endif()
  include("${CMAKE_CURRENT_LIST_DIR}/TestLib${_comp}Targets.cmake")
endforeach()
