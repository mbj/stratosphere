module Stratosphere.Cassandra.Type.FieldProperty (
        FieldProperty(..), mkFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-type-field.html>
    FieldProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-type-field.html#cfn-cassandra-type-field-fieldname>
                   fieldName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-type-field.html#cfn-cassandra-type-field-fieldtype>
                   fieldType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FieldProperty
mkFieldProperty fieldName fieldType
  = FieldProperty
      {haddock_workaround_ = (), fieldName = fieldName,
       fieldType = fieldType}
instance ToResourceProperties FieldProperty where
  toResourceProperties FieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Type.Field",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName,
                       "FieldType" JSON..= fieldType]}
instance JSON.ToJSON FieldProperty where
  toJSON FieldProperty {..}
    = JSON.object
        ["FieldName" JSON..= fieldName, "FieldType" JSON..= fieldType]
instance Property "FieldName" FieldProperty where
  type PropertyType "FieldName" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {fieldName = newValue, ..}
instance Property "FieldType" FieldProperty where
  type PropertyType "FieldType" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {fieldType = newValue, ..}