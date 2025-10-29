module Stratosphere.EC2.LaunchTemplate.NetworkBandwidthGbpsProperty (
        NetworkBandwidthGbpsProperty(..), mkNetworkBandwidthGbpsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkBandwidthGbpsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkbandwidthgbps.html>
    NetworkBandwidthGbpsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkbandwidthgbps.html#cfn-ec2-launchtemplate-networkbandwidthgbps-max>
                                  max :: (Prelude.Maybe (Value Prelude.Double)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkbandwidthgbps.html#cfn-ec2-launchtemplate-networkbandwidthgbps-min>
                                  min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkBandwidthGbpsProperty :: NetworkBandwidthGbpsProperty
mkNetworkBandwidthGbpsProperty
  = NetworkBandwidthGbpsProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties NetworkBandwidthGbpsProperty where
  toResourceProperties NetworkBandwidthGbpsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.NetworkBandwidthGbps",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkBandwidthGbpsProperty where
  toJSON NetworkBandwidthGbpsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkBandwidthGbpsProperty where
  type PropertyType "Max" NetworkBandwidthGbpsProperty = Value Prelude.Double
  set newValue NetworkBandwidthGbpsProperty {..}
    = NetworkBandwidthGbpsProperty {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkBandwidthGbpsProperty where
  type PropertyType "Min" NetworkBandwidthGbpsProperty = Value Prelude.Double
  set newValue NetworkBandwidthGbpsProperty {..}
    = NetworkBandwidthGbpsProperty {min = Prelude.pure newValue, ..}