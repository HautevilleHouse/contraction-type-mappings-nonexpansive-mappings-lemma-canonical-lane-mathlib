import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure NonexpansiveMappingPackage where
  space : Type u
  norm : space → ℝ
  banachSpace : Prop
  mapping : space → space
  nonexpansive : ∀ x y : space, norm (mapping x - mapping y) ≤ norm (x - y)

structure NonexpansiveMappingEvidence (P : NonexpansiveMappingPackage) where
  fixedPointSetNonempty : ∃ x : P.space, P.mapping x = x
  fixedPointSetClosed : IsClosed {x : P.space | P.mapping x = x}

structure NonexpansiveMappingClosed (P : NonexpansiveMappingPackage) : Prop where
  banachSpaceClosed : P.banachSpace
  nonexpansiveClosed : P.nonexpansive
  fixedPointSetNonemptyClosed : P.fixedPointSetNonempty
  fixedPointSetClosedClosed : P.fixedPointSetClosed

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse
