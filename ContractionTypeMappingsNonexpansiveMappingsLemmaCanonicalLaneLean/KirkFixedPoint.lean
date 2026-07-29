import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure KirkFixedPointPackage where
  space : Type u
  norm : space → ℝ
  reflexiveBanachSpace : Prop
  nonexpansiveMapping : NonexpansiveMappingPackage
  boundedClosedConvexSet : Set space
  convex : Convex ℝ boundedClosedConvexSet
  closed : IsClosed boundedClosedConvexSet
  bounded : Bornology.IsBounded boundedClosedConvexSet
  nonempty : boundedClosedConvexSet.Nonempty
  invariant : ∀ x ∈ boundedClosedConvexSet, nonexpansiveMapping.mapping x ∈ boundedClosedConvexSet

structure KirkFixedPointEvidence (P : KirkFixedPointPackage) where
  fixedPointExists : ∃ x ∈ P.boundedClosedConvexSet, P.nonexpansiveMapping.mapping x = x

structure KirkFixedPointClosed (P : KirkFixedPointPackage) : Prop where
  reflexiveBanachSpaceClosed : P.reflexiveBanachSpace
  convexClosed : P.convex
  closedClosed : P.closed
  boundedClosed : P.bounded
  nonemptyClosed : P.nonempty
  invariantClosed : P.invariant
  fixedPointExistsClosed : P.fixedPointExists

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse
