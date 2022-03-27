//
//  SwiftGenPlugin.swift
//  ColorKit
//
//  Created by shimastripe on 2022/03/28.
//

import PackagePlugin

@main
struct SwiftGenPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let outputFilesDirectory = context.pluginWorkDirectory

        let targetAssets = target.directory.appending("Resources/Color.xcassets")
        let outputFile = outputFilesDirectory.appending("Color.generated.swift")

        return [
            .prebuildCommand(
                displayName: "SwiftGen",
                executable: try context.tool(named: "swiftgen").path,
                arguments: [
                    "run", "xcassets",
                    targetAssets.string,
                    "--param", "publicAccess", "--templateName", "swift5", "--output",
                    outputFile.string,
                ],
                environment: [:],
                outputFilesDirectory: outputFilesDirectory)
        ]
    }
}
