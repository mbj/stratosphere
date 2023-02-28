module Stratosphere.Location.Map.MapConfigurationProperty (
        MapConfigurationProperty(..), mkMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MapConfigurationProperty
  = MapConfigurationProperty {style :: (Value Prelude.Text)}
mkMapConfigurationProperty ::
  Value Prelude.Text -> MapConfigurationProperty
mkMapConfigurationProperty style
  = MapConfigurationProperty {style = style}
instance ToResourceProperties MapConfigurationProperty where
  toResourceProperties MapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Location::Map.MapConfiguration",
         supportsTags = Prelude.False, properties = ["Style" JSON..= style]}
instance JSON.ToJSON MapConfigurationProperty where
  toJSON MapConfigurationProperty {..}
    = JSON.object ["Style" JSON..= style]
instance Property "Style" MapConfigurationProperty where
  type PropertyType "Style" MapConfigurationProperty = Value Prelude.Text
  set newValue MapConfigurationProperty {}
    = MapConfigurationProperty {style = newValue, ..}