import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure NonexpansiveMapping (M : ContractionOperatorMetricSpace) where
  map : M.carrier → M.carrier
  nonexpansive : ∀ x y, M.metric (map x) (map y) ≤ M.metric x y

structure NonexpansiveMappingEvidence {M : ContractionOperatorMetricSpace} (T : NonexpansiveMapping M) where
  nonexpansiveClosed : ∀ x y, M.metric (T.map x) (T.map y) ≤ M.metric x y

def NonexpansiveMappingClosed {M : ContractionOperatorMetricSpace} (T : NonexpansiveMapping M) : Prop :=
  ∀ x y, M.metric (T.map x) (T.map y) ≤ M.metric x y

theorem nonexpansive_mapping_closed_from_evidence {M : ContractionOperatorMetricSpace} (T : NonexpansiveMapping M)
    (E : NonexpansiveMappingEvidence T) : NonexpansiveMappingClosed T := by
  exact E.nonexpansiveClosed

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse