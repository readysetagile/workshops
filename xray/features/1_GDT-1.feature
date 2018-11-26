@GDT-12
Feature: 

	Background:
		#@GDT-1
		Given I navigate to the Car Gas Data web page
		Then I will be on the Car Gas Data web page
		

	#Test the calculate total button when clicked
	@GDT-2 @GDT-4
	Scenario: Test Calculate Total
		Given I enter 298 for Price
		And I enter 16873 for Gallons
		When I click Calculate Total
		Then I will see 50.28 in the Total field	

	#Integers can only be entered on the 
	@GDT-9 @GDT-4
	Scenario: Integers only in Vehicle Mileage
		Given I navigate to Vehicle Mileage
		When I enter 34.234 in Vehicle Mileage
		Then I will see 34324 in Vehicle Mileage
		
		Given I navigate to Vehicle Mileage
		When I enter 341a.2b4 in Vehicle Mileage
		Then I will see 34124 in Vehicle Mileage
			

	#Numbers can only be entered on the Price Per Gallon
	@GDT-10 @GDT-4
	Scenario: Number formatting for Price Per Gallon
		Given I navigate to Price Per Gallon
		When I enter 221 in Price Per Gallon
		Then I will see 2.21 in Price Per Gallon
		
		Given I navigate to Price Per Gallon
		When I enter 2mhy43 in Price Per Gallon
		Then I will see 2.43 in Price Per Gallon
			

	#Numbers can only be entered on the Price Per Gallon
	@GDT-11 @GDT-4
	Scenario: Number formatting for Gallons
		Given I navigate to Gallons
		When I enter 17081 in Gallons
		Then I will see 17.081 in Gallons
		
		Given I navigate to Gallons
		When I enter 18mhy093 in Gallons
		Then I will see 18.093 in Gallons
		