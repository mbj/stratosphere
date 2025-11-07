module Stratosphere.Logs.Transformer.DateTimeConverterProperty (
        DateTimeConverterProperty(..), mkDateTimeConverterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeConverterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html>
    DateTimeConverterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-locale>
                               locale :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-matchpatterns>
                               matchPatterns :: (ValueList Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-source>
                               source :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-sourcetimezone>
                               sourceTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-target>
                               target :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-targetformat>
                               targetFormat :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-datetimeconverter.html#cfn-logs-transformer-datetimeconverter-targettimezone>
                               targetTimezone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeConverterProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DateTimeConverterProperty
mkDateTimeConverterProperty matchPatterns source target
  = DateTimeConverterProperty
      {haddock_workaround_ = (), matchPatterns = matchPatterns,
       source = source, target = target, locale = Prelude.Nothing,
       sourceTimezone = Prelude.Nothing, targetFormat = Prelude.Nothing,
       targetTimezone = Prelude.Nothing}
instance ToResourceProperties DateTimeConverterProperty where
  toResourceProperties DateTimeConverterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.DateTimeConverter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchPatterns" JSON..= matchPatterns, "Source" JSON..= source,
                            "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "Locale" Prelude.<$> locale,
                               (JSON..=) "SourceTimezone" Prelude.<$> sourceTimezone,
                               (JSON..=) "TargetFormat" Prelude.<$> targetFormat,
                               (JSON..=) "TargetTimezone" Prelude.<$> targetTimezone]))}
instance JSON.ToJSON DateTimeConverterProperty where
  toJSON DateTimeConverterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchPatterns" JSON..= matchPatterns, "Source" JSON..= source,
               "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "Locale" Prelude.<$> locale,
                  (JSON..=) "SourceTimezone" Prelude.<$> sourceTimezone,
                  (JSON..=) "TargetFormat" Prelude.<$> targetFormat,
                  (JSON..=) "TargetTimezone" Prelude.<$> targetTimezone])))
instance Property "Locale" DateTimeConverterProperty where
  type PropertyType "Locale" DateTimeConverterProperty = Value Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty {locale = Prelude.pure newValue, ..}
instance Property "MatchPatterns" DateTimeConverterProperty where
  type PropertyType "MatchPatterns" DateTimeConverterProperty = ValueList Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty {matchPatterns = newValue, ..}
instance Property "Source" DateTimeConverterProperty where
  type PropertyType "Source" DateTimeConverterProperty = Value Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty {source = newValue, ..}
instance Property "SourceTimezone" DateTimeConverterProperty where
  type PropertyType "SourceTimezone" DateTimeConverterProperty = Value Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty
        {sourceTimezone = Prelude.pure newValue, ..}
instance Property "Target" DateTimeConverterProperty where
  type PropertyType "Target" DateTimeConverterProperty = Value Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty {target = newValue, ..}
instance Property "TargetFormat" DateTimeConverterProperty where
  type PropertyType "TargetFormat" DateTimeConverterProperty = Value Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty
        {targetFormat = Prelude.pure newValue, ..}
instance Property "TargetTimezone" DateTimeConverterProperty where
  type PropertyType "TargetTimezone" DateTimeConverterProperty = Value Prelude.Text
  set newValue DateTimeConverterProperty {..}
    = DateTimeConverterProperty
        {targetTimezone = Prelude.pure newValue, ..}