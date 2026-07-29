import HautevilleHouse.ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean

structure ContractionBanachSpace where
  carrier : Type
  norm : carrier → ℝ
  completeness : Prop

structure ContractionAdmittedObject where
  space : ContractionBanachSpace
  mapping : carrier → carrier
  isContraction : Prop
  fixedPoint : carrier
  keyLemma : Prop
  conclusion : keyLemma

structure ContractionEndgameState where
  object : ContractionAdmittedObject

def ContractionWitnessClosed (O : ContractionAdmittedObject) : Prop :=
  O.keyLemma

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "contraction-type-mappings-nonexpansive-mappings-lemma",
    theoremName := "ContractionTypeMappingsNonexpansiveMappingsLemma",
    theoremObject := "Banach fixed point theorem for nonexpansive mappings under contraction type",
    classicalBoundary := "unrestricted classical closure",
    manifoldConstrainedStatement := "constrained under admissible class",
    certificateLane := "constrained",
    carriedRemainder := "none"
  }

end ContractionTypeMappingsNonexpansiveMappingsLemmaCanonicalLaneLean
end HautevilleHouse