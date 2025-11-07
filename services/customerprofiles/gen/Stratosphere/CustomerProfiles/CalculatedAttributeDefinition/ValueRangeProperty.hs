module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ValueRangeProperty (
        ValueRangeProperty(..), mkValueRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValueRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-valuerange.html>
    ValueRangeProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-valuerange.html#cfn-customerprofiles-calculatedattributedefinition-valuerange-end>
                        end :: (Value Prelude.Integer),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-valuerange.html#cfn-customerprofiles-calculatedattributedefinition-valuerange-start>
                        start :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValueRangeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ValueRangeProperty
mkValueRangeProperty end start
  = ValueRangeProperty
      {haddock_workaround_ = (), end = end, start = start}
instance ToResourceProperties ValueRangeProperty where
  toResourceProperties ValueRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.ValueRange",
         supportsTags = Prelude.False,
         properties = ["End" JSON..= end, "Start" JSON..= start]}
instance JSON.ToJSON ValueRangeProperty where
  toJSON ValueRangeProperty {..}
    = JSON.object ["End" JSON..= end, "Start" JSON..= start]
instance Property "End" ValueRangeProperty where
  type PropertyType "End" ValueRangeProperty = Value Prelude.Integer
  set newValue ValueRangeProperty {..}
    = ValueRangeProperty {end = newValue, ..}
instance Property "Start" ValueRangeProperty where
  type PropertyType "Start" ValueRangeProperty = Value Prelude.Integer
  set newValue ValueRangeProperty {..}
    = ValueRangeProperty {start = newValue, ..}