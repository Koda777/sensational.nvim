local impatient_ok, impatient = pcall(require, "impatient")

if impatient_ok then
	impatient.enable_profile()
end

for _, source in ipairs({
	"sensational.lua.settings",
}) do
	local status_ok, fault = pcall(require, source)
	if not status_ok then
		error("Error loading " .. source .. "\n\n" .. fault)
	end
end
