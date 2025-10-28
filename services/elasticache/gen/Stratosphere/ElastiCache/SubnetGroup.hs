module Stratosphere.ElastiCache.SubnetGroup (
        SubnetGroup(..), mkSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SubnetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-subnetgroup.html>
    SubnetGroup {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-cachesubnetgroupname>
                 cacheSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-description>
                 description :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-subnetids>
                 subnetIds :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetGroup ::
  Value Prelude.Text -> ValueList Prelude.Text -> SubnetGroup
mkSubnetGroup description subnetIds
  = SubnetGroup
      {haddock_workaround_ = (), description = description,
       subnetIds = subnetIds, cacheSubnetGroupName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SubnetGroup where
  toResourceProperties SubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::SubnetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "CacheSubnetGroupName" Prelude.<$> cacheSubnetGroupName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SubnetGroup where
  toJSON SubnetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "CacheSubnetGroupName" Prelude.<$> cacheSubnetGroupName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CacheSubnetGroupName" SubnetGroup where
  type PropertyType "CacheSubnetGroupName" SubnetGroup = Value Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {cacheSubnetGroupName = Prelude.pure newValue, ..}
instance Property "Description" SubnetGroup where
  type PropertyType "Description" SubnetGroup = Value Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {description = newValue, ..}
instance Property "SubnetIds" SubnetGroup where
  type PropertyType "SubnetIds" SubnetGroup = ValueList Prelude.Text
  set newValue SubnetGroup {..}
    = SubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" SubnetGroup where
  type PropertyType "Tags" SubnetGroup = [Tag]
  set newValue SubnetGroup {..}
    = SubnetGroup {tags = Prelude.pure newValue, ..}