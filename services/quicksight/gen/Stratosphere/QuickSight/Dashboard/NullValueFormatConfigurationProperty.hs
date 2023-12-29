module Stratosphere.QuickSight.Dashboard.NullValueFormatConfigurationProperty (
        NullValueFormatConfigurationProperty(..),
        mkNullValueFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NullValueFormatConfigurationProperty
  = NullValueFormatConfigurationProperty {nullString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNullValueFormatConfigurationProperty ::
  Value Prelude.Text -> NullValueFormatConfigurationProperty
mkNullValueFormatConfigurationProperty nullString
  = NullValueFormatConfigurationProperty {nullString = nullString}
instance ToResourceProperties NullValueFormatConfigurationProperty where
  toResourceProperties NullValueFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.NullValueFormatConfiguration",
         supportsTags = Prelude.False,
         properties = ["NullString" JSON..= nullString]}
instance JSON.ToJSON NullValueFormatConfigurationProperty where
  toJSON NullValueFormatConfigurationProperty {..}
    = JSON.object ["NullString" JSON..= nullString]
instance Property "NullString" NullValueFormatConfigurationProperty where
  type PropertyType "NullString" NullValueFormatConfigurationProperty = Value Prelude.Text
  set newValue NullValueFormatConfigurationProperty {}
    = NullValueFormatConfigurationProperty {nullString = newValue, ..}