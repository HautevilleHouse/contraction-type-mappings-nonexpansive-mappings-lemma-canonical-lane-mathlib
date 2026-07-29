import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean.BridgeLemmas

open HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse