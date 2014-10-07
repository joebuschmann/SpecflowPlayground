Feature: RegexSamples
	In order to show off Specflow
	As a Specflow enthusiast
	I want to demo common regex for Specflow steps

Scenario: Limit argument options to enum values
	Given the following devices
		| Product       |
		| Galaxy IV     |
		| iPhone        |
		| Windows Phone |
		| Note          |
		| Kindle        |
	When I sort by product name ascending
	Then they should be in the following order
		| Product       | Index |
		| Galaxy IV     | 1     |
		| iPhone        | 2     |
		| Kindle        | 3     |
		| Note          | 4     |
		| Windows Phone | 5     |

Scenario: Convert 1st, 2nd, etc to integral values
	Given the following devices
		| Product          |
		| Galaxy IV        |
		| iPhone           |
		| Windows Phone    |
		| Note             |
		| Kindle           |
		| Blackberry Storm |
		| iPad             |
		| Surface          |
		| Surface Pro      |
		| HTC One          |
	When I remove the 10th item
	And I remove the 4th item
	And I remove the 3rd item
	And I remove the 2nd item
	And I remove the 1st item
	Then the following devices remain
		| Product          |
		| Kindle           |
		| Blackberry Storm |
		| iPad             |
		| Surface          |
		| Surface Pro      |

Scenario: Support singular and plural wording
	Given the following devices
		| Product          |
		| Galaxy IV        |
		| iPhone           |
	And the following device
		| Product          |
		| Windows Phone    |
