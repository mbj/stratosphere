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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-baselineebsbandwidthmbps.html>
    BaselineEbsBandwidthMbpsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-baselineebsbandwidthmbps.html#cfn-ec2-launchtemplate-baselineebsbandwidthmbps-max>
                                      max :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-baselineebsbandwidthmbps.html#cfn-ec2-launchtemplate-baselineebsbandwidthmbps-min>
                                      min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBaselineEbsBandwidthMbpsProperty ::
  BaselineEbsBandwidthMbpsProperty
mkBaselineEbsBandwidthMbpsProperty
  = BaselineEbsBandwidthMbpsProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties BaselineEbsBandwidthMbpsProperty where
  toResourceProperties BaselineEbsBandwidthMbpsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.BaselineEbsBandwidthMbps",
         supportsTags = Prelude.False,
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