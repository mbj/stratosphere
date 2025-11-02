module Stratosphere.AppFlow.Flow.AmplitudeSourcePropertiesProperty (
        AmplitudeSourcePropertiesProperty(..),
        mkAmplitudeSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmplitudeSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-amplitudesourceproperties.html>
    AmplitudeSourcePropertiesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-amplitudesourceproperties.html#cfn-appflow-flow-amplitudesourceproperties-object>
                                       object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmplitudeSourcePropertiesProperty ::
  Value Prelude.Text -> AmplitudeSourcePropertiesProperty
mkAmplitudeSourcePropertiesProperty object
  = AmplitudeSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties AmplitudeSourcePropertiesProperty where
  toResourceProperties AmplitudeSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.AmplitudeSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON AmplitudeSourcePropertiesProperty where
  toJSON AmplitudeSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" AmplitudeSourcePropertiesProperty where
  type PropertyType "Object" AmplitudeSourcePropertiesProperty = Value Prelude.Text
  set newValue AmplitudeSourcePropertiesProperty {..}
    = AmplitudeSourcePropertiesProperty {object = newValue, ..}