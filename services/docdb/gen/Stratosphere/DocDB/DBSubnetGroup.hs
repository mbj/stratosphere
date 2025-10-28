module Stratosphere.DocDB.DBSubnetGroup (
        DBSubnetGroup(..), mkDBSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBSubnetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html>
    DBSubnetGroup {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupdescription>
                   dBSubnetGroupDescription :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupname>
                   dBSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-subnetids>
                   subnetIds :: (ValueList Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBSubnetGroup ::
  Value Prelude.Text -> ValueList Prelude.Text -> DBSubnetGroup
mkDBSubnetGroup dBSubnetGroupDescription subnetIds
  = DBSubnetGroup
      {haddock_workaround_ = (),
       dBSubnetGroupDescription = dBSubnetGroupDescription,
       subnetIds = subnetIds, dBSubnetGroupName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DBSubnetGroup where
  toResourceProperties DBSubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::DocDB::DBSubnetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBSubnetGroupDescription" JSON..= dBSubnetGroupDescription,
                            "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBSubnetGroup where
  toJSON DBSubnetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBSubnetGroupDescription" JSON..= dBSubnetGroupDescription,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DBSubnetGroupDescription" DBSubnetGroup where
  type PropertyType "DBSubnetGroupDescription" DBSubnetGroup = Value Prelude.Text
  set newValue DBSubnetGroup {..}
    = DBSubnetGroup {dBSubnetGroupDescription = newValue, ..}
instance Property "DBSubnetGroupName" DBSubnetGroup where
  type PropertyType "DBSubnetGroupName" DBSubnetGroup = Value Prelude.Text
  set newValue DBSubnetGroup {..}
    = DBSubnetGroup {dBSubnetGroupName = Prelude.pure newValue, ..}
instance Property "SubnetIds" DBSubnetGroup where
  type PropertyType "SubnetIds" DBSubnetGroup = ValueList Prelude.Text
  set newValue DBSubnetGroup {..}
    = DBSubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" DBSubnetGroup where
  type PropertyType "Tags" DBSubnetGroup = [Tag]
  set newValue DBSubnetGroup {..}
    = DBSubnetGroup {tags = Prelude.pure newValue, ..}