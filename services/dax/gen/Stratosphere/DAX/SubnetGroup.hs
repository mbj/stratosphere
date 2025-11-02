module Stratosphere.DAX.SubnetGroup (
        SubnetGroup(..), mkSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html>
    SubnetGroup {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetgroupname>
                 subnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetids>
                 subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetGroup :: ValueList Prelude.Text -> SubnetGroup
mkSubnetGroup subnetIds
  = SubnetGroup
      {haddock_workaround_ = (), subnetIds = subnetIds,
       description = Prelude.Nothing, subnetGroupName = Prelude.Nothing}
instance ToResourceProperties SubnetGroup where
  toResourceProperties SubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::DAX::SubnetGroup", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SubnetGroupName" Prelude.<$> subnetGroupName]))}
instance JSON.ToJSON SubnetGroup where
  toJSON SubnetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SubnetGroupName" Prelude.<$> subnetGroupName])))
instance Property "Description" SubnetGroup where
  type PropertyType "Description" SubnetGroup = Value Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {description = Prelude.pure newValue, ..}
instance Property "SubnetGroupName" SubnetGroup where
  type PropertyType "SubnetGroupName" SubnetGroup = Value Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {subnetGroupName = Prelude.pure newValue, ..}
instance Property "SubnetIds" SubnetGroup where
  type PropertyType "SubnetIds" SubnetGroup = ValueList Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {subnetIds = newValue, ..}