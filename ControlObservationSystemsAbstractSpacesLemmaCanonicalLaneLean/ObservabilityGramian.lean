import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ObservabilityGramianPackage where
  systemType : Type u
  gramianMatrix : systemType → Matrix ℝ ℝ
  positiveDefinite : Prop
  rankCondition : Prop

structure ObservabilityGramianEvidence (G : ObservabilityGramianPackage) where
  positiveDefiniteClosed : G.positiveDefinite
  rankConditionClosed : G.rankCondition

def ObservabilityGramianClosed (G : ObservabilityGramianPackage) : Prop :=
  G.positiveDefinite ∧ G.rankCondition

theorem observability_gramian_closed_from_evidence
    (G : ObservabilityGramianPackage) (E : ObservabilityGramianEvidence G) :
    ObservabilityGramianClosed G := by
  exact And.intro E.positiveDefiniteClosed E.rankConditionClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse