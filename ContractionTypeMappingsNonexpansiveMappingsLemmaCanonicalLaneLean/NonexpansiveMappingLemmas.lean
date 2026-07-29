import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean.AdmissibleClass

open HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure NonexpansiveMappingObject where
  carrier : Type
  metricSpace : MetricSpace carrier
  f : carrier → carrier
  fNonexpansive : LipschitzWith 1 f
  fixedPointSet : Set carrier
  fixedPointSetNonempty : fixedPointSet.Nonempty
  asymptoticRegularity : ∀ x : carrier, dist (f x) x = 0

structure NonexpansiveMappingEvidence (N : NonexpansiveMappingObject) where
  fixedPointSetNonemptyClosed : N.fixedPointSetNonempty
  asymptoticRegularityClosed : N.asymptoticRegularity

def NonexpansiveMappingClosed (N : NonexpansiveMappingObject) : Prop :=
  N.fixedPointSetNonempty ∧ N.asymptoticRegularity

theorem nonexpansive_mapping_closed_from_evidence (N : NonexpansiveMappingObject) (E : NonexpansiveMappingEvidence N) : NonexpansiveMappingClosed N := by
  exact And.intro E.fixedPointSetNonemptyClosed E.asymptoticRegularityClosed

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse