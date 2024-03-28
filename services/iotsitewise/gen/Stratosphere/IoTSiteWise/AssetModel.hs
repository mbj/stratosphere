module Stratosphere.IoTSiteWise.AssetModel (
        module Exports, AssetModel(..), mkAssetModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelCompositeModelProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AssetModel
  = AssetModel {assetModelCompositeModels :: (Prelude.Maybe [AssetModelCompositeModelProperty]),
                assetModelDescription :: (Prelude.Maybe (Value Prelude.Text)),
                assetModelExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                assetModelHierarchies :: (Prelude.Maybe [AssetModelHierarchyProperty]),
                assetModelName :: (Value Prelude.Text),
                assetModelProperties :: (Prelude.Maybe [AssetModelPropertyProperty]),
                assetModelType :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModel :: Value Prelude.Text -> AssetModel
mkAssetModel assetModelName
  = AssetModel
      {assetModelName = assetModelName,
       assetModelCompositeModels = Prelude.Nothing,
       assetModelDescription = Prelude.Nothing,
       assetModelExternalId = Prelude.Nothing,
       assetModelHierarchies = Prelude.Nothing,
       assetModelProperties = Prelude.Nothing,
       assetModelType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AssetModel where
  toResourceProperties AssetModel {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssetModelName" JSON..= assetModelName]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetModelCompositeModels"
                                 Prelude.<$> assetModelCompositeModels,
                               (JSON..=) "AssetModelDescription"
                                 Prelude.<$> assetModelDescription,
                               (JSON..=) "AssetModelExternalId" Prelude.<$> assetModelExternalId,
                               (JSON..=) "AssetModelHierarchies"
                                 Prelude.<$> assetModelHierarchies,
                               (JSON..=) "AssetModelProperties" Prelude.<$> assetModelProperties,
                               (JSON..=) "AssetModelType" Prelude.<$> assetModelType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AssetModel where
  toJSON AssetModel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssetModelName" JSON..= assetModelName]
              (Prelude.catMaybes
                 [(JSON..=) "AssetModelCompositeModels"
                    Prelude.<$> assetModelCompositeModels,
                  (JSON..=) "AssetModelDescription"
                    Prelude.<$> assetModelDescription,
                  (JSON..=) "AssetModelExternalId" Prelude.<$> assetModelExternalId,
                  (JSON..=) "AssetModelHierarchies"
                    Prelude.<$> assetModelHierarchies,
                  (JSON..=) "AssetModelProperties" Prelude.<$> assetModelProperties,
                  (JSON..=) "AssetModelType" Prelude.<$> assetModelType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssetModelCompositeModels" AssetModel where
  type PropertyType "AssetModelCompositeModels" AssetModel = [AssetModelCompositeModelProperty]
  set newValue AssetModel {..}
    = AssetModel
        {assetModelCompositeModels = Prelude.pure newValue, ..}
instance Property "AssetModelDescription" AssetModel where
  type PropertyType "AssetModelDescription" AssetModel = Value Prelude.Text
  set newValue AssetModel {..}
    = AssetModel {assetModelDescription = Prelude.pure newValue, ..}
instance Property "AssetModelExternalId" AssetModel where
  type PropertyType "AssetModelExternalId" AssetModel = Value Prelude.Text
  set newValue AssetModel {..}
    = AssetModel {assetModelExternalId = Prelude.pure newValue, ..}
instance Property "AssetModelHierarchies" AssetModel where
  type PropertyType "AssetModelHierarchies" AssetModel = [AssetModelHierarchyProperty]
  set newValue AssetModel {..}
    = AssetModel {assetModelHierarchies = Prelude.pure newValue, ..}
instance Property "AssetModelName" AssetModel where
  type PropertyType "AssetModelName" AssetModel = Value Prelude.Text
  set newValue AssetModel {..}
    = AssetModel {assetModelName = newValue, ..}
instance Property "AssetModelProperties" AssetModel where
  type PropertyType "AssetModelProperties" AssetModel = [AssetModelPropertyProperty]
  set newValue AssetModel {..}
    = AssetModel {assetModelProperties = Prelude.pure newValue, ..}
instance Property "AssetModelType" AssetModel where
  type PropertyType "AssetModelType" AssetModel = Value Prelude.Text
  set newValue AssetModel {..}
    = AssetModel {assetModelType = Prelude.pure newValue, ..}
instance Property "Tags" AssetModel where
  type PropertyType "Tags" AssetModel = [Tag]
  set newValue AssetModel {..}
    = AssetModel {tags = Prelude.pure newValue, ..}