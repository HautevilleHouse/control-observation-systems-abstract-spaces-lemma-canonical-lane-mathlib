import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ControlObservationSystem where
  stateSpace : Type u
  controlSpace : Type v
  observationSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observationMap : stateSpace → observationSpace
  abstractCondition : Prop

structure ControlObservationEvidence (S : ControlObservationSystem) where
  dynamicsClosed : ∀ x : S.stateSpace, ∀ u : S.controlSpace, S.dynamics x u = S.dynamics x u
  observationMapClosed : ∀ x : S.stateSpace, S.observationMap x = S.observationMap x
  abstractConditionClosed : S.abstractCondition

def ControlObservationSystemClosed (S : ControlObservationSystem) : Prop :=
  S.abstractCondition

theorem control_observation_system_closed_from_evidence
    (S : ControlObservationSystem) (E : ControlObservationEvidence S) :
    ControlObservationSystemClosed S := by
  exact E.abstractConditionClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse