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
  = AssetModelPropertyProperty {dataType :: (Value Prelude.Text),
                                dataTypeSpec :: (Prelude.Maybe (Value Prelude.Text)),
                                logicalId :: (Value Prelude.Text),
                                name :: (Value Prelude.Text),
                                type' :: PropertyTypeProperty,
                                unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetModelPropertyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> PropertyTypeProperty -> AssetModelPropertyProperty
mkAssetModelPropertyProperty dataType logicalId name type'
  = AssetModelPropertyProperty
      {dataType = dataType, logicalId = logicalId, name = name,
       type' = type', dataTypeSpec = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties AssetModelPropertyProperty where
  toResourceProperties AssetModelPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.AssetModelProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataType" JSON..= dataType, "LogicalId" JSON..= logicalId,
                            "Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DataTypeSpec" Prelude.<$> dataTypeSpec,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON AssetModelPropertyProperty where
  toJSON AssetModelPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataType" JSON..= dataType, "LogicalId" JSON..= logicalId,
               "Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DataTypeSpec" Prelude.<$> dataTypeSpec,
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
instance Property "LogicalId" AssetModelPropertyProperty where
  type PropertyType "LogicalId" AssetModelPropertyProperty = Value Prelude.Text
  set newValue AssetModelPropertyProperty {..}
    = AssetModelPropertyProperty {logicalId = newValue, ..}
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