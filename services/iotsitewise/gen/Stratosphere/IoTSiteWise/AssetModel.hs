module Stratosphere.IoTSiteWise.AssetModel (
        module Exports, AssetModel(..), mkAssetModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelCompositeModelProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.EnforcedAssetModelInterfaceRelationshipProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AssetModel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html>
    AssetModel {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodels>
                assetModelCompositeModels :: (Prelude.Maybe [AssetModelCompositeModelProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodeldescription>
                assetModelDescription :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodelexternalid>
                assetModelExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodelhierarchies>
                assetModelHierarchies :: (Prelude.Maybe [AssetModelHierarchyProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodelname>
                assetModelName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodelproperties>
                assetModelProperties :: (Prelude.Maybe [AssetModelPropertyProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-assetmodeltype>
                assetModelType :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-enforcedassetmodelinterfacerelationships>
                enforcedAssetModelInterfaceRelationships :: (Prelude.Maybe [EnforcedAssetModelInterfaceRelationshipProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-assetmodel.html#cfn-iotsitewise-assetmodel-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModel :: Value Prelude.Text -> AssetModel
mkAssetModel assetModelName
  = AssetModel
      {haddock_workaround_ = (), assetModelName = assetModelName,
       assetModelCompositeModels = Prelude.Nothing,
       assetModelDescription = Prelude.Nothing,
       assetModelExternalId = Prelude.Nothing,
       assetModelHierarchies = Prelude.Nothing,
       assetModelProperties = Prelude.Nothing,
       assetModelType = Prelude.Nothing,
       enforcedAssetModelInterfaceRelationships = Prelude.Nothing,
       tags = Prelude.Nothing}
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
                               (JSON..=) "EnforcedAssetModelInterfaceRelationships"
                                 Prelude.<$> enforcedAssetModelInterfaceRelationships,
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
                  (JSON..=) "EnforcedAssetModelInterfaceRelationships"
                    Prelude.<$> enforcedAssetModelInterfaceRelationships,
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
instance Property "EnforcedAssetModelInterfaceRelationships" AssetModel where
  type PropertyType "EnforcedAssetModelInterfaceRelationships" AssetModel = [EnforcedAssetModelInterfaceRelationshipProperty]
  set newValue AssetModel {..}
    = AssetModel
        {enforcedAssetModelInterfaceRelationships = Prelude.pure newValue,
         ..}
instance Property "Tags" AssetModel where
  type PropertyType "Tags" AssetModel = [Tag]
  set newValue AssetModel {..}
    = AssetModel {tags = Prelude.pure newValue, ..}