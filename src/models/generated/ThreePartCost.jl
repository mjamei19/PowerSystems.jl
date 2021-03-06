#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct ThreePartCost <: OperationalCost
        variable::VariableCost
        fixed::Float64
        startup::Float64
        shutdn::Float64
        forecasts::InfrastructureSystems.Forecasts
        internal::InfrastructureSystemsInternal
    end

Data Structure Operational Cost Data in Three parts fixed, variable cost and start - stop costs.

# Arguments
- `variable::VariableCost`: variable cost
- `fixed::Float64`: fixed cost
- `startup::Float64`: startup cost, validation range: `(0, nothing)`, action if invalid: `warn`
- `shutdn::Float64`: shutdown cost, validation range: `(0, nothing)`, action if invalid: `warn`
- `forecasts::InfrastructureSystems.Forecasts`: internal forecast storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct ThreePartCost <: OperationalCost
    "variable cost"
    variable::VariableCost
    "fixed cost"
    fixed::Float64
    "startup cost"
    startup::Float64
    "shutdown cost"
    shutdn::Float64
    "internal forecast storage"
    forecasts::InfrastructureSystems.Forecasts
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function ThreePartCost(variable, fixed, startup, shutdn, forecasts=InfrastructureSystems.Forecasts(), )
    ThreePartCost(variable, fixed, startup, shutdn, forecasts, InfrastructureSystemsInternal(), )
end

function ThreePartCost(; variable, fixed, startup, shutdn, forecasts=InfrastructureSystems.Forecasts(), )
    ThreePartCost(variable, fixed, startup, shutdn, forecasts, )
end

# Constructor for demo purposes; non-functional.
function ThreePartCost(::Nothing)
    ThreePartCost(;
        variable=VariableCost((0.0, 0.0)),
        fixed=0.0,
        startup=0.0,
        shutdn=0.0,
        forecasts=InfrastructureSystems.Forecasts(),
    )
end

"""Get [`ThreePartCost`](@ref) `variable`."""
get_variable(value::ThreePartCost) = value.variable
"""Get [`ThreePartCost`](@ref) `fixed`."""
get_fixed(value::ThreePartCost) = value.fixed
"""Get [`ThreePartCost`](@ref) `startup`."""
get_startup(value::ThreePartCost) = value.startup
"""Get [`ThreePartCost`](@ref) `shutdn`."""
get_shutdn(value::ThreePartCost) = value.shutdn

InfrastructureSystems.get_forecasts(value::ThreePartCost) = value.forecasts
"""Get [`ThreePartCost`](@ref) `internal`."""
get_internal(value::ThreePartCost) = value.internal

"""Set [`ThreePartCost`](@ref) `variable`."""
set_variable!(value::ThreePartCost, val) = value.variable = val
"""Set [`ThreePartCost`](@ref) `fixed`."""
set_fixed!(value::ThreePartCost, val) = value.fixed = val
"""Set [`ThreePartCost`](@ref) `startup`."""
set_startup!(value::ThreePartCost, val) = value.startup = val
"""Set [`ThreePartCost`](@ref) `shutdn`."""
set_shutdn!(value::ThreePartCost, val) = value.shutdn = val

InfrastructureSystems.set_forecasts!(value::ThreePartCost, val) = value.forecasts = val
"""Set [`ThreePartCost`](@ref) `internal`."""
set_internal!(value::ThreePartCost, val) = value.internal = val
