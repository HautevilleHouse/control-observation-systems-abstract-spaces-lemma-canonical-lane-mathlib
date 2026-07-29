import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ObservationMapping where
  controlSystem : ControlSystemModel
  observationDomain : Set (controlSystem.observationSpace)
  observationRange : Set (controlSystem.observationSpace)
  mapping : controlSystem.observationSpace → controlSystem.observationSpace
  mapContinuous : Prop
  mapInjective : Prop
  mapSurjective : Prop
  mapContinuousClosed : mapContinuous
  mapInjectiveClosed : mapInjective
  mapSurjectiveClosed : mapSurjective

structure ObservationMappingEvidence (O : ObservationMapping) where
  mapContinuousClosed : O.mapContinuous
  mapInjectiveClosed : O.mapInjective
  mapSurjectiveClosed : O.mapSurjective

def ObservationMappingClosed (O : ObservationMapping) : Prop :=
  O.mapContinuous ∧ O.mapInjective ∧ O.mapSurjective

theorem observation_mapping_closed_from_evidence (O : ObservationMapping)
    (E : ObservationMappingEvidence O) : ObservationMappingClosed O := by
  exact And.intro E.mapContinuousClosed
    (And.intro E.mapInjectiveClosed E.mapSurjectiveClosed)

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse