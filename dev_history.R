usethis::use_build_ignore(files = "dev_history.R")
usethis::use_gpl3_license()

usethis::use_vignette("leaflettools")

usethis::use_pipe()

usethis::use_testthat()

usethis::use_test(name = "")
#
devtools::check()
devtools::build(vignettes = TRUE)
devtools::install(build_vignettes = TRUE)

pkgload::load_all()
