module Stratosphere.AppFlow.Flow.GoogleAnalyticsSourcePropertiesProperty (
        GoogleAnalyticsSourcePropertiesProperty(..),
        mkGoogleAnalyticsSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GoogleAnalyticsSourcePropertiesProperty
  = GoogleAnalyticsSourcePropertiesProperty {object :: (Value Prelude.Text)}
mkGoogleAnalyticsSourcePropertiesProperty ::
  Value Prelude.Text -> GoogleAnalyticsSourcePropertiesProperty
mkGoogleAnalyticsSourcePropertiesProperty object
  = GoogleAnalyticsSourcePropertiesProperty {object = object}
instance ToResourceProperties GoogleAnalyticsSourcePropertiesProperty where
  toResourceProperties GoogleAnalyticsSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.GoogleAnalyticsSourceProperties",
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON GoogleAnalyticsSourcePropertiesProperty where
  toJSON GoogleAnalyticsSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" GoogleAnalyticsSourcePropertiesProperty where
  type PropertyType "Object" GoogleAnalyticsSourcePropertiesProperty = Value Prelude.Text
  set newValue GoogleAnalyticsSourcePropertiesProperty {}
    = GoogleAnalyticsSourcePropertiesProperty {object = newValue, ..}