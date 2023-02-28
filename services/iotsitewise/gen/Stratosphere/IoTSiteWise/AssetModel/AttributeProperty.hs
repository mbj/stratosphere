module Stratosphere.IoTSiteWise.AssetModel.AttributeProperty (
        AttributeProperty(..), mkAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeProperty
  = AttributeProperty {defaultValue :: (Prelude.Maybe (Value Prelude.Text))}
mkAttributeProperty :: AttributeProperty
mkAttributeProperty
  = AttributeProperty {defaultValue = Prelude.Nothing}
instance ToResourceProperties AttributeProperty where
  toResourceProperties AttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.Attribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultValue" Prelude.<$> defaultValue])}
instance JSON.ToJSON AttributeProperty where
  toJSON AttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultValue" Prelude.<$> defaultValue]))
instance Property "DefaultValue" AttributeProperty where
  type PropertyType "DefaultValue" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {}
    = AttributeProperty {defaultValue = Prelude.pure newValue, ..}