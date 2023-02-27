# création du package
usethis::create_package(path=".")
# exclusion du devstuff du scope du package
usethis::use_build_ignore('devstuff.R')
# Modification de la description du package
usethis::edit_file('DESCRIPTION')
# Gestion de la licence
usethis::use_mit_license()
# Gestion du lintage
lintr::use_lintr(type = "tidyverse")
usethis::use_build_ignore('.lintr')
# Fonction de conversion
usethis::use_r("celsius_to_kelvin")
usethis::use_package('assertthat')
usethis::use_test("celsius_to_kelvin")
# CI GHA
usethis::use_github_action_check_standard()
usethis::use_github_action("lint")
# pkgdown
usethis::use_readme_rmd()
usethis::use_pkgdown()
usethis::use_github_action("pkgdown")
# verification lintage
lintr::lint_package()
# Gestion du style
styler::style_pkg()
devtools::check()
