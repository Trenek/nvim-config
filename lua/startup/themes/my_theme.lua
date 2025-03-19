local banners = {
    {
        " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
        " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
        " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
        " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
        " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
        " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    },
    {
        " ▄▄▄▄▄▄▄ ▄▄▄▄▄▄   ▄▄▄▄▄▄▄ ▄▄    ▄ ▄▄▄▄▄▄▄ ▄▄▄   ▄ ",
        "█       █   ▄  █ █       █  █  █ █       █   █ █ █",
        "█▄     ▄█  █ █ █ █    ▄▄▄█   █▄█ █    ▄▄▄█   █▄█ █",
        "  █   █ █   █▄▄█▄█   █▄▄▄█       █   █▄▄▄█      ▄█",
        "  █   █ █    ▄▄  █    ▄▄▄█  ▄    █    ▄▄▄█     █▄ ",
        "  █   █ █   █  █ █   █▄▄▄█ █ █   █   █▄▄▄█    ▄  █",
        "  █▄▄▄█ █▄▄▄█  █▄█▄▄▄▄▄▄▄█▄█  █▄▄█▄▄▄▄▄▄▄█▄▄▄█ █▄█",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣀⣀⠀⠀⣀⡠⠴⠒⠚⠉⠉⠓⠒⠦⣄⣶⠒⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡷⢬⣉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠠⡌⠻⣧⢻⣧⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣖⠗⡋⢹⠀⠀⢰⡄⠀⠀⢸⣷⡀⠀⣠⠽⣆⢼⣇⢻⣸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡜⣡⣶⢋⡏⠙⢢⣏⣇⠀⠀⠈⣇⡵⡏⠀⠀⢹⡏⢾⣿⠃⢿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⢿⢻⣏⣿⡇⡄⣾⠀⠹⡄⠄⠀⡇⠀⠹⣤⠈⠹⣿⣾⢸⠀⢘⣷⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣯⣿⣽⣿⣷⢸⡗⠦⣄⡹⣼⣄⣿⣴⠛⠹⡄⡇⣿⣿⠾⠚⢹⢿⢽⣽⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣞⣾⣿⢿⣯⢻⢻⡴⠞⠁⠈⠻⣿⣌⡉⠓⣿⣰⡿⠀⠀⠀⠸⡜⡾⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⣡⠊⢸⣹⠁⠈⠙⣾⡄⠁⠀⢰⠛⠉⠉⠉⢳⣀⣿⣿⠃⠀⠀⣀⣀⣧⣿⡞⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⡴⠁⠀⠸⢿⣤⣤⣤⣹⣿⣷⣶⣾⣷⣶⣶⣺⣋⣽⣿⣷⠶⠟⠛⠋⢧⠀⠀⠸⡜⣷⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡜⠁⡰⠁⠀⠀⢠⡿⠀⠀⠀⠉⠉⠉⠙⢻⡟⣹⣿⠃⣿⠋⠁⠀⠀⠀⠀⠀⠸⡄⠀⠀⢣⠹⣧⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠏⡀⢠⠇⠀⠀⢠⡿⠁⠀⠀⠀⠀⣤⣶⡴⠚⢻⠡⣸⠀⢹⣆⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠸⡄⢻⣇⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⣼⠁⢸⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⢻⣿⣧⣀⣬⠋⠁⠀⣠⣿⣶⣆⠀⠀⠀⠀⠀⡇⠀⠀⠀⡇⠈⣿⡀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣸⣿⠀⡇⠀⢰⣸⡟⠀⠀⠀⣀⣠⠴⠚⣟⣻⣧⣯⣗⣤⣾⣿⣿⡿⠋⠀⠀⠀⠀⣸⣤⠀⠀⠀⡇⡆⢻⠃⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡿⢸⡀⣇⠀⣸⣿⡁⠀⣾⣻⡁⣀⣤⣶⠟⠋⠉⠛⢿⣋⣻⡏⠉⠀⠀⠀⠀⠀⢰⣿⡇⠀⠀⠀⣷⡇⣸⡄⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠇⠀⢧⢸⠀⣿⡿⠇⠀⠈⠛⠛⠋⠉⠀⠀⠀⠀⠀⡟⠀⣿⠇⠀⠀⠀⠀⠀⢠⣿⣿⡇⠀⠀⣰⡿⣧⣿⠃⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣄⣹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⣿⠀⠀⠀⠀⠀⠀⣸⡿⢸⠁⢠⣾⠋⢰⣿⡏⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣶⣶⡿⠀⠀⠀⠀⠀⠀⠉⠁⢸⣶⡟⠁⠀⠾⠟⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⠷⠒⠛⠉⠛⠓⠦⣤⣶⣳⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣠⠖⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣻⠽⠀⢀⣠⡔⣦⣄⠀⠰⣟⢻⡁⠉⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠸⠉⠙⠲⢷⣄⡈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠁⣠⠖⠋⠘⣇⡇⠈⠳⡄⠘⢷⣷⠀⠀⢹⡄⠀⠀⠀⠀⠀⠀⠀",
        "⠨⠷⣶⡦⢄⡈⠑⢦⡈⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⢡⡼⣓⠁⠀⠀⢿⣿⠒⠢⢽⡄⠀⠸⣧⠀⠀⢻⡀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠉⠙⠒⠯⢤⣽⡀⠉⠲⣄⠀⠀⠀⠀⠀⠀⠀⡼⢹⠇⣾⠻⣁⡟⠀⠀⠀⠻⢾⣉⡾⣷⠠⢐⣿⡆⠂⠀⢳⡀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠦⡀⠑⢄⠀⠀⢀⣀⡼⢁⣾⣿⡏⠀⠀⢠⠤⣤⣀⡀⠀⠉⠀⢸⣼⣿⣿⣷⠸⡀⠈⢧⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠳⣾⣿⣿⣷⣼⡭⣿⣧⡀⠀⡼⠀⠀⢸⠀⠀⠀⢀⣼⣿⣿⠟⢻⡀⣧⠀⠘⣇⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣇⠀⠀⢸⠀⣀⣠⣾⣿⡟⠁⠀⠈⡇⢸⡄⠀⢹⡆⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⣛⣿⣯⠿⣻⡿⠛⢿⣿⠓⠀⠀⠀⣇⠈⣇⠀⠈⣿⡀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠉⣽⡹⣏⣟⣻⣿⣷⢴⡿⢩⣿⡞⠹⡄⠀⠀⣹⣇⠀⠀⠀⣟⠀⢿⠀⢃⠸⣧⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⢰⣯⢳⡝⣦⢻⣿⢏⡾⠁⢸⠀⠷⢶⠿⣿⣿⣿⣿⠀⠀⢀⣏⠰⠌⠀⠸⡐⡽⡄⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⣾⢧⡻⣜⡧⠟⠛⣾⠁⢀⡿⠒⠎⢦⢹⣿⣿⣿⣿⣧⠀⢰⡇⠨⢀⡐⠀⡇⣝⣳⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⢀⡿⣧⣛⣾⢿⡄⢀⣽⣠⣏⠀⠢⠄⡈⢺⣿⣿⣿⣿⣿⡆⣸⠃⠀⡀⢧⠀⢸⢰⠽⡆",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢠⠊⣹⢧⢯⡽⣮⢿⣿⣿⣿⣿⣧⣀⣤⣴⣿⣿⣯⣿⢿⣿⣿⡿⠀⠁⡀⢸⠆⢸⣹⢚⣷",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⡏⠀⣿⣛⡮⣗⠿⣦⣽⠛⠿⣿⣿⣿⣿⣿⢻⣿⣷⣿⣿⣿⣿⢃⡀⠁⡀⢸⢣⠸⡜⣷⢺",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⢸⢸⡿⡼⣭⡻⣵⡿⣯⣙⢚⣧⣴⠒⣋⣡⣴⣟⠳⠴⢿⣿⣾⠀⠠⠀⡼⢣⢸⡕⣻⣿",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⢸⡇⠏⣷⡳⡽⢶⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠘⠀⣯⡄⠀⠄⣏⣛⢦⠽⣱⣟",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡘⣿⣄⢹⣳⡽⠋⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠹⣶⠀⢸⢣⡝⢮⡹⣥⡟",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⣼⡹⢾⠏⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠙⢧⣜⡳⣚⢧⢳⡽⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⠂⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⢹⢶⡙⣮⠟⠁⠀",
        "⠀⠀kyo🍀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⢛⡿⠿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⢸⡧⠟⠁⠀⠀⠀",
    },
    {
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣴⣦⣶⣤⣤⣀⣀⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⠿⠿⣶⣦⣄⡀⠀⢀⣠⣴⣶⠿⠿⠛⠋⠉⠉⠉⠉⠀⠀⠈⠉⠛⠋⠉⠉⠙⠻⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠏⠀⣠⣄⡀⠈⠙⣿⡾⠟⠋⠁⢀⣀⡤⠶⠖⠛⠛⠲⠞⠋⠉⠛⠛⠒⠲⢿⣷⣦⣄⠀⠉⠻⣷⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⡶⠾⠾⠿⠃⢀⣼⣿⣻⣿⡏⠀⠉⣀⣤⠶⠞⠉⢁⠠⠀⠄⡒⠀⠄⠂⠌⢀⠡⠐⠀⠀⠀⠈⠙⢿⣿⣦⣀⠀⠀⠈⠙⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠟⠃⠀⣀⣀⡀⠀⠀⣼⡿⣧⣿⣿⠇⢀⡼⠛⠀⠀⡀⠘⢀⠀⠄⢠⠃⠠⢀⠘⠀⠄⠀⠄⡀⠀⠀⠀⠀⠀⠸⢿⣿⣧⡀⠛⢧⡀⠘⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⠋⠀⡠⠞⠋⠀⠀⠀⢀⣾⣿⣽⣿⣿⡿⣿⠋⠀⠄⠂⢁⠠⠈⡀⠄⢈⡏⢀⠐⠠⠀⡁⠂⢁⠠⠀⠀⠀⠀⢀⠀⡀⠈⠹⣟⣿⣦⠀⢻⡄⠈⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⣠⠞⠀⡀⠀⠀⠀⠀⣾⣿⣳⣿⡿⢃⡾⠁⠀⠀⠂⢈⠀⢄⠞⠀⡐⣘⠀⠄⠂⠠⠁⡀⠌⠀⠀⠀⠀⠀⠀⠀⠁⠀⠐⡀⠙⣿⣿⠀⡀⢿⠀⠈⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⢰⢏⣾⣿⣶⣎⣠⣤⣼⣿⣿⣿⡿⠁⣼⠃⠀⠀⠀⠀⠀⣀⡞⠀⡐⠀⣷⠀⠀⢈⠀⠐⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠠⠀⠸⡟⢀⠐⣸⡇⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠃⢀⣿⣾⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⢃⢰⡇⠀⠀⠀⠀⠀⠀⡼⠀⠀⠄⠂⣽⣄⠀⠀⠀⢀⠀⠙⠧⣄⠀⠠⠀⠄⢀⠠⠐⠀⡀⢧⡐⠀⢂⠰⢸⡇⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣄⣀⣼⡟⠀⣸⣟⣿⣽⣿⣟⠻⢿⣿⣼⣿⣿⣿⢊⣼⢡⠀⠀⠀⠀⠀⣸⠇⠀⠀⠐⢀⡇⠸⣦⡀⢈⠀⠀⠀⣇⠈⠛⣦⣐⠈⠀⠄⠂⡐⠀⡀⢧⠐⡀⢎⣹⠇⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⠿⡷⡟⠿⢋⠿⢿⡿⠛⠀⢀⣼⠟⢸⣿⣿⢥⡟⣿⠀⠀⠀⠀⣰⠏⠀⡀⠄⠀⣸⠁⠀⡼⣿⣦⡀⠡⠀⠹⡄⠀⠀⠽⢷⣌⠀⠂⠄⠂⡀⠘⡄⠸⣄⢻⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣧⣛⠴⣩⠝⡊⠅⠀⠀⠀⣠⣿⠟⠀⣼⣿⣿⡎⣽⣿⠀⠀⠠⣱⠏⠀⢂⢠⠀⢠⣿⣀⡀⠀⠜⣿⣷⣦⡐⠀⢻⡄⠀⠀⣹⣿⣷⣅⠐⠠⢀⠁⡸⢐⠬⣻⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢀⣠⣶⡿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠗⡌⠀⠀⠀⣠⣾⣿⠋⠀⢸⡇⠀⢸⣷⣾⣿⠇⠀⢡⡟⠀⠌⠀⡎⠀⣼⠋⠈⠉⠓⠲⢿⣿⣿⣿⣄⠈⣧⠀⠚⠁⠺⣹⢿⣷⡆⡄⢂⡘⡇⢎⣽⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣛⢩⠁⠀⠀⠀⣠⣾⣿⡟⠁⠀⣰⣾⡇⠀⠈⣿⣿⣿⠁⢨⡿⠁⠐⠠⢁⡇⢐⣿⠀⠀⣄⠀⠀⠈⢻⣿⣿⣿⣇⢾⡇⠀⠀⣀⣼⣿⣿⣿⣷⢆⡜⣹⢂⣿⡄⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣿⣷⣄⠀⢀⣴⣿⡿⠋⠀⣰⣴⣿⣿⣻⡶⢤⣼⣿⡿⢀⣿⠃⢀⠁⠂⢸⣧⢨⣿⣿⣶⣦⣄⠀⠀⠀⠻⣿⣿⣿⣿⡇⢠⣾⣿⣿⡽⢿⣿⣿⣿⡜⣳⠐⣾⡇⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣟⣛⠻⢿⣷⣝⢿⣿⣧⣾⣿⠟⠁⠀⠀⣿⣿⣿⣋⣼⣷⡛⡟⠿⣿⣼⣟⠀⠤⠈⢀⣿⣿⣸⣿⣿⡟⣻⠝⢧⠀⠀⠀⠈⠻⣿⣿⢷⣿⣿⣿⣼⡇⠈⣿⣿⣿⣞⠱⠈⣾⡇⠀⢻⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢸⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣷⣤⠙⣿⣧⢿⣿⣿⠃⠀⡀⠀⠀⣿⡟⣿⣧⣿⣿⣿⣼⢲⡌⡽⣿⣤⠀⢂⢰⣿⣿⣿⠿⡿⠛⣿⠄⠀⠀⠀⠀⠀⠀⠈⠹⠎⢯⣙⠉⣸⠃⠸⢫⣿⣿⣯⠆⠁⢾⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢸⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⣿⣿⣇⠸⣿⣾⣿⡇⠀⠠⠆⣠⣼⣿⢀⣿⣿⣿⣿⣿⣿⣿⣼⠡⠎⠻⣿⣤⣼⡗⠻⠻⠦⣤⠴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠁⠀⠀⣾⠘⣿⠛⡇⢈⢚⡇⠀⢸⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢸⣿⣿⣿⣿⡅⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⡇⠀⢸⣿⣿⢿⣧⣼⣿⣿⣿⣿⣿⣿⣿⣿⣧⠉⠋⠙⠙⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⡁⠠⠁⠂⡸⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢸⣿⣿⡽⣿⣧⠹⣿⣿⣿⣿⣿⣿⣿⠏⣼⣿⣽⣿⡇⣰⠏⢸⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⢛⠷⠈⠀⠀⠀⠀⠹⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⢤⣿⡇⠐⠀⡁⠄⢁⠰⣿⠀⠈⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠘⢿⣿⣿⣿⣿⣷⣬⣙⡛⠿⣻⣿⣫⣾⣿⣏⣿⣿⡶⠋⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠃⠀⠀⠀⠀⠀⠀⢠⣿⣟⣳⣄⠀⠀⠀⠀⠀⠠⣴⣶⣶⣶⣾⠗⠀⠀⠀⣴⣿⣿⣿⠀⠂⠠⠐⢀⠐⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠻⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⢿⠏⠀⣴⢿⡝⠁⠈⠉⠙⢿⣿⣿⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀⣀⣼⣯⣿⡟⠻⣷⣄⡀⠀⠀⠀⠈⠉⠉⠉⠁⠀⢀⣴⣾⣿⣿⣿⣿⡇⠀⡁⠐⡀⠂⣽⡇⠀⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠐⣿⡧⣿⡿⢿⣻⣯⡿⣿⣯⣿⣾⢧⡟⠃⢠⣼⡟⡎⠀⠉⠉⠙⠛⠳⡞⣿⣿⣿⡇⠀⢀⣤⣤⣀⠀⣴⣿⡿⠟⠉⠙⢦⣽⣿⠿⢦⣤⣀⠀⠀⠀⠀⣰⠛⢻⣿⣿⣿⣿⣿⣿⣷⠀⠄⢁⠠⠐⡸⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣿⣷⣉⣿⣿⣿⣿⣿⣶⡝⣷⢿⣾⠃⣠⣾⣿⢇⡟⢀⡀⠐⠀⠀⠀⣇⢸⣿⣿⠇⠐⠋⠀⠀⢘⣿⡿⠋⠀⣠⡆⠀⣾⡟⣿⣿⣾⣿⣿⣿⣷⣾⣿⢿⡇⢸⣿⣿⣿⣿⣿⣿⡿⠀⢈⠀⠄⠂⠱⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⢸⣿⣿⢠⣿⣿⣿⢸⣷⡸⢿⣦⣄⠀⣰⣇⣾⣿⣿⠂⠈⡀⠀⠀⣸⠋⠀⣠⣾⠟⠀⢠⡟⠻⠿⠛⠋⠀⠉⠉⠙⠿⠿⣦⡁⢿⣿⣿⣿⣿⣿⣿⡇⠀⢂⠀⠂⠌⠐⣿⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣽⣿⣿⣿⢹⣿⣿⣿⣿⡿⣸⣿⣏⣾⣿⣿⡯⣾⡿⠷⢮⣽⣿⣶⣿⠿⠻⡉⠟⣶⣀⠑⠤⠀⡿⠲⣶⡿⠋⠀⣀⠾⠁⠀⠀⠀⠀⠀⠀⠀⢰⡤⠴⠟⢧⡌⠻⢿⣿⣿⣿⣿⠃⠀⠌⠐⡀⠄⠐⣻⡀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠠⣿⣿⣯⠻⣷⣍⣛⣛⢻⣴⣿⠟⣱⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠠⣅⣜⠠⠙⣿⣶⣄⣼⢧⡀⠈⠀⣀⣾⣟⣓⠂⠄⠀⠀⠀⠀⠀⠀⠘⠷⣤⣀⢨⡿⢷⣤⡈⠛⠛⠉⠋⠻⠶⣶⣦⣄⠂⢹⡇⠀⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢻⣿⣿⣷⣮⣙⡛⢛⢻⣻⣥⣿⣿⣿⣿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⣠⣿⣿⣿⣿⡄⠙⣄⠚⠉⠁⠀⠉⠙⣆⠈⠐⠠⠀⠀⠀⠀⠀⠈⢷⡄⠘⢦⡉⠉⠳⢦⡙⢦⠀⠀⠀⠉⠺⡛⢶⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢁⠠⢠⠀⡄⢠⠀⠠⢀⠀⠀⠀⠀⠀⢀⡞⠙⣿⣿⣿⣿⡄⠹⡆⠀⠀⠀⠀⠀⢯⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⢀⠳⣤⠀⠀⠁⠈⠳⡀⠀⠀⠀⠈⢢⡻⡄⠸⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⢃⠦⣡⠒⠤⠘⠠⠀⠀⠀⠀⣀⣤⠟⠁⢸⣿⣿⣿⣿⣿⡀⢹⡄⠀⠀⠀⠀⠩⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣆⠀⡈⠳⣄⠀⠀⠀⠙⢦⡀⡀⠀⠀⠙⣇⠀⠈⢻⡿⢿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠶⠿⠾⠷⠷⠶⠾⠟⠛⠉⠁⠀⡘⣿⣿⣿⣿⣿⣿⡇⠘⣧⠀⠀⠀⠀⢸⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣧⡀⠐⠘⢷⣄⠉⠦⠿⣇⠁⠀⠀⠀⠈⠳⢦⣀⣧⡀⠈⠻⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡼⢅⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣼⣿⣿⣿⣿⣿⣿⡿⢀⣿⠀⠀⠀⠀⢠⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⡈⢀⠂⠙⢿⡶⠶⠿⠶⢦⡀⠀⠀⠀⠀⠀⠙⣿⣦⠀⠙⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣈⠰⢠⢂⠠⢀⡀⠀⠀⠀⠀⠀⢀⣡⣿⣿⣿⣿⣿⣿⣿⡇⢸⡇⠀⠀⠀⠀⢸⡇⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡆⠠⠁⡈⠱⡆⠀⠀⠲⣕⡀⠀⠀⠀⠀⢀⡟⣿⣷⡀⠈⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢦⡙⡆⢬⡑⢢⠠⣉⣄⣠⡴⠞⠋⣿⣿⣿⣿⣿⣿⣿⡟⠀⡾⠀⠀⠀⠀⠀⣼⠄⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡀⠐⡀⠁⠹⡄⠀⠀⠘⢿⡄⠀⠀⣠⡾⢁⣿⣿⣿⣦⡀⠨⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠈⣿⠛⣿⣿⣿⣿⡟⡟⠛⠛⠛⠿⠛⠿⠛⠛⠟⠛⠉⠁⠠⣄⣾⣿⣿⣿⣿⣿⣿⡟⠁⣼⠁⠀⠀⠀⠀⢸⡏⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠠⢀⠁⠂⢿⠀⠀⠀⠀⣿⣦⡾⢋⣴⣿⣿⣿⣿⣿⣿⣦⡀⠈⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⣘⣿⣿⣿⣿⡱⠡⠌⢂⣄⡀⠀⠄⢂⡀⠀⠀⠄⣱⣾⣿⣿⣿⣿⣿⡿⠋⣠⢾⡇⠀⠀⠀⠀⢠⣞⢁⣸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠐⡀⠈⠄⡘⣇⠀⠀⠀⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠈⢻⣧⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⢸⡏⠀⢹⣿⣿⣿⣿⣇⠻⣌⠲⣌⠷⢬⠐⠠⢀⠂⣀⣴⣿⣿⣿⣿⠿⠛⢁⣤⠞⠁⠈⣿⣄⠀⠀⢀⣾⠇⣼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠐⡀⠡⠀⠄⢿⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⣿⡆⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⡿⠈⠻⣿⡿⢿⢷⣾⣿⣾⣽⣦⣭⣶⠟⠛⠛⠛⠛⢉⣉⣠⡴⠞⠋⠀⣠⣶⡀⠘⢿⣦⣶⡿⠋⠚⠛⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⡗⠠⠐⠀⠡⠀⢼⡆⠀⠀⢹⣿⡏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢰⣿⠁⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⢰⣿⠀⢰⡇⠠⢀⠀⢀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣾⠛⠛⠉⠁⣀⣤⣶⠿⠛⠻⣿⡀⠸⣿⡿⡖⠒⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⢀⠂⢁⠂⢁⠀⣧⠀⠀⠸⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⣸⡏⠀⣸⠀⠠⠀⠌⠀⠠⠈⢀⠐⠀⠂⠀⠈⠉⢉⣿⣿⣿⠀⢰⣾⠿⠛⠉⠀⠀⠀⠀⢿⣧⠀⢸⣷⣷⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⡐⠠⠐⠀⢂⢻⠀⠀⢸⣿⣿⣿⠟⣻⣿⣿⣿⣻⡟⣿⣿⡟⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⣿⡇⠀⣿⠀⡀⢁⠂⠈⠀⠄⠂⠀⠌⠀⠁⠀⠀⣾⣿⣿⣿⠀⠈⣿⠄⠀⠀⠀⠀⠀⠀⠩⣿⣆⠀⢻⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠠⠐⡀⠡⢀⢸⡆⠀⢸⣿⣿⣥⣿⣿⣿⣿⣿⣿⡿⠈⣿⠀⢠⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⢀⣿⠀⢰⡇⠀⠄⡀⠂⢁⠀⠂⢀⠐⠀⣈⣤⣄⣾⣿⣿⣿⣿⡄⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠸⣿⡄⠈⢿⣧⠤⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠡⠐⢀⠐⡀⠈⣷⠀⢸⣿⣿⣿⣿⣿⣿⣿⡿⡿⠁⣰⠇⠀⣾⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣸⡟⠀⢸⠃⢀⠂⠠⠐⠀⡀⠌⠀⠀⠄⣾⣿⣿⣿⢿⣿⣿⣿⡇⠀⢻⡇⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⡀⠘⣿⣆⠀⢀⠠⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡅⠂⢈⠠⠀⠄⡁⠸⡆⢸⣿⣿⣿⣿⣿⣿⡿⢱⣇⣀⡟⠀⣼⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣿⡇⠀⡿⠀⠠⠀⡁⢀⠂⠀⠠⠐⠈⠀⣿⣿⣿⣯⣿⣿⣿⣿⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣧⠀⢹⣿⡄⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⢂⠠⠈⡀⠄⠁⢿⣻⣿⣿⣿⣿⣿⡿⢠⣟⣼⡿⠁⢰⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢠⣿⠀⢰⡇⠀⡁⠠⠐⠀⠀⠀⠂⠀⠄⣠⣿⣿⣿⣟⣿⣿⣿⣿⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄⠀⢻⣧⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⣇⠈⡀⠄⠂⡀⠂⢁⠘⣿⣿⣿⣿⣿⣿⣥⡟⡴⣼⠃⢀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⢸⣿⠀⢸⡇⠀⡄⠐⢠⠀⠁⠀⡄⣴⣾⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡄⠈⣿⡆⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠀⡄⠂⠁⢠⠈⢠⠀⢹⣿⣿⣿⢻⣿⣾⢳⢳⡏⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢀⣾⡇⠀⣾⣄⣀⣄⣐⣀⣀⣀⣠⣾⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⡀⢸⣿⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣧⠀⣹⣿⣤⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⣀⣀⣸⣿⣀⣠⣔⣈⣤⣐⣀⣈⣀⣈⣹⣿⣿⣾⣷⣏⣾⠁⣠⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠈⠀⠈⠁⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢰⡆⠀⣦⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⡀⠀⢀⣄⣠⣀⣴⠀⠀⠀⠀⠀⠀⠀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡦⠀⠀⠀⠀⠀⠀⠀⠀⢰⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⠀⠀⣠⣴⣀⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢸⣇⣢⣿⠠⣶⢶⣰⣿⡒⣶⡶⠒⣶⠀⡖⢲⠶⢶⣀⣶⣶⣦⠀⢀⡟⢧⡀⡾⣿⢰⠆⣯⡠⠖⣶⠂⣶⠀⠀⢰⣶⣗⢶⠀⢀⡴⠶⣆⣰⠆⢰⡖⣶⠾⠂⠀⡇⣠⡷⢶⣄⣶⠶⣶⡶⢾⠀⠀⣰⡖⣦⢰⡶⠶⡄⣴⠶⢾⠀⠀⡻⣤⣈⠸⠶⣶⢲⡀⣰⣷⡆⣰⠶⢶⣀⡶⠶⠀⠀",
        "⢸⣧⠀⠿⠘⠯⢽⠇⠻⠤⠬⠽⠃⠿⠵⠇⢸⠆⠸⠌⠷⠾⠷⠀⠈⡧⠘⠿⠀⠿⢸⠆⠿⠱⣤⠹⠥⠿⠀⠀⢸⡵⢬⠿⠀⠀⠿⠤⠟⠹⠷⠼⠇⡿⠀⠀⠀⣇⠘⠦⠼⠃⠿⠀⠹⠦⠾⠀⠀⠿⢯⠿⢸⡇⠸⠏⠻⠦⠾⠀⠀⠦⠤⠟⠻⠭⠿⠀⠷⠇⠸⠇⠻⡤⠾⠐⡇⠰⣶⠆",
    }
}

local myQuotes = {
    {
        "Object-oriented programming is an exceptionally bad idea which could only have originated in California",
        "",
        "-- Edsger Dijkstra"
    },
    {
        "Object oriented programs are offered as alternatives to correct ones",
        "",
        "-- Edsger Dijkstra"
    },
    {
        "Lisp has jokingly been called “the most intelligent way to misuse a computer”.",
        "I think that description is a great compliment because it transmits the full flavor of liberation:",
        "it has assisted a number of our most gifted fellow humans in thinking previously impossible thoughts.",
        "",
        "-- Edsger Dijkstra"
    },
    {
        "Design patterns are spoonfeed material for brainless programmers incapable of independent thought, who will be resolved to producing code as mediocre as the design patterns they use to create it.",
        "",
        "-- Christer Ericson"
    }
}

local function getQuote()
    local quotes = require("startup.quotes")

    math.randomseed(os.clock())

    local index = math.floor(math.random() * (#quotes + #myQuotes))

    if (index < #quotes) then
        return quotes[index + 1]
    else
        return myQuotes[index + 1 - #quotes]
    end
end

local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = banners[2],
        highlight = "Statement",
        default_color = "#00FF00",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Find File", "Telescope find_files", "<leader>ff" },
            { "󰍉 Find Word", "Telescope live_grep", "<leader>lg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
            { " Settings", "lua vim.cmd.tabnew('Settings') vim.cmd.Ex(vim.fn.stdpath('config'))", "s" },
            { " Edit theme", "lua vim.cmd.tabnew('Settings') vim.cmd.e(vim.fn.stdpath('config') .. \"/lua/startup/themes/my_theme.lua\")", "t" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = getQuote(),
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", "footer" },
}
return settings
