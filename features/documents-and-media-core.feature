@component-documents_and_media 
Feature: Documets and Media Core
	Primary actors: Site Admin, Site Member

	Documents and Media Core mainly covers the basic features of a document repository that can be shared with members of the site or portal. 

	Site Administrators will primarily administer permissions and accessibility to the document repository.
	Site Members are the primary actors on the documents and media portlet. Site members will add, edit and delete documents and folders. 

	@persona-site_member
	Scenario: Site Members should be able to upload files
		When I am logged in as a site member
		Then I should be able to upload a file

	@persona-site_member
	Scenario: Site Members should be able to upload multiple files at the same time
		When I am logged in as a site member
		Then I should be able to upload multiple files

	@persona-site_member
	Scenario: Site Members should be able to create folders
		When I am logged in as a site member
		Then I should be able to create a folder

	@persona-site_member
	Scenario: Site Members should be able to create documents inside of folders
		Given a folder has been created
		When I am logged in as a site member
		Then I should be able to create a document inside of that folder

	@persona-site_member
	Scenario: Site Members should be able to create subfolders
		Given a folder has been created
		When I am logged in as a site member
		Then I should be able to create a subfolder inside of that folder

	@persona-site_member
	Scenario: Site Members should be able to view text documents
		Given a text document has been upload
		When I am logged in as a site member
		Then I should be able to read the text document

	@persona-site_member
	Scenario: Site Members should be able to download files
		Given a file has been uploaded
		When I am logged in as a site member
		Then I should be able to download the file

	@persona-site_member
	Scenario: Site Members should be able to move files
		Given documents have been created in multiple folders
		When I am logged in as a site member
		Then I should be able to move files into different folders

	@persona-site_member
	Scenario: Site Members should be able to move folders
		Given folders have been created
		When I am logged in as a site member
		Then I should be able to move a folder into another folder

	@persona-site_member
	Scenario: Site Members should be able to edit documents
		Given a document has been created
		When I am logged in as a site member
		Then I should be able to edit the document

	@persona-site_member
	Scenario: Site Members should be able to edit folders
		Given a folder has been created
		When I am logged in as a site member
		Then I should be able to edit a folder

	@persona-site_member
	Scenario: Site Members should be able to delete documents
		Given a document has been created
		When I am logged in as a site member
		Then I should be able to delete a document

	@persona-site_member
	Scenario: Site Members should be able to delete folders
		Given a folder has been created
		When I am logged in as a site member
		Then I should be able to delete a folder

	@persona-site_member
	Scenario: Site Members should be able to delete content recursively
		Given a folder has been created
			And documents have been created inside of that folder
			And subfolders with documents have been created inside of that folder
		When I am logged in as a site member
		Then I should be able to delete that folder with contents recursively

	@persona-site_administrator
	Scenario: Site Administrators should be able to restrict access to documents
		Given a document has been created
		When I am logged in as a site administrator
			And I restrict access to documents
		Then certain users should not be able to access those documents

	@persona-site_administrator
	Scenario: Site Administrators should be able to restrict access to folders
		Given a folder has been created
		When I am logged in as a site administrator
			And I restrict access to that folder
		Then certain users should not be able to access that folder / contents



