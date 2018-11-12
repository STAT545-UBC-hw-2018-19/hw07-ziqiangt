hw07-ziqiangt
-------------

hw06-ziqiangt created by GitHub Classroom \#\# Hi, here is the STAT547 hw07 of ziqiang

Overview
--------

This is to make some changes to an existing R package from **jennybc**. You can click **[Original foofactors](https://github.com/jennybc/foofactors/)** to view more details about this cource.

My repository is structured as follows:

| Documents                                                                                  | Description                              |
|--------------------------------------------------------------------------------------------|------------------------------------------|
| [README.md](https://github.com/STAT545-UBC-students/hw07-ziqiangt/blob/master/README.md)   | the markdown file for homework 7         |
| [README.rmd](https://github.com/STAT545-UBC-students/hw07-ziqiangt/blob/master/README.Rmd) | the R-markdown file for homework 7       |
| [R](https://github.com/STAT545-UBC-students/hw07-ziqiangt/tree/master/R)                   | the R Scripts for homework 7 package     |
| Other                                                                                      | Other files such a .Rproj and .gitignore |

<!-- README.md is generated from README.Rmd. Please edit that file -->
**NOTE: This is a toy package created for expository purposes. It is not meant to actually be useful. If you want a package for factor handling, please see [forcats](https://cran.r-project.org/package=forcats).**

### foofactors

Factors are a very useful type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

### Installation

``` r
devtools::install_github("https://github.com/STAT545-UBC-students/hw07-ziqiangt")
```

### Quick demo

Binding two factors via `fbind()`:

``` r
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work. Processing with `as.data.frame()` can be helpful but it's a bit clunky.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 25 26 17 17 15
as.data.frame(table(x))
#>   x Freq
#> 1 a   25
#> 2 b   26
#> 3 c   17
#> 4 d   17
#> 5 e   15
```

The `freq_out()` function returns a frequency table as a well-named `tbl_df`:

``` r
freq_out(x)
#> # A tibble: 5 x 2
#>   x         n
#>   <fct> <int>
#> 1 a        25
#> 2 b        26
#> 3 c        17
#> 4 d        17
#> 5 e        15
```

### detect factors that should be character because \# unique values = length

``` r
fdetect(factor(c("a", "b", "c","a")))
#> [1] FALSE
fdetect(factor(c("a", "b", "c","d")))
#> [1] TRUE
```

### write a version of reorder() that uses desc() a la (d)plyr

``` r
f_reorder(factor(c("B", "A", "D")))
#> [1] B A D
#> attr(,"scores")
#>  A  B  D 
#> -1 -2 -3 
#> Levels: D B A
```

### write a version of factor() that sets levels to the order in which they appear in the data, i.e. set the levels “as is”

``` r
f_set(factor(c("B", "A", "D")))
#> [1] B A D
#> Levels: B A D
```

### functions to write and read data frames to plain text delimited files while retaining factor levels; maybe by writing/reading a companion file?

``` r
# De
set.seed(1234)
df <- data.frame(
    a = 1,
    b = 1:100,
    x = sample(letters[1:5], size = 100, replace = TRUE)
  )

levels(df$x)
#> [1] "a" "b" "c" "d" "e"

x_write(df, "./df_x.csv", "./df_x.txt")
read_return <- x_read("./df_x.csv", "./df_x.txt")
#> Parsed with column specification:
#> cols(
#>   a = col_integer(),
#>   b = col_integer(),
#>   x = col_character()
#> )
levels(read_return$x)
#> [1] "a" "b" "c" "d" "e"
```

Here is powers package you might interested
-------------------------------------------

[powers](https://github.com/ziqiangt/STAT545_Participation/tree/master/STAT547/cm105/powers)

Here is my previous homework if you are interested
--------------------------------------------------

-   You can click to go to my homework solutions
    -   homework01
        -   [homework01 solution](https://github.com/STAT545-UBC-students/hw01-ziqiangt)
    -   homework02
        -   [homework02 solution](https://github.com/STAT545-UBC-students/hw02-ziqiangt)
    -   homework03
        -   [homework03 solution](https://github.com/STAT545-UBC-students/hw03-ziqiangt)
    -   homework04
        -   [homework04 solution](https://github.com/STAT545-UBC-students/hw04-ziqiangt)
    -   homework05
        -   [homework05 solution](https://github.com/STAT545-UBC-students/hw05-ziqiangt)
    -   homework06
        -   [homework06 solution](https://github.com/STAT545-UBC-students/hw06-ziqiangt)

It's would be very kind if you could give me some **comments**.
---------------------------------------------------------------

**[homework07 Comments](https://github.com/STAT545-UBC-students/hw07-ziqiangt/issues)**
