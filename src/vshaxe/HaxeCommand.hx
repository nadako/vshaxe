package vshaxe;

// should this be a build macro?
enum abstract HaxeCommand(String) to String {
	/* public commands, defined in `package.json` */
	var RestartLanguageServer = command("restartLanguageServer");
	var InitProject = command("initProject");
	var SelectDisplayArgumentsProvider = command("selectDisplayArgumentsProvider");
	var SelectConfiguration = command("selectConfiguration");
	var SelectDisplayConfiguration = command("selectDisplayConfiguration"); // legacy
	var DebugSelectedConfiguration = command("debugSelectedConfiguration");
	var RunGlobalDiagnostics = command("runGlobalDiagnostics");
	var ToggleCodeLens = command("toggleCodeLens");
	var RefreshDependencies = command("refreshDependencies");
	var RevealActiveFileInSideBar = command("revealActiveFileInSideBar");
	/* internal commands, either not defined in `package.json` at all or hidden from command palette */
	var ShowReferences = command("showReferences");
	var ClearMementos = command("clearMementos");
	var Methods_SwitchToQueue = command("methods.switchToQueue");
	var Methods_SwitchToTimers = command("methods.switchToTimers");
	var Methods_Copy = command("methods.copy");
	var Methods_Track = command("methods.track");
	var Dependencies_OpenTextDocument = command("dependencies.openTextDocument");
	var Dependencies_Refresh = command("dependencies.refresh");
	var Dependencies_OpenPreview = command("dependencies.openPreview");
	var Dependencies_OpenToTheSide = command("dependencies.openToTheSide");
	var Dependencies_RevealInExplorer = command("dependencies.revealInExplorer");
	var Dependencies_OpenInCommandPrompt = command("dependencies.openInCommandPrompt");
	var Dependencies_FindInFolder = command("dependencies.findInFolder");
	var Dependencies_CopyPath = command("dependencies.copyPath");
	var Cache_CopyNodeValue = command("cache.copyNodeValue");
	var Cache_ReloadNode = command("cache.reloadNode");
	var Cache_GotoNode = command("cache.gotoNode");

	inline static function command(name:String):String {
		return "haxe." + name;
	}
}
