import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WakesJetsCanonicalLaneLean

structure JetSpreadingPackage where
  momentumFluxConserved : Prop
  spreadingRateConstant : Prop
  velocityProfileSelfSimilar : Prop
  entrainmentModel : Prop
  centerlineDecay : Prop

structure JetSpreadingEvidence (P : JetSpreadingPackage) where
  momentumFluxConservedClosed : P.momentumFluxConserved
  spreadingRateConstantClosed : P.spreadingRateConstant
  velocityProfileSelfSimilarClosed : P.velocityProfileSelfSimilar
  entrainmentModelClosed : P.entrainmentModel
  centerlineDecayClosed : P.centerlineDecay

def JetSpreadingClosed (P : JetSpreadingPackage) : Prop :=
  P.momentumFluxConserved ∧ P.spreadingRateConstant ∧ P.velocityProfileSelfSimilar ∧
  P.entrainmentModel ∧ P.centerlineDecay

theorem jet_spreading_closed_from_evidence (P : JetSpreadingPackage)
    (E : JetSpreadingEvidence P) : JetSpreadingClosed P := by
  exact And.intro E.momentumFluxConservedClosed
    (And.intro E.spreadingRateConstantClosed
      (And.intro E.velocityProfileSelfSimilarClosed
        (And.intro E.entrainmentModelClosed E.centerlineDecayClosed)))

end WakesJetsCanonicalLaneLean
end HautevilleHouse