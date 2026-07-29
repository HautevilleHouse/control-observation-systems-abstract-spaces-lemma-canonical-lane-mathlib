import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ControllabilityDualityPackage where
  systemType : Type u
  controllabilityCondition : Prop
  observabilityCondition : Prop
  dualityMap : Prop
  dualityHolds : Prop

structure ControllabilityDualityEvidence (D : ControllabilityDualityPackage) where
  controllabilityConditionClosed : D.controllabilityCondition
  observabilityConditionClosed : D.observabilityCondition
  dualityMapClosed : D.dualityMap
  dualityHoldsClosed : D.dualityHolds

def ControllabilityDualityClosed (D : ControllabilityDualityPackage) : Prop :=
  D.controllabilityCondition ∧ D.observabilityCondition ∧ D.dualityMap ∧ D.dualityHolds

theorem controllability_duality_closed_from_evidence
    (D : ControllabilityDualityPackage) (E : ControllabilityDualityEvidence D) :
    ControllabilityDualityClosed D := by
  exact And.intro E.controllabilityConditionClosed
    (And.intro E.observabilityConditionClosed
      (And.intro E.dualityMapClosed E.dualityHoldsClosed))

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse