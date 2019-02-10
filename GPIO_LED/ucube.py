src     = Split('''
        GPIO_LED.c
''')

component = aos_component('GPIO_LED', src)
component.add_comp_deps('kernel/yloop', 'tools/cli')
component.add_global_macros('AOS_NO_WIFI')
