module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.RangeProperty (
        module Exports, RangeProperty(..), mkRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ValueRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-range.html>
    RangeProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-range.html#cfn-customerprofiles-calculatedattributedefinition-range-timestampformat>
                   timestampFormat :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-range.html#cfn-customerprofiles-calculatedattributedefinition-range-timestampsource>
                   timestampSource :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-range.html#cfn-customerprofiles-calculatedattributedefinition-range-unit>
                   unit :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-range.html#cfn-customerprofiles-calculatedattributedefinition-range-value>
                   value :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-range.html#cfn-customerprofiles-calculatedattributedefinition-range-valuerange>
                   valueRange :: (Prelude.Maybe ValueRangeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangeProperty :: Value Prelude.Text -> RangeProperty
mkRangeProperty unit
  = RangeProperty
      {haddock_workaround_ = (), unit = unit,
       timestampFormat = Prelude.Nothing,
       timestampSource = Prelude.Nothing, value = Prelude.Nothing,
       valueRange = Prelude.Nothing}
instance ToResourceProperties RangeProperty where
  toResourceProperties RangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.Range",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Unit" JSON..= unit]
                           (Prelude.catMaybes
                              [(JSON..=) "TimestampFormat" Prelude.<$> timestampFormat,
                               (JSON..=) "TimestampSource" Prelude.<$> timestampSource,
                               (JSON..=) "Value" Prelude.<$> value,
                               (JSON..=) "ValueRange" Prelude.<$> valueRange]))}
instance JSON.ToJSON RangeProperty where
  toJSON RangeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Unit" JSON..= unit]
              (Prelude.catMaybes
                 [(JSON..=) "TimestampFormat" Prelude.<$> timestampFormat,
                  (JSON..=) "TimestampSource" Prelude.<$> timestampSource,
                  (JSON..=) "Value" Prelude.<$> value,
                  (JSON..=) "ValueRange" Prelude.<$> valueRange])))
instance Property "TimestampFormat" RangeProperty where
  type PropertyType "TimestampFormat" RangeProperty = Value Prelude.Text
  set newValue RangeProperty {..}
    = RangeProperty {timestampFormat = Prelude.pure newValue, ..}
instance Property "TimestampSource" RangeProperty where
  type PropertyType "TimestampSource" RangeProperty = Value Prelude.Text
  set newValue RangeProperty {..}
    = RangeProperty {timestampSource = Prelude.pure newValue, ..}
instance Property "Unit" RangeProperty where
  type PropertyType "Unit" RangeProperty = Value Prelude.Text
  set newValue RangeProperty {..}
    = RangeProperty {unit = newValue, ..}
instance Property "Value" RangeProperty where
  type PropertyType "Value" RangeProperty = Value Prelude.Integer
  set newValue RangeProperty {..}
    = RangeProperty {value = Prelude.pure newValue, ..}
instance Property "ValueRange" RangeProperty where
  type PropertyType "ValueRange" RangeProperty = ValueRangeProperty
  set newValue RangeProperty {..}
    = RangeProperty {valueRange = Prelude.pure newValue, ..}