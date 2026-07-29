import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ControlSystemModel where
  stateSpace : Type u
  actionSpace : Type v
  observationSpace : Type w
  dynamics : stateSpace → actionSpace → stateSpace
  observationMap : stateSpace → observationSpace
  controlSet : Set actionSpace
  admissibleControls : Prop
  dynamicsContinuous : Prop
  observationContinuous : Prop
  admissibleControlsClosed : admissibleControls
  dynamicsContinuousClosed : dynamicsContinuous
  observationContinuousClosed : observationContinuous

structure ControlSystemEvidence (C : ControlSystemModel) where
  admissibleControlsClosed : C.admissibleControls
  dynamicsContinuousClosed : C.dynamicsContinuous
  observationContinuousClosed : C.observationContinuous

def ControlSystemModelClosed (C : ControlSystemModel) : Prop :=
  C.admissibleControls ∧ C.dynamicsContinuous ∧ C.observationContinuous

theorem control_system_model_closed_from_evidence (C : ControlSystemModel)
    (E : ControlSystemEvidence C) : ControlSystemModelClosed C := by
  exact And.intro E.admissibleControlsClosed
    (And.intro E.dynamicsContinuousClosed E.observationContinuousClosed)

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse