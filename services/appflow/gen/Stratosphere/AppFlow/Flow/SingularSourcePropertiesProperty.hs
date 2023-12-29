module Stratosphere.AppFlow.Flow.SingularSourcePropertiesProperty (
        SingularSourcePropertiesProperty(..),
        mkSingularSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingularSourcePropertiesProperty
  = SingularSourcePropertiesProperty {object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingularSourcePropertiesProperty ::
  Value Prelude.Text -> SingularSourcePropertiesProperty
mkSingularSourcePropertiesProperty object
  = SingularSourcePropertiesProperty {object = object}
instance ToResourceProperties SingularSourcePropertiesProperty where
  toResourceProperties SingularSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SingularSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON SingularSourcePropertiesProperty where
  toJSON SingularSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" SingularSourcePropertiesProperty where
  type PropertyType "Object" SingularSourcePropertiesProperty = Value Prelude.Text
  set newValue SingularSourcePropertiesProperty {}
    = SingularSourcePropertiesProperty {object = newValue, ..}