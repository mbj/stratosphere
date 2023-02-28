module Stratosphere.EC2.LaunchTemplate.VCpuCountProperty (
        VCpuCountProperty(..), mkVCpuCountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VCpuCountProperty
  = VCpuCountProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                       min :: (Prelude.Maybe (Value Prelude.Integer))}
mkVCpuCountProperty :: VCpuCountProperty
mkVCpuCountProperty
  = VCpuCountProperty {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties VCpuCountProperty where
  toResourceProperties VCpuCountProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.VCpuCount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON VCpuCountProperty where
  toJSON VCpuCountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" VCpuCountProperty where
  type PropertyType "Max" VCpuCountProperty = Value Prelude.Integer
  set newValue VCpuCountProperty {..}
    = VCpuCountProperty {max = Prelude.pure newValue, ..}
instance Property "Min" VCpuCountProperty where
  type PropertyType "Min" VCpuCountProperty = Value Prelude.Integer
  set newValue VCpuCountProperty {..}
    = VCpuCountProperty {min = Prelude.pure newValue, ..}