local lightSolarized = {

	white =         '#eee8d5',
	gray =          '#073642',
	black =         '#002b36',
	red =           '#dc322f',
	green =         '#7d8d09',
	yellow =        '#6c71c4',
	paleblue =      '#586e75',
	cyan =          '#7d8d09',
	blue =          '#073642',
	purple =        '#b58900',
	orange =        '#cb4b16',
	pink =          '#073642',

	bg =            '#fdf6e3',
	bg_alt =        '#eee8d5',
	fg =            '#657b83',
	text =          '#586e75',
	comments =      '#657b83',
	selection =     '#d3cfc1',
	contrast =      '#002b36',
	active =        '#d8ccc4',
	border =        '#002b36',
	line_numbers =  '#839496',
	highlight =     '#d8ccc4',
	disabled =      '#073642',
	cursor =        '#268bd2',
	accent =        '#073642',

	error =         '#d33682',
	link =          '#2aa198',

	none =          'NONE'
}

local solarized = {

	white =         '#eee8d5',
	gray =          '#073642',
	black =         '#002b36',
    base1 =         '#93a1a1',
	red =           '#dc322f',
	green =         '#7d8d09',
	yellow =        '#6c71c4',
	paleblue =      '#586e75',
	cyan =          '#2aa198',
	blue =          '#268bd2',
	purple =        '#b58900',
	orange =        '#cb4b16',
	pink =          '#073642',
    violet =        '#6c71c4',
    magenta =       '#d33682',

	bg =            '#002b36',
	bg_alt =        '#073642',
	fg =            '#657b83',
	text =          '#586e75',
	comments =      '#586e75',
	selection =     '#657b83',
	contrast =      '#002b36',
	active =        '#d8ccc4',
	border =        '#002b36',
	line_numbers =  '#839496',
	highlight =     '#657b83',
	disabled =      '#073642',
	cursor =        '#586e75',
	accent =        '#073642',

	error =         '#d33682',
	link =          '#2aa198',

	none =          'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.solarized_contrast == false then
    solarized.sidebar = solarized.bg
    solarized.float = solarized.bg
else
    solarized.sidebar = solarized.bg_alt
    solarized.float = solarized.bg_alt
end

return solarized
