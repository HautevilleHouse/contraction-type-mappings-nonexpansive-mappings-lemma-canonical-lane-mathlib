import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure LeraySchauderData (M : ContractionOperatorMetricSpace) where
  compactOperator : M.carrier → M.carrier
  compactness : Prop
  schauderFixedPoint : Prop

structure LeraySchauderEvidence {M : ContractionOperatorMetricSpace} (L : LeraySchauderData M) where
  compactnessClosed : L.compactness
  schauderFixedPointClosed : L.schauderFixedPoint

def LeraySchauderClosed {M : ContractionOperatorMetricSpace} (L : LeraySchauderData M) : Prop :=
  L.compactness ∧ L.schauderFixedPoint

theorem leray_schauder_closed_from_evidence {M : ContractionOperatorMetricSpace} (L : LeraySchauderData M)
    (E : LeraySchauderEvidence L) : LeraySchauderClosed L := by
  exact And.intro E.compactnessClosed E.schauderFixedPointClosed

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse