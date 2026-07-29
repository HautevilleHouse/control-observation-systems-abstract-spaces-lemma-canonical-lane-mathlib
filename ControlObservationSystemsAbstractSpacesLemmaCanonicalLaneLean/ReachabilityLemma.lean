import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ReachabilityLemma where
  controlSystem : ControlSystemModel
  initialStates : Set (controlSystem.stateSpace)
  targetStates : Set (controlSystem.stateSpace)
  reachabilityCondition : Prop
  reachabilityProof : reachabilityCondition
  reachabilityConditionClosed : reachabilityCondition
  reachabilityProofClosed : reachabilityProof

structure ReachabilityLemmaEvidence (R : ReachabilityLemma) where
  reachabilityConditionClosed : R.reachabilityCondition
  reachabilityProofClosed : R.reachabilityProof

def ReachabilityLemmaClosed (R : ReachabilityLemma) : Prop :=
  R.reachabilityCondition ∧ R.reachabilityProof

theorem reachability_lemma_closed_from_evidence (R : ReachabilityLemma)
    (E : ReachabilityLemmaEvidence R) : ReachabilityLemmaClosed R := by
  exact And.intro E.reachabilityConditionClosed E.reachabilityProofClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse