// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
	config: {
		// Choose either "stable" for receiving highly polished,
		// or "canary" for less polished but more frequent updates
		updateChannel: "stable",

		// default font size in pixels for all tabs
		fontSize: 12,

		// font family with optional fallbacks
		fontFamily: '"FiraCodeNerdFontComplete-Retina", monospace',
		// fontFamily: '"FiraCode-Retina", "Fira Code", monospace',

		// the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
		// if left empty, your system's login shell will be used by default
		//
		// Windows
		// - Make sure to use a full path if the binary name doesn't work
		// - Remove `--login` in shellArgs
		//
		// Bash on Windows
		// - Example: `C:\\Windows\\System32\\bash.exe`
		//
		// Powershell on Windows
		// - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
		shell: "/usr/local/bin/zsh",

		// for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
		// by default ['--login'] will be used
		shellArgs: ["--login"],

		// for environment variables
		env: {},

		// set to false for no bell
		bell: "SOUND",

		// if true, selected text will automatically be copied to the clipboard
		copyOnSelect: true,

		// if true, on right click selected text will be copied or pasted if no
		// selection is present (true by default on Windows)
		// quickEdit: true

		// URL to custom bell
		// bellSoundURL: 'http://example.com/bell.mp3',

		// for advanced config flags please refer to https://hyper.is/#cfg
		// opacity: {
		// 	focus: 0.97,
		// 	blur: 0.8,
		// },

		// must be set to false to make it works with hyper-font-ligatures
		webGLRenderer: false,
	},

	// a list of plugins to fetch and install from npm
	// format: [@org/]project[#version]
	// examples:
	//   `hyperpower`
	//   `@company/project`
	//   `project#1.0.1`
	plugins: [
		"hyper-font-ligatures",
		"hypercwd",
		"hyper-solarized-dark",
		// "hyper-opacity",
		// 'hyperterm-base16-tomorrow-dark'
	],

	// in development, you can create a directory under
	// `~/.hyper_plugins/local/` and include it here
	// to load it and avoid it being `npm install`ed
	localPlugins: [],

	keymaps: {
		"tab:next": "ctrl+tab",
		"tab:prev": "ctrl+shift+tab",
	},
};
