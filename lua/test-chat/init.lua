-- luacheck: globals vim
local M = {}

-- local function on_event(job_id, data, event)
--   if data then
--     -- Assuming you want to insert into the current buffer
--     local bufnr = vim.api.nvim_get_current_buf()
--     -- Insert the data at the end of the buffer
--     vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
--   end
-- end
-- local function on_event(job_id, data, event)
--   if data then
--     local bufnr = vim.api.nvim_get_current_buf()
--
--     -- Get the last line number
--     -- local last_line_num = vim.api.nvim_buf_line_count(bufnr)
--
--     -- local line_num = vim.api.nvim_win_get_cursor(bufnr)
--
--     local line_num = vim.api.nvim_buf_get_mark(bufnr, ".")
--     -- Get the content of the last line
--     local last_line = vim.api.nvim_buf_get_lines(bufnr, line_num[1] - 1, line_num[1], false)[1]
--
--     -- Append new text ('data') to the content of the last line
--     local appended_line = last_line .. table.concat(data, "")
--
--     -- Replace the last line with the new content
--     vim.api.nvim_buf_set_lines(bufnr, line_num[1] - 1, line_num[1], false, {appended_line})
--   end
-- end
--


-- Rewritten function to handle a table of strings and filter out ANSI codes from each
local function filter_ansi_codes(strings)
    local filteredStrings = {}
    for i, str in ipairs(strings) do
        filteredStrings[i] = str:gsub("\027%[[0-9;]+m\027%[[0-9;]+m", "")
    end
    return filteredStrings
end

local function on_event(job_id, data, event)
    if data then
        local bufnr = vim.api.nvim_get_current_buf()
        local line_num = vim.api.nvim_buf_get_mark(bufnr, '.')
        local last_line = vim.api.nvim_buf_get_lines(bufnr, line_num[1] - 1, line_num[1], false)[1]

        -- Split incoming data into lines
        local data_lines = filter_ansi_codes(data)

        -- Check if the last line is non-empty and should be concatenated with the first incoming line
        if last_line and #last_line > 0 and #data_lines > 0 then
            data_lines[1] = last_line .. data_lines[1]
            -- table.remove(data_lines, 1) -- Uncomment this if you genuinely need to remove the first element
        end
        -- Set the first line separately if it was concatenated with the last line of the buffer
        vim.api.nvim_buf_set_lines(bufnr, line_num[1] - 1, line_num[1], false, { data_lines[1] })

        -- Append the rest of the data as new lines
        if #data_lines > 1 then
            vim.api.nvim_buf_set_lines(bufnr, line_num[1], line_num[1], false, vim.list_slice(data_lines, 2))
        end
    end
end

local function stream_command_output_to_buffer(command)
    local opts = {
        on_stdout = on_event,
        on_stderr = on_event,
        stdout_buffered = true,
        stderr_buffered = true
    }
    vim.fn.jobstart(command, opts)
end

function M.ask()
    local input = vim.fn.input("Enter input: ")
    stream_command_output_to_buffer({ '/Users/olofmoriya/versioned/personal/chat/target/release/chat', '-c vim', '-m "' ..
    input .. '"' })
end

-- Modify the setup_buffer function to take a parameter to decide whether to clear the buffer
local function setup_buffer(clearBuffer)
    local bufnbr = vim.api.nvim_get_current_buf()
    local start = vim.api.nvim_buf_get_mark(bufnbr, "<")
    local finish = vim.api.nvim_buf_get_mark(bufnbr, ">")
    vim.api.nvim_buf_set_mark(bufnbr, 'c', start[1], start[2], {})
    local text = vim.api.nvim_buf_get_lines(bufnbr, start[1] - 1, finish[1], false)
    if clearBuffer then
        vim.api.nvim_buf_set_lines(bufnbr, start[1] - 1, finish[1], false, { "" })
    end
    return text, start[1], finish[1]
end

function M.replace()
    local text, _, _ = setup_buffer(true)
    local command = '/Users/olofmoriya/versioned/personal/chat/target/release/chat'
    local arguments = { '-c', 'vim', '-m', '\'' .. table.concat(text, "\n") .. '\'' }
    stream_command_output_to_buffer({ command, unpack(arguments) })
end

function M.replacellama()
    local text, _, _ = setup_buffer(true)
    local command = 'ollama'
    local arguments = {'run', 'codellama', '\'' .. table.concat(text, "\n") .. '\'' }
    stream_command_output_to_buffer({ command, unpack(arguments) })
end

return M;
