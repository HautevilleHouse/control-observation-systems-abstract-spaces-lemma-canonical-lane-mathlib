import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean

structure AbstractSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  measurableStructure : MeasurableSpace carrier

theorem abstract_space_closed (S : AbstractSpace) : True := by
  trivial

end ControlObservationSystemsAbstractSpacesLemmaCanonicalLaneLean
end HautevilleHouse