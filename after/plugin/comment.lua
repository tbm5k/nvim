local status, comment = pcall(require, 'nvim_comment')
if(not status) then
    print("nvim_comment not installed")
    return
end

comment.setup()
