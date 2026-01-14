return {
    cmd = {
        'clangd',
        '--clang-tidy',
--      '--cross-file-rename',
        '-header-insertion=never',
--      random thing for eric
        "--query-driver=/proj/rbsNodeIfStorage/nodeif/**/x86_64-wrs-linux-g*"
    },
}
