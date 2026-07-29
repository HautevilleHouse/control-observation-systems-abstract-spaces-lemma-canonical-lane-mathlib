import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean.AbstractObservationSpace

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ControlSystem (X : Type u) (S : AbstractObservationSpace X) where
  stateSpace : Type v
  controlSet : Type w
  dynamics : stateSpace → controlSet → stateSpace
  observationMap : stateSpace → X
  consistencyWithObservation : ∀ (s : stateSpace) (u : controlSet), 
    S.observations (S.structureSheaf) (S.carrier) → 
    S.observations S.structureSheaf (S.carrier)
  controlAdmissible : Prop
  controlAdmissibleTerm : controlAdmissible

structure ControlSystemEvidence (X : Type u) (S : AbstractObservationSpace X) 
    (C : ControlSystem X S) where
  controlAdmissibleClosed : C.controlAdmissible

def ControlSystemClosed (X : Type u) (S : AbstractObservationSpace X) 
    (C : ControlSystem X S) : Prop :=
  C.controlAdmissible

theorem control_system_closed_from_evidence (X : Type u) (S : AbstractObservationSpace X)
    (C : ControlSystem X S) (E : ControlSystemEvidence X S C) : ControlSystemClosed X S C :=
  E.controlAdmissibleClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse
