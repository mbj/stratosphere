module Stratosphere.KinesisFirehose.DeliveryStream.OpenXJsonSerDeProperty (
        OpenXJsonSerDeProperty(..), mkOpenXJsonSerDeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenXJsonSerDeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html>
    OpenXJsonSerDeProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-caseinsensitive>
                            caseInsensitive :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-columntojsonkeymappings>
                            columnToJsonKeyMappings :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-convertdotsinjsonkeystounderscores>
                            convertDotsInJsonKeysToUnderscores :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenXJsonSerDeProperty :: OpenXJsonSerDeProperty
mkOpenXJsonSerDeProperty
  = OpenXJsonSerDeProperty
      {haddock_workaround_ = (), caseInsensitive = Prelude.Nothing,
       columnToJsonKeyMappings = Prelude.Nothing,
       convertDotsInJsonKeysToUnderscores = Prelude.Nothing}
instance ToResourceProperties OpenXJsonSerDeProperty where
  toResourceProperties OpenXJsonSerDeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.OpenXJsonSerDe",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaseInsensitive" Prelude.<$> caseInsensitive,
                            (JSON..=) "ColumnToJsonKeyMappings"
                              Prelude.<$> columnToJsonKeyMappings,
                            (JSON..=) "ConvertDotsInJsonKeysToUnderscores"
                              Prelude.<$> convertDotsInJsonKeysToUnderscores])}
instance JSON.ToJSON OpenXJsonSerDeProperty where
  toJSON OpenXJsonSerDeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaseInsensitive" Prelude.<$> caseInsensitive,
               (JSON..=) "ColumnToJsonKeyMappings"
                 Prelude.<$> columnToJsonKeyMappings,
               (JSON..=) "ConvertDotsInJsonKeysToUnderscores"
                 Prelude.<$> convertDotsInJsonKeysToUnderscores]))
instance Property "CaseInsensitive" OpenXJsonSerDeProperty where
  type PropertyType "CaseInsensitive" OpenXJsonSerDeProperty = Value Prelude.Bool
  set newValue OpenXJsonSerDeProperty {..}
    = OpenXJsonSerDeProperty
        {caseInsensitive = Prelude.pure newValue, ..}
instance Property "ColumnToJsonKeyMappings" OpenXJsonSerDeProperty where
  type PropertyType "ColumnToJsonKeyMappings" OpenXJsonSerDeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue OpenXJsonSerDeProperty {..}
    = OpenXJsonSerDeProperty
        {columnToJsonKeyMappings = Prelude.pure newValue, ..}
instance Property "ConvertDotsInJsonKeysToUnderscores" OpenXJsonSerDeProperty where
  type PropertyType "ConvertDotsInJsonKeysToUnderscores" OpenXJsonSerDeProperty = Value Prelude.Bool
  set newValue OpenXJsonSerDeProperty {..}
    = OpenXJsonSerDeProperty
        {convertDotsInJsonKeysToUnderscores = Prelude.pure newValue, ..}