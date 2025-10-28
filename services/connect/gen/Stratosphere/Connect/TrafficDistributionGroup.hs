module Stratosphere.Connect.TrafficDistributionGroup (
        TrafficDistributionGroup(..), mkTrafficDistributionGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrafficDistributionGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-trafficdistributiongroup.html>
    TrafficDistributionGroup {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-trafficdistributiongroup.html#cfn-connect-trafficdistributiongroup-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-trafficdistributiongroup.html#cfn-connect-trafficdistributiongroup-instancearn>
                              instanceArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-trafficdistributiongroup.html#cfn-connect-trafficdistributiongroup-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-trafficdistributiongroup.html#cfn-connect-trafficdistributiongroup-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficDistributionGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> TrafficDistributionGroup
mkTrafficDistributionGroup instanceArn name
  = TrafficDistributionGroup
      {haddock_workaround_ = (), instanceArn = instanceArn, name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TrafficDistributionGroup where
  toResourceProperties TrafficDistributionGroup {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TrafficDistributionGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TrafficDistributionGroup where
  toJSON TrafficDistributionGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" TrafficDistributionGroup where
  type PropertyType "Description" TrafficDistributionGroup = Value Prelude.Text
  set newValue TrafficDistributionGroup {..}
    = TrafficDistributionGroup
        {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" TrafficDistributionGroup where
  type PropertyType "InstanceArn" TrafficDistributionGroup = Value Prelude.Text
  set newValue TrafficDistributionGroup {..}
    = TrafficDistributionGroup {instanceArn = newValue, ..}
instance Property "Name" TrafficDistributionGroup where
  type PropertyType "Name" TrafficDistributionGroup = Value Prelude.Text
  set newValue TrafficDistributionGroup {..}
    = TrafficDistributionGroup {name = newValue, ..}
instance Property "Tags" TrafficDistributionGroup where
  type PropertyType "Tags" TrafficDistributionGroup = [Tag]
  set newValue TrafficDistributionGroup {..}
    = TrafficDistributionGroup {tags = Prelude.pure newValue, ..}