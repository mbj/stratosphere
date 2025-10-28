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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datadogsourceproperties.html>
    DatadogSourcePropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datadogsourceproperties.html#cfn-appflow-flow-datadogsourceproperties-object>
                                     object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatadogSourcePropertiesProperty ::
  Value Prelude.Text -> DatadogSourcePropertiesProperty
mkDatadogSourcePropertiesProperty object
  = DatadogSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
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
  set newValue DatadogSourcePropertiesProperty {..}
    = DatadogSourcePropertiesProperty {object = newValue, ..}