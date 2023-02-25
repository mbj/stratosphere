module Stratosphere.EC2.LaunchTemplate.BaselineEbsBandwidthMbpsProperty (
        BaselineEbsBandwidthMbpsProperty(..),
        mkBaselineEbsBandwidthMbpsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BaselineEbsBandwidthMbpsProperty
  = BaselineEbsBandwidthMbpsProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                      min :: (Prelude.Maybe (Value Prelude.Integer))}
mkBaselineEbsBandwidthMbpsProperty ::
  BaselineEbsBandwidthMbpsProperty
mkBaselineEbsBandwidthMbpsProperty
  = BaselineEbsBandwidthMbpsProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties BaselineEbsBandwidthMbpsProperty where
  toResourceProperties BaselineEbsBandwidthMbpsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.BaselineEbsBandwidthMbps",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON BaselineEbsBandwidthMbpsProperty where
  toJSON BaselineEbsBandwidthMbpsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" BaselineEbsBandwidthMbpsProperty where
  type PropertyType "Max" BaselineEbsBandwidthMbpsProperty = Value Prelude.Integer
  set newValue BaselineEbsBandwidthMbpsProperty {..}
    = BaselineEbsBandwidthMbpsProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" BaselineEbsBandwidthMbpsProperty where
  type PropertyType "Min" BaselineEbsBandwidthMbpsProperty = Value Prelude.Integer
  set newValue BaselineEbsBandwidthMbpsProperty {..}
    = BaselineEbsBandwidthMbpsProperty
        {min = Prelude.pure newValue, ..}