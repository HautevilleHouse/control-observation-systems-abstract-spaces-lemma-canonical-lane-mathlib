import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure ObservabilityPackage (C : ControlSystem) where
  distinguishabilityCondition : Prop
  reconstructionMap : C.stateSpace → C.outputSpace → C.stateSpace
  observableSubspace : Set C.stateSpace
  distinguishabilityConditionHolds : distinguishabilityCondition
  reconstructionConsistent : ∀ (x : C.stateSpace) (y : C.outputSpace), reconstructionMap x y = x

structure ObservabilityEvidence {C : ControlSystem} (O : ObservabilityPackage C) where
  distinguishabilityClosed : O.distinguishabilityCondition
  reconstructionConsistentClosed : ∀ (x : C.stateSpace) (y : C.outputSpace), O.reconstructionMap x y = x

def ObservabilityClosed {C : ControlSystem} (O : ObservabilityPackage C) : Prop :=
  O.distinguishabilityCondition ∧ ∀ (x : C.stateSpace) (y : C.outputSpace), O.reconstructionMap x y = x

theorem observability_closed_from_evidence {C : ControlSystem} (O : ObservabilityPackage C) (E : ObservabilityEvidence O) : ObservabilityClosed O := by
  exact And.intro E.distinguishabilityClosed E.reconstructionConsistentClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse