import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure StabilizationPackage (C : ControlSystem) where
  feedbackLaw : C.stateSpace → C.inputSpace
  closedLoopDynamics : C.stateSpace → C.stateSpace
  lyapunovFunction : C.stateSpace → ℝ
  lyapunovStable : Prop
  lyapunovStableHolds : lyapunovStable

structure StabilizationEvidence {C : ControlSystem} (S : StabilizationPackage C) where
  lyapunovStableClosed : S.lyapunovStable

def StabilizationClosed {C : ControlSystem} (S : StabilizationPackage C) : Prop :=
  S.lyapunovStable

theorem stabilization_closed_from_evidence {C : ControlSystem} (S : StabilizationPackage C) (E : StabilizationEvidence S) : StabilizationClosed S := by
  exact E.lyapunovStableClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse