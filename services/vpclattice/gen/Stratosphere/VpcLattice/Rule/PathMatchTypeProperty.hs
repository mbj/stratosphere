module Stratosphere.VpcLattice.Rule.PathMatchTypeProperty (
        PathMatchTypeProperty(..), mkPathMatchTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathMatchTypeProperty
  = PathMatchTypeProperty {exact :: (Prelude.Maybe (Value Prelude.Text)),
                           prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkPathMatchTypeProperty :: PathMatchTypeProperty
mkPathMatchTypeProperty
  = PathMatchTypeProperty
      {exact = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties PathMatchTypeProperty where
  toResourceProperties PathMatchTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.PathMatchType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix])}
instance JSON.ToJSON PathMatchTypeProperty where
  toJSON PathMatchTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix]))
instance Property "Exact" PathMatchTypeProperty where
  type PropertyType "Exact" PathMatchTypeProperty = Value Prelude.Text
  set newValue PathMatchTypeProperty {..}
    = PathMatchTypeProperty {exact = Prelude.pure newValue, ..}
instance Property "Prefix" PathMatchTypeProperty where
  type PropertyType "Prefix" PathMatchTypeProperty = Value Prelude.Text
  set newValue PathMatchTypeProperty {..}
    = PathMatchTypeProperty {prefix = Prelude.pure newValue, ..}