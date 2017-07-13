@component-documents_and_media @option-3
Feature: Documets and Media Core [Option 3]
	Primary actors: Site Admin, Site Member

	Documents and Media Core mainly covers the basic features of a document repository that can be shared with members of the site or portal. 

	Site Administrators will primarily administer permissions and accessibility to the document repository.
	Site Members are the primary actors on the documents and media portlet. Site members will add, edit and delete documents and folders. 

	@persona-site_member
	Scenario: Site Members should be able to upload files
		Given I log in as "site.member@liferay.com"
			And I navigate to "Content > Documents and Media" in the product menu
		When I click the "+" button
			And I click the "Basic Document" option
			And I choose "document.txt" using the item selector
			And I click the "Publish" button
		Then "document.txt" should be successfully uploaded

	@persona-site_member
	Scenario: Site Members should be able to upload multiple files at the same time
		Given I log in as "site.member@liferay.com"
			And I navigate to "Content > Documents and Media" in the product menu
		When I click the "+" button
			And I click the "Multiple Documents" option
			And I click the "Select Files" button
			And I select the following documents
				| Document File Name |
				| document.txt |
				| picture.gif |
				| picture.png |
				| large-picture.bmp |
				| music.mp3 |
				| video.mp4 |
			And I see that the following documents are ready to be saved
				| Document File Name |
				| document.txt |
				| picture.gif |
				| picture.png |
				| large-picture.bmp |
				| music.mp3 |
				| video.mp4 |			
			And I click the "Publish" button
			And I click the "<" to go back
		Then I should see that the following documents are successfully uploaded
				| Document File Name |
				| document.txt |
				| picture.gif |
				| picture.png |
				| large-picture.bmp |
				| music.mp3 |
				| video.mp4 |

	@persona-site_member
	Scenario: Site Members should be able to create folders

	@persona-site_member
	Scenario: Site Members should be able to create documents inside of folders

	@persona-site_member
	Scenario: Site Members should be able to create subfolders

	@persona-site_member
	Scenario: Site Members should be able to view text documents

	@persona-site_member
	Scenario: Site Members should be able to download files

	@persona-site_member
	Scenario: Site Members should be able to move files

	@persona-site_member
	Scenario: Site Members should be able to move folders

	@persona-site_member
	Scenario: Site Members should be able to edit documents

	@persona-site_member
	Scenario: Site Members should be able to edit folders

	@persona-site_member
	Scenario: Site Members should be able to delete documents

	@persona-site_member
	Scenario: Site Members should be able to delete folders

	@persona-site_member
	Scenario: Site Members should be able to delete content recursively

	@persona-site_administrator
	Scenario: Site Administrators should be able to restrict access to documents

	@persona-site_administrator
	Scenario: Site Administrators should be able to restrict access to folders