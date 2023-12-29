module Stratosphere.AppFlow.Flow.DatadogSourcePropertiesProperty (
        DatadogSourcePropertiesProperty(..),
        mkDatadogSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatadogSourcePropertiesProperty
  = DatadogSourcePropertiesProperty {object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatadogSourcePropertiesProperty ::
  Value Prelude.Text -> DatadogSourcePropertiesProperty
mkDatadogSourcePropertiesProperty object
  = DatadogSourcePropertiesProperty {object = object}
instance ToResourceProperties DatadogSourcePropertiesProperty where
  toResourceProperties DatadogSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.DatadogSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON DatadogSourcePropertiesProperty where
  toJSON DatadogSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" DatadogSourcePropertiesProperty where
  type PropertyType "Object" DatadogSourcePropertiesProperty = Value Prelude.Text
  set newValue DatadogSourcePropertiesProperty {}
    = DatadogSourcePropertiesProperty {object = newValue, ..}