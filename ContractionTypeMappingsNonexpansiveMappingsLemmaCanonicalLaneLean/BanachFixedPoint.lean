import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure BanachContractionPackage where
  space : Type u
  metric : space → space → ℝ
  completeMetricSpace : Prop
  contraction : space → space
  contractionFactor : ℝ
  factorInUnitInterval : 0 ≤ contractionFactor ∧ contractionFactor < 1
  lipschitzContraction : ∀ x y : space, metric (contraction x) (contraction y) ≤ contractionFactor * metric x y

structure BanachContractionEvidence (P : BanachContractionPackage) where
  uniqueFixedPointExists : ∃! x : P.space, P.contraction x = x

structure BanachContractionClosed (P : BanachContractionPackage) : Prop where
  completeMetricSpaceClosed : P.completeMetricSpace
  factorInUnitIntervalClosed : P.factorInUnitInterval
  lipschitzContractionClosed : P.lipschitzContraction
  uniqueFixedPointExistsClosed : P.uniqueFixedPointExists

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse
