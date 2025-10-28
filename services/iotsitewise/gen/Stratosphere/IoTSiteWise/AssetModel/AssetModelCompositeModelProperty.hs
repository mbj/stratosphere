module Stratosphere.IoTSiteWise.AssetModel.AssetModelCompositeModelProperty (
        module Exports, AssetModelCompositeModelProperty(..),
        mkAssetModelCompositeModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AssetModelPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetModelCompositeModelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html>
    AssetModelCompositeModelProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-composedassetmodelid>
                                      composedAssetModelId :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-compositemodelproperties>
                                      compositeModelProperties :: (Prelude.Maybe [AssetModelPropertyProperty]),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-description>
                                      description :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-externalid>
                                      externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-id>
                                      id :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-name>
                                      name :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-parentassetmodelcompositemodelexternalid>
                                      parentAssetModelCompositeModelExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-path>
                                      path :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-type>
                                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModelCompositeModelProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AssetModelCompositeModelProperty
mkAssetModelCompositeModelProperty name type'
  = AssetModelCompositeModelProperty
      {haddock_workaround_ = (), name = name, type' = type',
       composedAssetModelId = Prelude.Nothing,
       compositeModelProperties = Prelude.Nothing,
       description = Prelude.Nothing, externalId = Prelude.Nothing,
       id = Prelude.Nothing,
       parentAssetModelCompositeModelExternalId = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties AssetModelCompositeModelProperty where
  toResourceProperties AssetModelCompositeModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.AssetModelCompositeModel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ComposedAssetModelId" Prelude.<$> composedAssetModelId,
                               (JSON..=) "CompositeModelProperties"
                                 Prelude.<$> compositeModelProperties,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "ParentAssetModelCompositeModelExternalId"
                                 Prelude.<$> parentAssetModelCompositeModelExternalId,
                               (JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON AssetModelCompositeModelProperty where
  toJSON AssetModelCompositeModelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ComposedAssetModelId" Prelude.<$> composedAssetModelId,
                  (JSON..=) "CompositeModelProperties"
                    Prelude.<$> compositeModelProperties,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "ParentAssetModelCompositeModelExternalId"
                    Prelude.<$> parentAssetModelCompositeModelExternalId,
                  (JSON..=) "Path" Prelude.<$> path])))
instance Property "ComposedAssetModelId" AssetModelCompositeModelProperty where
  type PropertyType "ComposedAssetModelId" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty
        {composedAssetModelId = Prelude.pure newValue, ..}
instance Property "CompositeModelProperties" AssetModelCompositeModelProperty where
  type PropertyType "CompositeModelProperties" AssetModelCompositeModelProperty = [AssetModelPropertyProperty]
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty
        {compositeModelProperties = Prelude.pure newValue, ..}
instance Property "Description" AssetModelCompositeModelProperty where
  type PropertyType "Description" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty
        {description = Prelude.pure newValue, ..}
instance Property "ExternalId" AssetModelCompositeModelProperty where
  type PropertyType "ExternalId" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "Id" AssetModelCompositeModelProperty where
  type PropertyType "Id" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty {id = Prelude.pure newValue, ..}
instance Property "Name" AssetModelCompositeModelProperty where
  type PropertyType "Name" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty {name = newValue, ..}
instance Property "ParentAssetModelCompositeModelExternalId" AssetModelCompositeModelProperty where
  type PropertyType "ParentAssetModelCompositeModelExternalId" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty
        {parentAssetModelCompositeModelExternalId = Prelude.pure newValue,
         ..}
instance Property "Path" AssetModelCompositeModelProperty where
  type PropertyType "Path" AssetModelCompositeModelProperty = ValueList Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty
        {path = Prelude.pure newValue, ..}
instance Property "Type" AssetModelCompositeModelProperty where
  type PropertyType "Type" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty {type' = newValue, ..}