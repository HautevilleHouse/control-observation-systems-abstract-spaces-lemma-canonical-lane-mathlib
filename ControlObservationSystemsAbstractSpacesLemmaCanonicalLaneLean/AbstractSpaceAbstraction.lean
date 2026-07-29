import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure AbstractSpaceAbstraction where
  sourceControlSystem : ControlSystemModel
  targetControlSystem : ControlSystemModel
  abstractionMap : sourceControlSystem.stateSpace → targetControlSystem.stateSpace
  simulationRelation : Prop
  observationConsistency : Prop
  simulationRelationClosed : simulationRelation
  observationConsistencyClosed : observationConsistency

structure AbstractSpaceAbstractionEvidence (A : AbstractSpaceAbstraction) where
  simulationRelationClosed : A.simulationRelation
  observationConsistencyClosed : A.observationConsistency

def AbstractSpaceAbstractionClosed (A : AbstractSpaceAbstraction) : Prop :=
  A.simulationRelation ∧ A.observationConsistency

theorem abstract_space_abstraction_closed_from_evidence
    (A : AbstractSpaceAbstraction) (E : AbstractSpaceAbstractionEvidence A) :
    AbstractSpaceAbstractionClosed A := by
  exact And.intro E.simulationRelationClosed E.observationConsistencyClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse