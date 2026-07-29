import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ControlObservationAdmissibleObject where
  controlSystemModel : ControlSystemModel
  controlSystemClosed : ControlSystemModelClosed controlSystemModel

structure AdmissibleClass where
  object : ControlObservationAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControlSystemModelClosed A.object.controlSystemModel ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse