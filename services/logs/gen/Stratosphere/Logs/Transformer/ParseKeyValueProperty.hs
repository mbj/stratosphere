module Stratosphere.Logs.Transformer.ParseKeyValueProperty (
        ParseKeyValueProperty(..), mkParseKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParseKeyValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html>
    ParseKeyValueProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-destination>
                           destination :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-fielddelimiter>
                           fieldDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-keyprefix>
                           keyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-keyvaluedelimiter>
                           keyValueDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-nonmatchvalue>
                           nonMatchValue :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-overwriteifexists>
                           overwriteIfExists :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-parsekeyvalue.html#cfn-logs-transformer-parsekeyvalue-source>
                           source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParseKeyValueProperty :: ParseKeyValueProperty
mkParseKeyValueProperty
  = ParseKeyValueProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       fieldDelimiter = Prelude.Nothing, keyPrefix = Prelude.Nothing,
       keyValueDelimiter = Prelude.Nothing,
       nonMatchValue = Prelude.Nothing,
       overwriteIfExists = Prelude.Nothing, source = Prelude.Nothing}
instance ToResourceProperties ParseKeyValueProperty where
  toResourceProperties ParseKeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.ParseKeyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "FieldDelimiter" Prelude.<$> fieldDelimiter,
                            (JSON..=) "KeyPrefix" Prelude.<$> keyPrefix,
                            (JSON..=) "KeyValueDelimiter" Prelude.<$> keyValueDelimiter,
                            (JSON..=) "NonMatchValue" Prelude.<$> nonMatchValue,
                            (JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists,
                            (JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON ParseKeyValueProperty where
  toJSON ParseKeyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "FieldDelimiter" Prelude.<$> fieldDelimiter,
               (JSON..=) "KeyPrefix" Prelude.<$> keyPrefix,
               (JSON..=) "KeyValueDelimiter" Prelude.<$> keyValueDelimiter,
               (JSON..=) "NonMatchValue" Prelude.<$> nonMatchValue,
               (JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists,
               (JSON..=) "Source" Prelude.<$> source]))
instance Property "Destination" ParseKeyValueProperty where
  type PropertyType "Destination" ParseKeyValueProperty = Value Prelude.Text
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty {destination = Prelude.pure newValue, ..}
instance Property "FieldDelimiter" ParseKeyValueProperty where
  type PropertyType "FieldDelimiter" ParseKeyValueProperty = Value Prelude.Text
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty
        {fieldDelimiter = Prelude.pure newValue, ..}
instance Property "KeyPrefix" ParseKeyValueProperty where
  type PropertyType "KeyPrefix" ParseKeyValueProperty = Value Prelude.Text
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty {keyPrefix = Prelude.pure newValue, ..}
instance Property "KeyValueDelimiter" ParseKeyValueProperty where
  type PropertyType "KeyValueDelimiter" ParseKeyValueProperty = Value Prelude.Text
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty
        {keyValueDelimiter = Prelude.pure newValue, ..}
instance Property "NonMatchValue" ParseKeyValueProperty where
  type PropertyType "NonMatchValue" ParseKeyValueProperty = Value Prelude.Text
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty {nonMatchValue = Prelude.pure newValue, ..}
instance Property "OverwriteIfExists" ParseKeyValueProperty where
  type PropertyType "OverwriteIfExists" ParseKeyValueProperty = Value Prelude.Bool
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty
        {overwriteIfExists = Prelude.pure newValue, ..}
instance Property "Source" ParseKeyValueProperty where
  type PropertyType "Source" ParseKeyValueProperty = Value Prelude.Text
  set newValue ParseKeyValueProperty {..}
    = ParseKeyValueProperty {source = Prelude.pure newValue, ..}