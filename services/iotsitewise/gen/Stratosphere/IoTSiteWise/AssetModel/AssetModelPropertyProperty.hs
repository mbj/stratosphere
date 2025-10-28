module Stratosphere.IoTSiteWise.AssetModel.AssetModelPropertyProperty (
        module Exports, AssetModelPropertyProperty(..),
        mkAssetModelPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.PropertyTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetModelPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html>
    AssetModelPropertyProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-datatype>
                                dataType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-datatypespec>
                                dataTypeSpec :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-externalid>
                                externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-id>
                                id :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-logicalid>
                                logicalId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-name>
                                name :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-type>
                                type' :: PropertyTypeProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelproperty.html#cfn-iotsitewise-assetmodel-assetmodelproperty-unit>
                                unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModelPropertyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> PropertyTypeProperty -> AssetModelPropertyProperty
mkAssetModelPropertyProperty dataType name type'
  = AssetModelPropertyProperty
      {haddock_workaround_ = (), dataType = dataType, name = name,
       type' = type', dataTypeSpec = Prelude.Nothing,
       externalId = Prelude.Nothing, id = Prelude.Nothing,
       logicalId = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties AssetModelPropertyProperty where
  toResourceProperties AssetModelPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.AssetModelProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataType" JSON..= dataType, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DataTypeSpec" Prelude.<$> dataTypeSpec,
                               (JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "LogicalId" Prelude.<$> logicalId,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON AssetModelPropertyProperty where
  toJSON AssetModelPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataType" JSON..= dataType, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DataTypeSpec" Prelude.<$> dataTypeSpec,
                  (JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "LogicalId" Prelude.<$> logicalId,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "DataType" AssetModelPropertyProperty where
  type PropertyType "DataType" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty {dataType = newValue, ..}
instance Property "DataTypeSpec" AssetModelPropertyProperty where
  type PropertyType "DataTypeSpec" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty
        {dataTypeSpec = Prelude.pure newValue, ..}
instance Property "ExternalId" AssetModelPropertyProperty where
  type PropertyType "ExternalId" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "Id" AssetModelPropertyProperty where
  type PropertyType "Id" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty {id = Prelude.pure newValue, ..}
instance Property "LogicalId" AssetModelPropertyProperty where
  type PropertyType "LogicalId" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty
        {logicalId = Prelude.pure newValue, ..}
instance Property "Name" AssetModelPropertyProperty where
  type PropertyType "Name" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty {name = newValue, ..}
instance Property "Type" AssetModelPropertyProperty where
  type PropertyType "Type" AssetModelPropertyProperty = PropertyTypeProperty
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty {type' = newValue, ..}
instance Property "Unit" AssetModelPropertyProperty where
  type PropertyType "Unit" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty {unit = Prelude.pure newValue, ..}