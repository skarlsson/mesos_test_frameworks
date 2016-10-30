project(rendler)

add_executable(crawl_executor crawl_executor.cpp ${SRCS})
target_link_libraries(crawl_executor ${CSI_MESOS_CLIENT_LIBS})

add_executable(render_executor render_executor.cpp ${SRCS})
target_link_libraries(render_executor ${CSI_MESOS_CLIENT_LIBS})


add_executable(rendler rendler.cpp ${SRCS})
target_link_libraries(rendler ${CSI_MESOS_CLIENT_LIBS})
