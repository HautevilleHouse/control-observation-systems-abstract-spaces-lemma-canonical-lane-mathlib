import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControlSystemModelClosed A.object.controlSystemModel

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.controlSystemClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse