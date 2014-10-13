package org.eclipse.xtext.tutorial.survey.generator

import org.eclipse.xtext.generator.OutputConfiguration
import org.eclipse.xtext.generator.OutputConfigurationProvider

class SurveyOutputConfigurationProvider extends OutputConfigurationProvider {

	public static val htmlOutputConfig = "html-gen"

	override getOutputConfigurations() {
		val result = super.getOutputConfigurations()
		result.add(
			new OutputConfiguration(htmlOutputConfig) => [
				description = "Generated HTML pages"
				outputDirectory = "./html-gen"
				overrideExistingResources = true
				createOutputDirectory = true
				cleanUpDerivedResources = true
				setDerivedProperty = true
			])
		result
	}
}
