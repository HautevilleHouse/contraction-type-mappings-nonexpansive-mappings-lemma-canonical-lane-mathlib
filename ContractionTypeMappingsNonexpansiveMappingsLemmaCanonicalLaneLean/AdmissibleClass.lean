import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure ContractionMappingObject where
  carrier : Type
  normedGroupStructure : AddGroup carrier
  metricCompatible : MetricSpace carrier
  contractionFactor : ℝ
  factorPos : contractionFactor > 0
  factorLessThanOne : contractionFactor < 1
  lipschitzConstant : ℝ
  lipschitzBound : lipschitzConstant = contractionFactor
  fixedPoint : carrier
  fixedProperty : ∀ x : carrier, dist (f x) (f (fixedPoint)) = contractionFactor * dist x (fixedPoint)
  f : carrier → carrier
  fLipschitz : LipschitzWith (lipschitzConstant) f

structure AdmissibleClass where
  object : ContractionMappingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContractionBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse