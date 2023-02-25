module Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty (
        FieldIdentifierProperty(..), mkFieldIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldIdentifierProperty
  = FieldIdentifierProperty {name :: (Value Prelude.Text)}
mkFieldIdentifierProperty ::
  Value Prelude.Text -> FieldIdentifierProperty
mkFieldIdentifierProperty name
  = FieldIdentifierProperty {name = name}
instance ToResourceProperties FieldIdentifierProperty where
  toResourceProperties FieldIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.FieldIdentifier",
         properties = ["Name" JSON..= name]}
instance JSON.ToJSON FieldIdentifierProperty where
  toJSON FieldIdentifierProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" FieldIdentifierProperty where
  type PropertyType "Name" FieldIdentifierProperty = Value Prelude.Text
  set newValue FieldIdentifierProperty {}
    = FieldIdentifierProperty {name = newValue, ..}