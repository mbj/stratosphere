module Stratosphere.EC2.SpotFleet.NetworkBandwidthGbpsRequestProperty (
        NetworkBandwidthGbpsRequestProperty(..),
        mkNetworkBandwidthGbpsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkBandwidthGbpsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-networkbandwidthgbpsrequest.html>
    NetworkBandwidthGbpsRequestProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-networkbandwidthgbpsrequest.html#cfn-ec2-spotfleet-networkbandwidthgbpsrequest-max>
                                         max :: (Prelude.Maybe (Value Prelude.Double)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-networkbandwidthgbpsrequest.html#cfn-ec2-spotfleet-networkbandwidthgbpsrequest-min>
                                         min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkBandwidthGbpsRequestProperty ::
  NetworkBandwidthGbpsRequestProperty
mkNetworkBandwidthGbpsRequestProperty
  = NetworkBandwidthGbpsRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties NetworkBandwidthGbpsRequestProperty where
  toResourceProperties NetworkBandwidthGbpsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.NetworkBandwidthGbpsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkBandwidthGbpsRequestProperty where
  toJSON NetworkBandwidthGbpsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkBandwidthGbpsRequestProperty where
  type PropertyType "Max" NetworkBandwidthGbpsRequestProperty = Value Prelude.Double
  set newValue NetworkBandwidthGbpsRequestProperty {..}
    = NetworkBandwidthGbpsRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkBandwidthGbpsRequestProperty where
  type PropertyType "Min" NetworkBandwidthGbpsRequestProperty = Value Prelude.Double
  set newValue NetworkBandwidthGbpsRequestProperty {..}
    = NetworkBandwidthGbpsRequestProperty
        {min = Prelude.pure newValue, ..}