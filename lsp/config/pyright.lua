return {
    python = {
        analysis = {
            extraPaths = {"$VIRTUAL_ENV/lib/python3.10/site-packages"},
            useLibraryCodeForTypes = true,
            autoSearchPaths = true,
            diagnosticMode = "workspace",
            autoImportCompletions = true,
            logLevel = "Warning",
        },
    }
}
