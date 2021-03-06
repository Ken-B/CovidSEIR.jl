module CovidSEIR

import DataFrames, CSV, ZipFile, WorldBankData, HTTP
import Dates, AbstractMCMC, StatsBase,ColorSchemes
using DifferentialEquations: concrete_solve, solve, remake, Tsit5, ODEProblem
using ModelingToolkit: @parameters, @variables, @derivatives, ODESystem, ODEFunction, ~, Variable, Differential
using Distributions
using Turing
using LinearAlgebra: dot
using Statistics
using Plots, StatsPlots

include("data.jl")
include("model.jl")

export covidjhudata,
  CountryData,
  countrymodel,
  priorreport,
  simtrajectories,
  plotvars

end # module
