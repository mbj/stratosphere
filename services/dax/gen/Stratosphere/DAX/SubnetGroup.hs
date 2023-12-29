module Stratosphere.DAX.SubnetGroup (
        SubnetGroup(..), mkSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetGroup
  = SubnetGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
                 subnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                 subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetGroup :: ValueList Prelude.Text -> SubnetGroup
mkSubnetGroup subnetIds
  = SubnetGroup
      {subnetIds = subnetIds, description = Prelude.Nothing,
       subnetGroupName = Prelude.Nothing}
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