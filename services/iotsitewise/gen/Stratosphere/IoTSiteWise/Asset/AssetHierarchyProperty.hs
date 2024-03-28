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
                            externalId :: (Prelude.Maybe (Value Prelude.Text)),
                            id :: (Prelude.Maybe (Value Prelude.Text)),
                            logicalId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetHierarchyProperty ::
  Value Prelude.Text -> AssetHierarchyProperty
mkAssetHierarchyProperty childAssetId
  = AssetHierarchyProperty
      {childAssetId = childAssetId, externalId = Prelude.Nothing,
       id = Prelude.Nothing, logicalId = Prelude.Nothing}
instance ToResourceProperties AssetHierarchyProperty where
  toResourceProperties AssetHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Asset.AssetHierarchy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChildAssetId" JSON..= childAssetId]
                           (Prelude.catMaybes
                              [(JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "LogicalId" Prelude.<$> logicalId]))}
instance JSON.ToJSON AssetHierarchyProperty where
  toJSON AssetHierarchyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChildAssetId" JSON..= childAssetId]
              (Prelude.catMaybes
                 [(JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "LogicalId" Prelude.<$> logicalId])))
instance Property "ChildAssetId" AssetHierarchyProperty where
  type PropertyType "ChildAssetId" AssetHierarchyProperty = Value Prelude.Text
  set newValue AssetHierarchyProperty {..}
    = AssetHierarchyProperty {childAssetId = newValue, ..}
instance Property "ExternalId" AssetHierarchyProperty where
  type PropertyType "ExternalId" AssetHierarchyProperty = Value Prelude.Text
  set newValue AssetHierarchyProperty {..}
    = AssetHierarchyProperty {externalId = Prelude.pure newValue, ..}
instance Property "Id" AssetHierarchyProperty where
  type PropertyType "Id" AssetHierarchyProperty = Value Prelude.Text
  set newValue AssetHierarchyProperty {..}
    = AssetHierarchyProperty {id = Prelude.pure newValue, ..}
instance Property "LogicalId" AssetHierarchyProperty where
  type PropertyType "LogicalId" AssetHierarchyProperty = Value Prelude.Text
  set newValue AssetHierarchyProperty {..}
    = AssetHierarchyProperty {logicalId = Prelude.pure newValue, ..}