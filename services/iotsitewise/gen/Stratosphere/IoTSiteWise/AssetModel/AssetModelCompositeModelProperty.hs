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
  = AssetModelCompositeModelProperty {compositeModelProperties :: (Prelude.Maybe [AssetModelPropertyProperty]),
                                      description :: (Prelude.Maybe (Value Prelude.Text)),
                                      name :: (Value Prelude.Text),
                                      type' :: (Value Prelude.Text)}
mkAssetModelCompositeModelProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AssetModelCompositeModelProperty
mkAssetModelCompositeModelProperty name type'
  = AssetModelCompositeModelProperty
      {name = name, type' = type',
       compositeModelProperties = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties AssetModelCompositeModelProperty where
  toResourceProperties AssetModelCompositeModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.AssetModelCompositeModel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CompositeModelProperties"
                                 Prelude.<$> compositeModelProperties,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON AssetModelCompositeModelProperty where
  toJSON AssetModelCompositeModelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CompositeModelProperties"
                    Prelude.<$> compositeModelProperties,
                  (JSON..=) "Description" Prelude.<$> description])))
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
instance Property "Name" AssetModelCompositeModelProperty where
  type PropertyType "Name" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty {name = newValue, ..}
instance Property "Type" AssetModelCompositeModelProperty where
  type PropertyType "Type" AssetModelCompositeModelProperty = Value Prelude.Text
  set newValue AssetModelCompositeModelProperty {..}
    = AssetModelCompositeModelProperty {type' = newValue, ..}