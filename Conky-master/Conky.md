# Conky

## Format

* Alignment
  * `$alignc`    center
  * `$alignr`    right 

* Date

  `${time %A %B %e %Y}`

  * `%A`    Full weekday    `%a`    Abbreviated weekday
  * `%B`    Full month name    `%b` or `%h`  Abbreviated
  * `%Y`    Four-digit year
  * `%H` 24-hour format hour    `%M` Minutes    `%S` Seconds    `%I` 12-hour format

* Text format

  * `${font Mono:bold:size=10}` 

* CPU

  * `$freq` CPU frequency (MHz)    `$freq_g` GHz

## Problems

1. The windows alway blink

   Just use `double_buffer=true`