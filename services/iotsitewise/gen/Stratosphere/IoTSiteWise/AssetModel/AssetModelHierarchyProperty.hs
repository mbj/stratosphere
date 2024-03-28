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
                                 externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                 id :: (Prelude.Maybe (Value Prelude.Text)),
                                 logicalId :: (Prelude.Maybe (Value Prelude.Text)),
                                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModelHierarchyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AssetModelHierarchyProperty
mkAssetModelHierarchyProperty childAssetModelId name
  = AssetModelHierarchyProperty
      {childAssetModelId = childAssetModelId, name = name,
       externalId = Prelude.Nothing, id = Prelude.Nothing,
       logicalId = Prelude.Nothing}
instance ToResourceProperties AssetModelHierarchyProperty where
  toResourceProperties AssetModelHierarchyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.AssetModelHierarchy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChildAssetModelId" JSON..= childAssetModelId,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "LogicalId" Prelude.<$> logicalId]))}
instance JSON.ToJSON AssetModelHierarchyProperty where
  toJSON AssetModelHierarchyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChildAssetModelId" JSON..= childAssetModelId,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "LogicalId" Prelude.<$> logicalId])))
instance Property "ChildAssetModelId" AssetModelHierarchyProperty where
  type PropertyType "ChildAssetModelId" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty {childAssetModelId = newValue, ..}
instance Property "ExternalId" AssetModelHierarchyProperty where
  type PropertyType "ExternalId" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "Id" AssetModelHierarchyProperty where
  type PropertyType "Id" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty {id = Prelude.pure newValue, ..}
instance Property "LogicalId" AssetModelHierarchyProperty where
  type PropertyType "LogicalId" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty
        {logicalId = Prelude.pure newValue, ..}
instance Property "Name" AssetModelHierarchyProperty where
  type PropertyType "Name" AssetModelHierarchyProperty = Value Prelude.Text
  set newValue AssetModelHierarchyProperty {..}
    = AssetModelHierarchyProperty {name = newValue, ..}