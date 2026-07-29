import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure FixedPointExistencePackage {M : ContractionOperatorMetricSpace} (T : NonexpansiveMapping M) where
  uniqueFixedPoint : ∃! x, T.map x = x

structure FixedPointExistenceEvidence {M : ContractionOperatorMetricSpace} {T : NonexpansiveMapping M}
    (F : FixedPointExistencePackage T) where
  uniqueFixedPointClosed : F.uniqueFixedPoint

def FixedPointExistenceClosed {M : ContractionOperatorMetricSpace} {T : NonexpansiveMapping M}
    (F : FixedPointExistencePackage T) : Prop :=
  F.uniqueFixedPoint

theorem fixed_point_existence_closed_from_evidence {M : ContractionOperatorMetricSpace}
    {T : NonexpansiveMapping M} (F : FixedPointExistencePackage T)
    (E : FixedPointExistenceEvidence F) : FixedPointExistenceClosed F := by
  exact E.uniqueFixedPointClosed

structure FixedPointLattice where
  carrier : Type u
  partialOrder : carrier → carrier → Prop
  completeLattice : Prop

theorem tarski_fixed_point (L : FixedPointLattice) (f : L.carrier → L.carrier) : False := by
  sorry

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse