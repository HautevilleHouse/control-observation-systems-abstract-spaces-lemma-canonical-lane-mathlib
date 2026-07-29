import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ControlObservationAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  abstractSpace : Prop
  controlStructure : Prop
  observationMorphism : Prop
  identityObservation : Prop
  compositionObservation : Prop
  identityControl : Prop
  compositionControl : Prop
  spaceEndoLow : Prop
  controlSubspaceClosed : Prop
  observationSubspaceClosed : Prop
  conclusion : identityObservation ∧ compositionObservation ∧ identityControl ∧ compositionControl ∧ spaceEndoLow

def ControlObservationWitnessClosed (O : ControlObservationAdmittedObject) : Prop :=
  O.identityObservation ∧ O.compositionObservation ∧ O.identityControl ∧ O.compositionControl ∧ O.spaceEndoLow

theorem control_observation_witness_closed_from_object (O : ControlObservationAdmittedObject) :
    ControlObservationWitnessClosed O := by
  exact O.conclusion

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse