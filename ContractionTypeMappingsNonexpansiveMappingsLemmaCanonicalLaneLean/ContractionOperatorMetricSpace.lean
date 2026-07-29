import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure ContractionOperatorMetricSpace where
  carrier : Type u
  metric : carrier → carrier → ℝ
  metricPos : ∀ x y, metric x y ≥ 0
  metricIdent : ∀ x y, metric x y = 0 ↔ x = y
  metricSymm : ∀ x y, metric x y = metric y x
  metricTri : ∀ x y z, metric x z ≤ metric x y + metric y z
  complete : ∀ f : ℕ → carrier, (∀ ε > 0, ∃ N, ∀ m n ≥ N, metric (f m) (f n) < ε) → ∃ x, ∀ ε > 0, ∃ N, ∀ n ≥ N, metric (f n) x < ε

structure ContractionOperatorMetricSpaceEvidence (M : ContractionOperatorMetricSpace) where
  metricPosClosed : ∀ x y, M.metric x y ≥ 0
  metricIdentClosed : ∀ x y, M.metric x y = 0 ↔ x = y
  metricSymmClosed : ∀ x y, M.metric x y = M.metric y x
  metricTriClosed : ∀ x y z, M.metric x z ≤ M.metric x y + M.metric y z
  completeClosed : ∀ f : ℕ → M.carrier, (∀ ε > 0, ∃ N, ∀ m n ≥ N, M.metric (f m) (f n) < ε) → ∃ x, ∀ ε > 0, ∃ N, ∀ n ≥ N, M.metric (f n) x < ε

def ContractionOperatorMetricSpaceClosed (M : ContractionOperatorMetricSpace) : Prop :=
  (∀ x y, M.metric x y ≥ 0) ∧ (∀ x y, M.metric x y = 0 ↔ x = y) ∧ (∀ x y, M.metric x y = M.metric y x) ∧
  (∀ x y z, M.metric x z ≤ M.metric x y + M.metric y z) ∧
  (∀ f : ℕ → M.carrier, (∀ ε > 0, ∃ N, ∀ m n ≥ N, M.metric (f m) (f n) < ε) → ∃ x, ∀ ε > 0, ∃ N, ∀ n ≥ N, M.metric (f n) x < ε)

theorem contraction_operator_metric_space_closed_from_evidence (M : ContractionOperatorMetricSpace)
    (E : ContractionOperatorMetricSpaceEvidence M) : ContractionOperatorMetricSpaceClosed M := by
  exact And.intro E.metricPosClosed (And.intro E.metricIdentClosed (And.intro E.metricSymmClosed (And.intro E.metricTriClosed E.completeClosed)))

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse