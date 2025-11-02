module Stratosphere.EC2.TrafficMirrorFilter (
        TrafficMirrorFilter(..), mkTrafficMirrorFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrafficMirrorFilter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html>
    TrafficMirrorFilter {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-networkservices>
                         networkServices :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficMirrorFilter :: TrafficMirrorFilter
mkTrafficMirrorFilter
  = TrafficMirrorFilter
      {haddock_workaround_ = (), description = Prelude.Nothing,
       networkServices = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TrafficMirrorFilter where
  toResourceProperties TrafficMirrorFilter {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TrafficMirrorFilter",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "NetworkServices" Prelude.<$> networkServices,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON TrafficMirrorFilter where
  toJSON TrafficMirrorFilter {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "NetworkServices" Prelude.<$> networkServices,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" TrafficMirrorFilter where
  type PropertyType "Description" TrafficMirrorFilter = Value Prelude.Text
  set newValue TrafficMirrorFilter {..}
    = TrafficMirrorFilter {description = Prelude.pure newValue, ..}
instance Property "NetworkServices" TrafficMirrorFilter where
  type PropertyType "NetworkServices" TrafficMirrorFilter = ValueList Prelude.Text
  set newValue TrafficMirrorFilter {..}
    = TrafficMirrorFilter {networkServices = Prelude.pure newValue, ..}
instance Property "Tags" TrafficMirrorFilter where
  type PropertyType "Tags" TrafficMirrorFilter = [Tag]
  set newValue TrafficMirrorFilter {..}
    = TrafficMirrorFilter {tags = Prelude.pure newValue, ..}