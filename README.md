# Lung Cancer Survival Analysis

![Project Logo or Image](https://thebmj-frontend.bmj.com/_next/image?url=https%3A%2F%2Fbmj.com%2Fsites%2Fdefault%2Ffiles%2Fattachments%2Fresources%2F2011%2F08%2Ffig-1211.jpg&w=400&q=75)

**Project Description:** 
This repository contains the code and analysis for a survival analysis study on lung cancer patients. The analysis includes data preprocessing, feature engineering, data visualization, Kaplan-Meier survival analysis, and the development of semi-parametric and parametric models to estimate the marginal effects of relevant predictors on survival outcomes.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Data Preprocessing](#data-preprocessing)
- [Feature Engineering](#feature-engineering)
- [Data Visualization](#data-visualization)
- [Kaplan-Meier Survival Analysis](#kaplan-meier-survival-analysis)
- [Semi-Parametric and Parametric Models](#semi-parametric-and-parametric-models)
- [Business Questions](#business-questions)
- [Usage](#usage)

## Introduction

The Lung Cancer Survival Analysis project focuses on understanding the survival outcomes of lung cancer patients. It includes data preprocessing, feature engineering, data visualization, Kaplan-Meier survival analysis, and the development of statistical models to estimate the impact of various predictors on patient survival.

## Getting Started

### Prerequisites

To run this project, you need to have the following software and libraries installed:

- R programming environment
- Required R packages (e.g., `rio`, `survival`, `PerformanceAnalytics`, `stargazer`, etc.)

### Installation

1. Clone this GitHub repository to your local machine.
2. Install R and the required packages mentioned in the project's R script.

## Data Preprocessing

The project begins with importing the dataset from "LungCancer.txt" and performing data preprocessing tasks, such as renaming columns and converting variables into appropriate data types.

## Feature Engineering

Feature engineering is a crucial step in improving the quality of the data. This project includes feature engineering techniques to create meaningful variables for analysis.

## Data Visualization

Data visualization is used to explore the dataset and gain insights. Various visualizations, such as histograms and correlation plots, are created to understand the data better.

## Kaplan-Meier Survival Analysis

Kaplan-Meier survival analysis is performed to answer business questions related to patient survival probabilities and median survival times for different treatments.

## Semi-Parametric and Parametric Models

The project includes the development of semi-parametric and parametric models to estimate the marginal effects of relevant predictors on survival outcomes. The coefficients and hazard rates are interpreted to understand the impact of standard vs. test treatments and other predictors.

## Business Questions

The project answers the following business questions:
1. What is the probability that a patient will survive for 6 months (183 days) and 1 year (365 days) on the standard treatment vs. the test treatment?
2. What is the median number of days a patient can be expected to survive if they are on the standard vs. the test treatment?

## Usage

To use this project, follow the installation instructions and run the R script. You can explore the data, visualize the results, and understand the survival outcomes of lung cancer patients.



