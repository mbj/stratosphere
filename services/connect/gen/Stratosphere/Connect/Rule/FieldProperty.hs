module Stratosphere.Connect.Rule.FieldProperty (
        module Exports, FieldProperty(..), mkFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.FieldValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-field.html>
    FieldProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-field.html#cfn-connect-rule-field-id>
                   id :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-field.html#cfn-connect-rule-field-value>
                   value :: FieldValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldProperty ::
  Value Prelude.Text -> FieldValueProperty -> FieldProperty
mkFieldProperty id value
  = FieldProperty {haddock_workaround_ = (), id = id, value = value}
instance ToResourceProperties FieldProperty where
  toResourceProperties FieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.Field",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "Value" JSON..= value]}
instance JSON.ToJSON FieldProperty where
  toJSON FieldProperty {..}
    = JSON.object ["Id" JSON..= id, "Value" JSON..= value]
instance Property "Id" FieldProperty where
  type PropertyType "Id" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..} = FieldProperty {id = newValue, ..}
instance Property "Value" FieldProperty where
  type PropertyType "Value" FieldProperty = FieldValueProperty
  set newValue FieldProperty {..}
    = FieldProperty {value = newValue, ..}