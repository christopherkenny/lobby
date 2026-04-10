## Resubmission

This is a resubmission. I have fixed the following:

* I have added single quotes to the title as requested.
* I have removed the default suggestion for interactive use in lobby_key(). (As a note, it would be good to publicize this interpretation of CRAN policy. I started using an interactive approach that suggests a path when no default is set many years ago at the suggestion of other package developers. Based on the first submission, it appears that is no longer acceptable.)

## Test environments

* local R installation (Windows 11), R 4.5.2
* local R installation (macOS 11.4), R 4.5.2
* ubuntu-latest (on GitHub Actions), (oldrel-1, devel, and release)
* windows-latest (on GitHub Actions), (release)
* macOS-latest (on GitHub Actions), (release)
* Windows (on Winbuilder), (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Additional notes

* There is no corresponding paper. The link in the DESCRIPTION is the best reference for the upstream API.

* All calls require an API key, so functions are tested with `vcr` which has copies of past API responses.
