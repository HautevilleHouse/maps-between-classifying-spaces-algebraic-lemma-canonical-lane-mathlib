import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure SteenrodAlgebraActionPackage where
  steenrodAlgebraType : Type u → Type v
  actionCompatibility : Prop
  cartanFormula : Prop
  ademRelations : Prop
  unstableCondition : Prop

structure SteenrodAlgebraActionEvidence (S : SteenrodAlgebraActionPackage) where
  actionCompatibilityClosed : S.actionCompatibility
  cartanFormulaClosed : S.cartanFormula
  ademRelationsClosed : S.ademRelations
  unstableConditionClosed : S.unstableCondition

def SteenrodAlgebraActionClosed (S : SteenrodAlgebraActionPackage) : Prop :=
  S.actionCompatibility ∧ S.cartanFormula ∧ S.ademRelations ∧ S.unstableCondition

theorem steenrod_algebra_action_closed_from_evidence
    (S : SteenrodAlgebraActionPackage) (E : SteenrodAlgebraActionEvidence S) :
    SteenrodAlgebraActionClosed S := by
  exact And.intro E.actionCompatibilityClosed
    (And.intro E.cartanFormulaClosed
      (And.intro E.ademRelationsClosed E.unstableConditionClosed))

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse