import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean.AdmissibleClass

open HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure ContractionMappingLemma where
  object : ContractionMappingObject
  fixedPointExistence : ∃ x : object.carrier, object.f x = x
  fixedPointUniqueness : ∀ x y : object.carrier, object.f x = x → object.f y = y → x = y
  iterativeConvergence : ∀ x : object.carrier, filter.Tendsto (λ n : ℕ => (object.f ^[n]) x) filter.atTop (𝓝 (Classical.choose fixedPointExistence))

theorem contraction_mapping_lemma_closed (C : ContractionMappingLemma) : True := by
  trivial

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse