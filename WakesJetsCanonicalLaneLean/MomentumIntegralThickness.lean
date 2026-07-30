import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure MomentumIntegralThicknessPackage where
  momentumDefectIntegral : Prop
  displacementThickness : Prop
  momentumThickness : Prop
  shapeFactor : Prop
  closureRelation : Prop

structure MomentumIntegralThicknessEvidence (P : MomentumIntegralThicknessPackage) where
  momentumDefectIntegralClosed : P.momentumDefectIntegral
  displacementThicknessClosed : P.displacementThickness
  momentumThicknessClosed : P.momentumThickness
  shapeFactorClosed : P.shapeFactor
  closureRelationClosed : P.closureRelation

def MomentumIntegralThicknessClosed (P : MomentumIntegralThicknessPackage) : Prop :=
  P.momentumDefectIntegral ∧ P.displacementThickness ∧ P.momentumThickness ∧ P.shapeFactor ∧ P.closureRelation

theorem momentum_integral_thickness_closed_from_evidence (P : MomentumIntegralThicknessPackage) (E : MomentumIntegralThicknessEvidence P) :
    MomentumIntegralThicknessClosed P := by
  exact And.intro E.momentumDefectIntegralClosed (And.intro E.displacementThicknessClosed (And.intro E.momentumThicknessClosed (And.intro E.shapeFactorClosed E.closureRelationClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse