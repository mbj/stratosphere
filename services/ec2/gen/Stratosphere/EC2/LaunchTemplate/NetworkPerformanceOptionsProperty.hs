module Stratosphere.EC2.LaunchTemplate.NetworkPerformanceOptionsProperty (
        NetworkPerformanceOptionsProperty(..),
        mkNetworkPerformanceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkPerformanceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkperformanceoptions.html>
    NetworkPerformanceOptionsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkperformanceoptions.html#cfn-ec2-launchtemplate-networkperformanceoptions-bandwidthweighting>
                                       bandwidthWeighting :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkPerformanceOptionsProperty ::
  NetworkPerformanceOptionsProperty
mkNetworkPerformanceOptionsProperty
  = NetworkPerformanceOptionsProperty
      {haddock_workaround_ = (), bandwidthWeighting = Prelude.Nothing}
instance ToResourceProperties NetworkPerformanceOptionsProperty where
  toResourceProperties NetworkPerformanceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.NetworkPerformanceOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BandwidthWeighting" Prelude.<$> bandwidthWeighting])}
instance JSON.ToJSON NetworkPerformanceOptionsProperty where
  toJSON NetworkPerformanceOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BandwidthWeighting" Prelude.<$> bandwidthWeighting]))
instance Property "BandwidthWeighting" NetworkPerformanceOptionsProperty where
  type PropertyType "BandwidthWeighting" NetworkPerformanceOptionsProperty = Value Prelude.Text
  set newValue NetworkPerformanceOptionsProperty {..}
    = NetworkPerformanceOptionsProperty
        {bandwidthWeighting = Prelude.pure newValue, ..}