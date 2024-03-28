module Stratosphere.IoTSiteWise.Asset (
        module Exports, Asset(..), mkAsset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Asset.AssetHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Asset.AssetPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Asset
  = Asset {assetDescription :: (Prelude.Maybe (Value Prelude.Text)),
           assetExternalId :: (Prelude.Maybe (Value Prelude.Text)),
           assetHierarchies :: (Prelude.Maybe [AssetHierarchyProperty]),
           assetModelId :: (Value Prelude.Text),
           assetName :: (Value Prelude.Text),
           assetProperties :: (Prelude.Maybe [AssetPropertyProperty]),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsset :: Value Prelude.Text -> Value Prelude.Text -> Asset
mkAsset assetModelId assetName
  = Asset
      {assetModelId = assetModelId, assetName = assetName,
       assetDescription = Prelude.Nothing,
       assetExternalId = Prelude.Nothing,
       assetHierarchies = Prelude.Nothing,
       assetProperties = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Asset where
  toResourceProperties Asset {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Asset", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssetModelId" JSON..= assetModelId,
                            "AssetName" JSON..= assetName]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetDescription" Prelude.<$> assetDescription,
                               (JSON..=) "AssetExternalId" Prelude.<$> assetExternalId,
                               (JSON..=) "AssetHierarchies" Prelude.<$> assetHierarchies,
                               (JSON..=) "AssetProperties" Prelude.<$> assetProperties,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Asset where
  toJSON Asset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssetModelId" JSON..= assetModelId,
               "AssetName" JSON..= assetName]
              (Prelude.catMaybes
                 [(JSON..=) "AssetDescription" Prelude.<$> assetDescription,
                  (JSON..=) "AssetExternalId" Prelude.<$> assetExternalId,
                  (JSON..=) "AssetHierarchies" Prelude.<$> assetHierarchies,
                  (JSON..=) "AssetProperties" Prelude.<$> assetProperties,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssetDescription" Asset where
  type PropertyType "AssetDescription" Asset = Value Prelude.Text
  set newValue Asset {..}
    = Asset {assetDescription = Prelude.pure newValue, ..}
instance Property "AssetExternalId" Asset where
  type PropertyType "AssetExternalId" Asset = Value Prelude.Text
  set newValue Asset {..}
    = Asset {assetExternalId = Prelude.pure newValue, ..}
instance Property "AssetHierarchies" Asset where
  type PropertyType "AssetHierarchies" Asset = [AssetHierarchyProperty]
  set newValue Asset {..}
    = Asset {assetHierarchies = Prelude.pure newValue, ..}
instance Property "AssetModelId" Asset where
  type PropertyType "AssetModelId" Asset = Value Prelude.Text
  set newValue Asset {..} = Asset {assetModelId = newValue, ..}
instance Property "AssetName" Asset where
  type PropertyType "AssetName" Asset = Value Prelude.Text
  set newValue Asset {..} = Asset {assetName = newValue, ..}
instance Property "AssetProperties" Asset where
  type PropertyType "AssetProperties" Asset = [AssetPropertyProperty]
  set newValue Asset {..}
    = Asset {assetProperties = Prelude.pure newValue, ..}
instance Property "Tags" Asset where
  type PropertyType "Tags" Asset = [Tag]
  set newValue Asset {..} = Asset {tags = Prelude.pure newValue, ..}