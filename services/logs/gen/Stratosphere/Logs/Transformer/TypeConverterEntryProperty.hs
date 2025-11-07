module Stratosphere.Logs.Transformer.TypeConverterEntryProperty (
        TypeConverterEntryProperty(..), mkTypeConverterEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TypeConverterEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-typeconverterentry.html>
    TypeConverterEntryProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-typeconverterentry.html#cfn-logs-transformer-typeconverterentry-key>
                                key :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-typeconverterentry.html#cfn-logs-transformer-typeconverterentry-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTypeConverterEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TypeConverterEntryProperty
mkTypeConverterEntryProperty key type'
  = TypeConverterEntryProperty
      {haddock_workaround_ = (), key = key, type' = type'}
instance ToResourceProperties TypeConverterEntryProperty where
  toResourceProperties TypeConverterEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.TypeConverterEntry",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Type" JSON..= type']}
instance JSON.ToJSON TypeConverterEntryProperty where
  toJSON TypeConverterEntryProperty {..}
    = JSON.object ["Key" JSON..= key, "Type" JSON..= type']
instance Property "Key" TypeConverterEntryProperty where
  type PropertyType "Key" TypeConverterEntryProperty = Value Prelude.Text
  set newValue TypeConverterEntryProperty {..}
    = TypeConverterEntryProperty {key = newValue, ..}
instance Property "Type" TypeConverterEntryProperty where
  type PropertyType "Type" TypeConverterEntryProperty = Value Prelude.Text
  set newValue TypeConverterEntryProperty {..}
    = TypeConverterEntryProperty {type' = newValue, ..}