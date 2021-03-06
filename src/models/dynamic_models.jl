abstract type DynamicComponent <: DeviceParameter end

"""
Abstract type for all dynamic injection types

Subtypes must implement these methods:
- [`get_static_injector`](@ref)
- [`set_static_injector!`](@ref)
"""
abstract type DynamicInjection <: Device end

supports_services(d::DynamicInjection) = false

"""
Return the static injector stored with a dynamic injector.
"""
function get_static_injector(device::T) where {T <: DynamicInjection}
    error("get_static_injector must be implemented for type $T")
end

function get_dynamic_components(device::T) where {T <: DynamicInjection}
    return (
        getfield(device, x) for
        (x, y) in zip(fieldnames(T), fieldtypes(T)) if y <: DynamicComponent
    )
end
