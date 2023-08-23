local sources = {
	"settings",
}

for _, source in ipairs(sources) do
	local status_ok, fault = pcall(require, source)
	if status_ok then
		source.config()
	end
end
