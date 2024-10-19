# Top-level folder under an organization.
resource "google_folder" "department1" {
  display_name = "folder_name"
  parent       = "organizations/org_id"
}

# Folder nested under another folder.
resource "google_folder" "team-abc" {
  display_name = "Team ABC"
  parent       = "folders/folder_id"
}

#For service account Give Folder Admin role to create folder
