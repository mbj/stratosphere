module Stratosphere.IoTSiteWise.Asset.AssetHierarchyProperty (
        AssetHierarchyProperty(..), mkAssetHierarchyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetHierarchyProperty
  = AssetHierarchyProperty {childAssetId :: (Value Prelude.Text),
                            logicalId :: (Value Prelude.Text)}
mkAssetHierarchyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AssetHierarchyProperty
mkAssetHierarchyProperty childAssetId logicalId
  = AssetHierarchyProperty
      {childAssetId = childAssetId, logicalId = logicalId}
instance ToResourceProperties AssetHierarchyProperty where
  toResourceProperties AssetHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Asset.AssetHierarchy",
         properties = ["ChildAssetId" JSON..= childAssetId,
                       "LogicalId" JSON..= logicalId]}
instance JSON.ToJSON AssetHierarchyProperty where
  toJSON AssetHierarchyProperty {..}
    = JSON.object
        ["ChildAssetId" JSON..= childAssetId,
         "LogicalId" JSON..= logicalId]
instance Property "ChildAssetId" AssetHierarchyProperty where
  type PropertyType "ChildAssetId" AssetHierarchyProperty = Value Prelude.Text
  set newValue AssetHierarchyProperty {..}
    = AssetHierarchyProperty {childAssetId = newValue, ..}
instance Property "LogicalId" AssetHierarchyProperty where
  type PropertyType "LogicalId" AssetHierarchyProperty = Value Prelude.Text
  set newValue AssetHierarchyProperty {..}
    = AssetHierarchyProperty {logicalId = newValue, ..}