module Stratosphere.WAFv2.WebACL.FieldIdentifierProperty (
        FieldIdentifierProperty(..), mkFieldIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldIdentifierProperty
  = FieldIdentifierProperty {identifier :: (Value Prelude.Text)}
mkFieldIdentifierProperty ::
  Value Prelude.Text -> FieldIdentifierProperty
mkFieldIdentifierProperty identifier
  = FieldIdentifierProperty {identifier = identifier}
instance ToResourceProperties FieldIdentifierProperty where
  toResourceProperties FieldIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.FieldIdentifier",
         properties = ["Identifier" JSON..= identifier]}
instance JSON.ToJSON FieldIdentifierProperty where
  toJSON FieldIdentifierProperty {..}
    = JSON.object ["Identifier" JSON..= identifier]
instance Property "Identifier" FieldIdentifierProperty where
  type PropertyType "Identifier" FieldIdentifierProperty = Value Prelude.Text
  set newValue FieldIdentifierProperty {}
    = FieldIdentifierProperty {identifier = newValue, ..}