module Stratosphere.EC2.SpotFleet.VCpuCountRangeRequestProperty (
        VCpuCountRangeRequestProperty(..), mkVCpuCountRangeRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VCpuCountRangeRequestProperty
  = VCpuCountRangeRequestProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                   min :: (Prelude.Maybe (Value Prelude.Integer))}
mkVCpuCountRangeRequestProperty :: VCpuCountRangeRequestProperty
mkVCpuCountRangeRequestProperty
  = VCpuCountRangeRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties VCpuCountRangeRequestProperty where
  toResourceProperties VCpuCountRangeRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.VCpuCountRangeRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON VCpuCountRangeRequestProperty where
  toJSON VCpuCountRangeRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" VCpuCountRangeRequestProperty where
  type PropertyType "Max" VCpuCountRangeRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRangeRequestProperty {..}
    = VCpuCountRangeRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" VCpuCountRangeRequestProperty where
  type PropertyType "Min" VCpuCountRangeRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRangeRequestProperty {..}
    = VCpuCountRangeRequestProperty {min = Prelude.pure newValue, ..}