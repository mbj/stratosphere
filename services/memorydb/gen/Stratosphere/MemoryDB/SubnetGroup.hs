module Stratosphere.MemoryDB.SubnetGroup (
        SubnetGroup(..), mkSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SubnetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-subnetgroup.html>
    SubnetGroup {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-subnetgroup.html#cfn-memorydb-subnetgroup-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-subnetgroup.html#cfn-memorydb-subnetgroup-subnetgroupname>
                 subnetGroupName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-subnetgroup.html#cfn-memorydb-subnetgroup-subnetids>
                 subnetIds :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-subnetgroup.html#cfn-memorydb-subnetgroup-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetGroup ::
  Value Prelude.Text -> ValueList Prelude.Text -> SubnetGroup
mkSubnetGroup subnetGroupName subnetIds
  = SubnetGroup
      {haddock_workaround_ = (), subnetGroupName = subnetGroupName,
       subnetIds = subnetIds, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SubnetGroup where
  toResourceProperties SubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::SubnetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetGroupName" JSON..= subnetGroupName,
                            "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SubnetGroup where
  toJSON SubnetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetGroupName" JSON..= subnetGroupName,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" SubnetGroup where
  type PropertyType "Description" SubnetGroup = Value Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {description = Prelude.pure newValue, ..}
instance Property "SubnetGroupName" SubnetGroup where
  type PropertyType "SubnetGroupName" SubnetGroup = Value Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {subnetGroupName = newValue, ..}
instance Property "SubnetIds" SubnetGroup where
  type PropertyType "SubnetIds" SubnetGroup = ValueList Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" SubnetGroup where
  type PropertyType "Tags" SubnetGroup = [Tag]
  set newValue SubnetGroup {..}
    = SubnetGroup {tags = Prelude.pure newValue, ..}