resource "google_project" "my_project-in-a-folder" {
  name       = "My Project"
  project_id = "your-project-id"
  folder_id  = "folders/folder_id"
}