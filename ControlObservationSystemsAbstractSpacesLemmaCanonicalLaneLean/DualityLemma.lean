import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure DualityPackage (C : ControlSystem) (D : ControlSystem) where
  dualPairing : C.stateSpace × D.stateSpace → ℝ
  observabilityImpliesControllability : Prop
  controllabilityImpliesObservability : Prop
  observabilityImpliesControllabilityHolds : observabilityImpliesControllability
  controllabilityImpliesObservabilityHolds : controllabilityImpliesObservability

structure DualityEvidence {C D : ControlSystem} (P : DualityPackage C D) where
  observabilityControllabilityClosed : P.observabilityImpliesControllability
  controllabilityObservabilityClosed : P.controllabilityImpliesObservability

def DualityClosed {C D : ControlSystem} (P : DualityPackage C D) : Prop :=
  P.observabilityImpliesControllability ∧ P.controllabilityImpliesObservability

theorem duality_closed_from_evidence {C D : ControlSystem} (P : DualityPackage C D) (E : DualityEvidence P) : DualityClosed P := by
  exact And.intro E.observabilityControllabilityClosed E.controllabilityObservabilityClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse