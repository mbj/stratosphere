module Stratosphere.AppFlow.Flow.SlackSourcePropertiesProperty (
        SlackSourcePropertiesProperty(..), mkSlackSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackSourcePropertiesProperty
  = SlackSourcePropertiesProperty {object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlackSourcePropertiesProperty ::
  Value Prelude.Text -> SlackSourcePropertiesProperty
mkSlackSourcePropertiesProperty object
  = SlackSourcePropertiesProperty {object = object}
instance ToResourceProperties SlackSourcePropertiesProperty where
  toResourceProperties SlackSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SlackSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON SlackSourcePropertiesProperty where
  toJSON SlackSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" SlackSourcePropertiesProperty where
  type PropertyType "Object" SlackSourcePropertiesProperty = Value Prelude.Text
  set newValue SlackSourcePropertiesProperty {}
    = SlackSourcePropertiesProperty {object = newValue, ..}