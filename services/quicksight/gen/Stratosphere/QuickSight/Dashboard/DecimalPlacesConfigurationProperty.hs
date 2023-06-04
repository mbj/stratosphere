module Stratosphere.QuickSight.Dashboard.DecimalPlacesConfigurationProperty (
        DecimalPlacesConfigurationProperty(..),
        mkDecimalPlacesConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalPlacesConfigurationProperty
  = DecimalPlacesConfigurationProperty {decimalPlaces :: (Value Prelude.Double)}
mkDecimalPlacesConfigurationProperty ::
  Value Prelude.Double -> DecimalPlacesConfigurationProperty
mkDecimalPlacesConfigurationProperty decimalPlaces
  = DecimalPlacesConfigurationProperty
      {decimalPlaces = decimalPlaces}
instance ToResourceProperties DecimalPlacesConfigurationProperty where
  toResourceProperties DecimalPlacesConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DecimalPlacesConfiguration",
         supportsTags = Prelude.False,
         properties = ["DecimalPlaces" JSON..= decimalPlaces]}
instance JSON.ToJSON DecimalPlacesConfigurationProperty where
  toJSON DecimalPlacesConfigurationProperty {..}
    = JSON.object ["DecimalPlaces" JSON..= decimalPlaces]
instance Property "DecimalPlaces" DecimalPlacesConfigurationProperty where
  type PropertyType "DecimalPlaces" DecimalPlacesConfigurationProperty = Value Prelude.Double
  set newValue DecimalPlacesConfigurationProperty {}
    = DecimalPlacesConfigurationProperty {decimalPlaces = newValue, ..}