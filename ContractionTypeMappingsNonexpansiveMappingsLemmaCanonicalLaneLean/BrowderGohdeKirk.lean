import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure BrowderGohdeKirkPackage where
  space : Type u
  norm : space → ℝ
  uniformlyConvexBanachSpace : Prop
  nonexpansiveMapping : NonexpansiveMappingPackage
  boundedClosedConvexSet : Set space
  convex : Convex ℝ boundedClosedConvexSet
  closed : IsClosed boundedClosedConvexSet
  bounded : Bornology.IsBounded boundedClosedConvexSet
  nonempty : boundedClosedConvexSet.Nonempty
  invariant : ∀ x ∈ boundedClosedConvexSet, nonexpansiveMapping.mapping x ∈ boundedClosedConvexSet

structure BrowderGohdeKirkEvidence (P : BrowderGohdeKirkPackage) where
  fixedPointExists : ∃ x ∈ P.boundedClosedConvexSet, P.nonexpansiveMapping.mapping x = x

structure BrowderGohdeKirkClosed (P : BrowderGohdeKirkPackage) : Prop where
  uniformlyConvexBanachSpaceClosed : P.uniformlyConvexBanachSpace
  convexClosed : P.convex
  closedClosed : P.closed
  boundedClosed : P.bounded
  nonemptyClosed : P.nonempty
  invariantClosed : P.invariant
  fixedPointExistsClosed : ∃ x ∈ P.boundedClosedConvexSet, P.nonexpansiveMapping.mapping x = x

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse
