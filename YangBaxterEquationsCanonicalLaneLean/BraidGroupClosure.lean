import canonicalLaneMathlib.AdmissibleClass
import YangBaxterEquationsCanonicalLaneLean.YangBaxterObjects

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure BraidGroupAction where
  sigma_i : ℕ → LinearOperator
  braid_relation : ∀ i j, |i - j| ≥ 2 → sigma_i i ∘ sigma_i j = sigma_i j ∘ sigma_i i
  yb_relation : ∀ i, sigma_i i ∘ sigma_i (i+1) ∘ sigma_i i = sigma_i (i+1) ∘ sigma_i i ∘ sigma_i (i+1)

def sourceBraidGroupAction : BraidGroupAction := {
  sigma_i := fun _ => identityOperator
  braid_relation := by
    intro i j h
    rfl
  yb_relation := by
    intro i
    rfl
}

def BraidGroupClosed (B : BraidGroupAction) : Prop :=
  (∀ i j, |i - j| ≥ 2 → B.sigma_i i ∘ B.sigma_i j = B.sigma_i j ∘ B.sigma_i i) ∧
  (∀ i, B.sigma_i i ∘ B.sigma_i (i+1) ∘ B.sigma_i i = B.sigma_i (i+1) ∘ B.sigma_i i ∘ B.sigma_i (i+1))

theorem source_braid_group_closed :
    BraidGroupClosed sourceBraidGroupAction := by
  exact And.intro sourceBraidGroupAction.braid_relation sourceBraidGroupAction.yb_relation

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse