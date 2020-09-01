// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
	config: {
		updateChannel: "stable",
		fontSize: 12,
		fontFamily: '"FiraCodeNerdFontComplete-Retina", monospace',
		// fontFamily: '"FiraCode-Retina", "Fira Code", monospace',
		// fontFamily: '"Meslo LG S for Powerline", monospace',

		shell: "/usr/local/bin/zsh",
		shellArgs: ["--login"],
		copyOnSelect: true,

		// must be set to false to make it works with hyper-font-ligatures
		webGLRenderer: false,
	},

	plugins: [
		"hyper-font-ligatures",
		"hyper-samewd",
		"hyper-dracula",
		// "hyper-solarized-dark",
		// "hyper-opacity",
		// 'hyperterm-base16-tomorrow-dark'
	],

	localPlugins: [],

	keymaps: {
		"tab:next": "ctrl+tab",
		"tab:prev": "ctrl+shift+tab",
	},
};
