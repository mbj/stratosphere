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
  = SubnetGroup {cacheSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Value Prelude.Text),
                 subnetIds :: (ValueList (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
mkSubnetGroup ::
  Value Prelude.Text -> ValueList (Value Prelude.Text) -> SubnetGroup
mkSubnetGroup description subnetIds
  = SubnetGroup
      {description = description, subnetIds = subnetIds,
       cacheSubnetGroupName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SubnetGroup where
  toResourceProperties SubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::SubnetGroup",
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
  type PropertyType "SubnetIds" SubnetGroup = ValueList (Value Prelude.Text)
  set newValue SubnetGroup {..}
    = SubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" SubnetGroup where
  type PropertyType "Tags" SubnetGroup = [Tag]
  set newValue SubnetGroup {..}
    = SubnetGroup {tags = Prelude.pure newValue, ..}