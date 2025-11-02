module Stratosphere.AppFlow.Flow.PardotSourcePropertiesProperty (
        PardotSourcePropertiesProperty(..),
        mkPardotSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PardotSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-pardotsourceproperties.html>
    PardotSourcePropertiesProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-pardotsourceproperties.html#cfn-appflow-flow-pardotsourceproperties-object>
                                    object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPardotSourcePropertiesProperty ::
  Value Prelude.Text -> PardotSourcePropertiesProperty
mkPardotSourcePropertiesProperty object
  = PardotSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties PardotSourcePropertiesProperty where
  toResourceProperties PardotSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.PardotSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON PardotSourcePropertiesProperty where
  toJSON PardotSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" PardotSourcePropertiesProperty where
  type PropertyType "Object" PardotSourcePropertiesProperty = Value Prelude.Text
  set newValue PardotSourcePropertiesProperty {..}
    = PardotSourcePropertiesProperty {object = newValue, ..}