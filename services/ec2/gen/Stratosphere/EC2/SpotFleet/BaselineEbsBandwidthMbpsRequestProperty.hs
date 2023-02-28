module Stratosphere.EC2.SpotFleet.BaselineEbsBandwidthMbpsRequestProperty (
        BaselineEbsBandwidthMbpsRequestProperty(..),
        mkBaselineEbsBandwidthMbpsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BaselineEbsBandwidthMbpsRequestProperty
  = BaselineEbsBandwidthMbpsRequestProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                             min :: (Prelude.Maybe (Value Prelude.Integer))}
mkBaselineEbsBandwidthMbpsRequestProperty ::
  BaselineEbsBandwidthMbpsRequestProperty
mkBaselineEbsBandwidthMbpsRequestProperty
  = BaselineEbsBandwidthMbpsRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties BaselineEbsBandwidthMbpsRequestProperty where
  toResourceProperties BaselineEbsBandwidthMbpsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.BaselineEbsBandwidthMbpsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON BaselineEbsBandwidthMbpsRequestProperty where
  toJSON BaselineEbsBandwidthMbpsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" BaselineEbsBandwidthMbpsRequestProperty where
  type PropertyType "Max" BaselineEbsBandwidthMbpsRequestProperty = Value Prelude.Integer
  set newValue BaselineEbsBandwidthMbpsRequestProperty {..}
    = BaselineEbsBandwidthMbpsRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" BaselineEbsBandwidthMbpsRequestProperty where
  type PropertyType "Min" BaselineEbsBandwidthMbpsRequestProperty = Value Prelude.Integer
  set newValue BaselineEbsBandwidthMbpsRequestProperty {..}
    = BaselineEbsBandwidthMbpsRequestProperty
        {min = Prelude.pure newValue, ..}