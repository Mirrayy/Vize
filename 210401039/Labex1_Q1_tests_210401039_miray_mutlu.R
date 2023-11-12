library(testthat)

 test_that("Workspace'teki tüm değişkenleri silme", {
   rm(list = ls())
   expect_equal(length(ls()), 0)
 })
 
 test_that("Eğer mevcut ise veri setini silme", {
   if ("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files()) {
     file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
   }
   expect_equal("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files(),FALSE)
 })
current_dir <- getwd()
print(current_dir)
relative_path <- file.path(current_dir,"Labex1_Q1_210401039_miray_mutlu.R")
print(relative_path)

source(relative_path)
  test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya belirtilen dizinde mevcuttur.", {
  file_path <- file.path(current_dir,"MapsThatChangedOurWorld_StoryMap_Data.csv")
  expect_true(file.exists(file_path), info = "Dosya mevcut değil.")
})

  