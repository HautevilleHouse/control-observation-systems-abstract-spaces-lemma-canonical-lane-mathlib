import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure AbstractSpaceLemmaPackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  metric : MetricSpace spaceType
  completeness : Prop
  compactness : Prop
  separability : Prop

structure AbstractSpaceLemmaEvidence (P : AbstractSpaceLemmaPackage) where
  completenessClosed : P.completeness
  compactnessClosed : P.compactness
  separabilityClosed : P.separability

def AbstractSpaceLemmaClosed (P : AbstractSpaceLemmaPackage) : Prop :=
  P.completeness ∧ P.compactness ∧ P.separability

theorem abstract_space_lemma_closed_from_evidence
    (P : AbstractSpaceLemmaPackage) (E : AbstractSpaceLemmaEvidence P) :
    AbstractSpaceLemmaClosed P := by
  exact And.intro E.completenessClosed (And.intro E.compactnessClosed E.separabilityClosed)

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse