import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure RTMatrix where
  R : Matrix (Fin 2 ⊗ Fin 2) (Fin 2 ⊗ Fin 2) ℂ
  yangBaxter : (R ⊗ I) ∘ (I ⊗ R) ∘ (R ⊗ I) = (I ⊗ R) ∘ (R ⊗ I) ∘ (I ⊗ R)
  invertibility : IsUnit R

def rMatrixClosed (R : RTMatrix) : Prop :=
  R.yangBaxter ∧ R.invertibility

theorem r_matrix_from_admissible (A : AdmissibleClass) : rMatrixClosed (sourceRTMatrix) := by
  sorry

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse
