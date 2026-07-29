import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure AbstractObservationSpace (X : Type u) where
  carrier : Set X
  observable : Set X → Prop
  opensUnderObservation : Set (Set X)
  structureSheaf : Type v
  observations : structureSheaf → Set X → Prop
  consistency : ∀ (f : structureSheaf) (U V : Set X),
    U ⊆ V → observations f V → ∀ x ∈ U, ∃ g : structureSheaf, observations g U
  projectionProperty : Prop
  projectionPropertyTerm : projectionProperty

structure ObservationSpaceEvidence (X : Type u) (S : AbstractObservationSpace X) where
  projectionPropertyClosed : S.projectionProperty

def AbstractObservationSpaceClosed (X : Type u) (S : AbstractObservationSpace X) : Prop :=
  S.projectionProperty

theorem abstract_observation_space_closed_from_evidence (X : Type u) (S : AbstractObservationSpace X)
    (E : ObservationSpaceEvidence X S) : AbstractObservationSpaceClosed X S :=
  E.projectionPropertyClosed

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse
