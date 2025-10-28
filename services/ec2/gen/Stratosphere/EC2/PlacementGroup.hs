module Stratosphere.EC2.PlacementGroup (
        PlacementGroup(..), mkPlacementGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PlacementGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html>
    PlacementGroup {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-partitioncount>
                    partitionCount :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-spreadlevel>
                    spreadLevel :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-strategy>
                    strategy :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementGroup :: PlacementGroup
mkPlacementGroup
  = PlacementGroup
      {haddock_workaround_ = (), partitionCount = Prelude.Nothing,
       spreadLevel = Prelude.Nothing, strategy = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PlacementGroup where
  toResourceProperties PlacementGroup {..}
    = ResourceProperties
        {awsType = "AWS::EC2::PlacementGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PartitionCount" Prelude.<$> partitionCount,
                            (JSON..=) "SpreadLevel" Prelude.<$> spreadLevel,
                            (JSON..=) "Strategy" Prelude.<$> strategy,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON PlacementGroup where
  toJSON PlacementGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PartitionCount" Prelude.<$> partitionCount,
               (JSON..=) "SpreadLevel" Prelude.<$> spreadLevel,
               (JSON..=) "Strategy" Prelude.<$> strategy,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "PartitionCount" PlacementGroup where
  type PropertyType "PartitionCount" PlacementGroup = Value Prelude.Integer
  set newValue PlacementGroup {..}
    = PlacementGroup {partitionCount = Prelude.pure newValue, ..}
instance Property "SpreadLevel" PlacementGroup where
  type PropertyType "SpreadLevel" PlacementGroup = Value Prelude.Text
  set newValue PlacementGroup {..}
    = PlacementGroup {spreadLevel = Prelude.pure newValue, ..}
instance Property "Strategy" PlacementGroup where
  type PropertyType "Strategy" PlacementGroup = Value Prelude.Text
  set newValue PlacementGroup {..}
    = PlacementGroup {strategy = Prelude.pure newValue, ..}
instance Property "Tags" PlacementGroup where
  type PropertyType "Tags" PlacementGroup = [Tag]
  set newValue PlacementGroup {..}
    = PlacementGroup {tags = Prelude.pure newValue, ..}