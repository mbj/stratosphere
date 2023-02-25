module Stratosphere.IoTSiteWise.AssetModel.AssetModelHierarchyProperty (
        AssetModelHierarchyProperty(..), mkAssetModelHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetModelHierarchyProperty
  = AssetModelHierarchyProperty {childAssetModelId :: (Value Prelude.Text),
                                 logicalId :: (Value Prelude.Text),
                                 name :: (Value Prelude.Text)}
mkAssetModelHierarchyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> AssetModelHierarchyProperty
mkAssetModelHierarchyProperty childAssetModelId logicalId name
  = AssetModelHierarchyProperty
      {childAssetModelId = childAssetModelId, logicalId = logicalId,
       name = name}
instance ToResourceProperties AssetModelHierarchyProperty where
  toResourceProperties AssetModelHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.AssetModelHierarchy",
         properties = ["ChildAssetModelId" JSON..= childAssetModelId,
                       "LogicalId" JSON..= logicalId, "Name" JSON..= name]}
instance JSON.ToJSON AssetModelHierarchyProperty where
  toJSON AssetModelHierarchyProperty {..}
    = JSON.object
        ["ChildAssetModelId" JSON..= childAssetModelId,
         "LogicalId" JSON..= logicalId, "Name" JSON..= name]
instance Property "ChildAssetModelId" AssetModelHierarchyProperty where
  type PropertyType "ChildAssetModelId" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty {childAssetModelId = newValue, ..}
instance Property "LogicalId" AssetModelHierarchyProperty where
  type PropertyType "LogicalId" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty {logicalId = newValue, ..}
instance Property "Name" AssetModelHierarchyProperty where
  type PropertyType "Name" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty {name = newValue, ..}