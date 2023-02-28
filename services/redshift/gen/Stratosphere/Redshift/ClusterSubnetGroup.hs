module Stratosphere.Redshift.ClusterSubnetGroup (
        ClusterSubnetGroup(..), mkClusterSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ClusterSubnetGroup
  = ClusterSubnetGroup {description :: (Value Prelude.Text),
                        subnetIds :: (ValueList Prelude.Text),
                        tags :: (Prelude.Maybe [Tag])}
mkClusterSubnetGroup ::
  Value Prelude.Text -> ValueList Prelude.Text -> ClusterSubnetGroup
mkClusterSubnetGroup description subnetIds
  = ClusterSubnetGroup
      {description = description, subnetIds = subnetIds,
       tags = Prelude.Nothing}
instance ToResourceProperties ClusterSubnetGroup where
  toResourceProperties ClusterSubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ClusterSubnetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ClusterSubnetGroup where
  toJSON ClusterSubnetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ClusterSubnetGroup where
  type PropertyType "Description" ClusterSubnetGroup = Value Prelude.Text
  set newValue ClusterSubnetGroup {..}
    = ClusterSubnetGroup {description = newValue, ..}
instance Property "SubnetIds" ClusterSubnetGroup where
  type PropertyType "SubnetIds" ClusterSubnetGroup = ValueList Prelude.Text
  set newValue ClusterSubnetGroup {..}
    = ClusterSubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" ClusterSubnetGroup where
  type PropertyType "Tags" ClusterSubnetGroup = [Tag]
  set newValue ClusterSubnetGroup {..}
    = ClusterSubnetGroup {tags = Prelude.pure newValue, ..}