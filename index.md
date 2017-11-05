---
title: "Charting Stock Market Performance using Shiny"
author: "Tim Pearce"
date: "1 November 2017"
job :
framework : io2012 # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js # {highlight.js, prettify, highlight}
hitheme : tomorrow #
widgets : [] # {mathjax, quiz, bootstrap}
mode : selfcontained # {standalone, draft}
knit : slidify::knit2slides
---



## Objective

Plot data on the closing values of major EU stock market indices (EuStockMarkets in datasets package) for a user-selected date range.

Future planned enhancements: (i) allow import of alternative time series, rather than hard-coding EuStockMarkets; (ii) calculate performance of each plotted stock market index over the selected time period.

---

## Approach

Slider used to select start and end period of the date range.

---

## Example 1: Full data set

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

---

## Example 2: Restricted data range

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)
