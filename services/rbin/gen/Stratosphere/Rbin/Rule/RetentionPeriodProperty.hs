module Stratosphere.Rbin.Rule.RetentionPeriodProperty (
        RetentionPeriodProperty(..), mkRetentionPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionPeriodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rbin-rule-retentionperiod.html>
    RetentionPeriodProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rbin-rule-retentionperiod.html#cfn-rbin-rule-retentionperiod-retentionperiodunit>
                             retentionPeriodUnit :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rbin-rule-retentionperiod.html#cfn-rbin-rule-retentionperiod-retentionperiodvalue>
                             retentionPeriodValue :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionPeriodProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> RetentionPeriodProperty
mkRetentionPeriodProperty retentionPeriodUnit retentionPeriodValue
  = RetentionPeriodProperty
      {haddock_workaround_ = (),
       retentionPeriodUnit = retentionPeriodUnit,
       retentionPeriodValue = retentionPeriodValue}
instance ToResourceProperties RetentionPeriodProperty where
  toResourceProperties RetentionPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rbin::Rule.RetentionPeriod",
         supportsTags = Prelude.False,
         properties = ["RetentionPeriodUnit" JSON..= retentionPeriodUnit,
                       "RetentionPeriodValue" JSON..= retentionPeriodValue]}
instance JSON.ToJSON RetentionPeriodProperty where
  toJSON RetentionPeriodProperty {..}
    = JSON.object
        ["RetentionPeriodUnit" JSON..= retentionPeriodUnit,
         "RetentionPeriodValue" JSON..= retentionPeriodValue]
instance Property "RetentionPeriodUnit" RetentionPeriodProperty where
  type PropertyType "RetentionPeriodUnit" RetentionPeriodProperty = Value Prelude.Text
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty {retentionPeriodUnit = newValue, ..}
instance Property "RetentionPeriodValue" RetentionPeriodProperty where
  type PropertyType "RetentionPeriodValue" RetentionPeriodProperty = Value Prelude.Integer
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty {retentionPeriodValue = newValue, ..}