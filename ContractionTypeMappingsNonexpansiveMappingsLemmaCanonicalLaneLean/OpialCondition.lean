import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure OpialConditionPackage where
  space : Type u
  norm : space → ℝ
  banachSpace : Prop
  opialCondition : ∀ (x : space) (seq : ℕ → space), (seq ⇀ x) → ∀ y ≠ x, liminf (norm (seq n - x)) < liminf (norm (seq n - y))

structure OpialConditionEvidence (P : OpialConditionPackage) where
  fixedPointSetWeaklyClosed : ∀ (x : space) (seq : ℕ → space), (seq ⇀ x) ∧ (∀ n, seq n ∈ {y | nonexpansiveMapping.mapping y = y}) → x ∈ {y | nonexpansiveMapping.mapping y = y}
  weakConvergenceToFixedPoint : ∀ (x0 : space), ∃ (seq : ℕ → space), (seq ⇀ x) ∧ (∀ n, seq n = nonexpansiveMapping.mapping (seq n)) ∧ (x ∈ {y | nonexpansiveMapping.mapping y = y})

structure OpialConditionClosed (P : OpialConditionPackage) : Prop where
  banachSpaceClosed : P.banachSpace
  opialConditionClosed : P.opialCondition
  fixedPointSetWeaklyClosedClosed : P.fixedPointSetWeaklyClosed
  weakConvergenceToFixedPointClosed : P.weakConvergenceToFixedPoint

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse
