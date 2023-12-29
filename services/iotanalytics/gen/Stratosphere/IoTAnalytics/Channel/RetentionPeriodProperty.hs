module Stratosphere.IoTAnalytics.Channel.RetentionPeriodProperty (
        RetentionPeriodProperty(..), mkRetentionPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionPeriodProperty
  = RetentionPeriodProperty {numberOfDays :: (Prelude.Maybe (Value Prelude.Integer)),
                             unlimited :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionPeriodProperty :: RetentionPeriodProperty
mkRetentionPeriodProperty
  = RetentionPeriodProperty
      {numberOfDays = Prelude.Nothing, unlimited = Prelude.Nothing}
instance ToResourceProperties RetentionPeriodProperty where
  toResourceProperties RetentionPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Channel.RetentionPeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberOfDays" Prelude.<$> numberOfDays,
                            (JSON..=) "Unlimited" Prelude.<$> unlimited])}
instance JSON.ToJSON RetentionPeriodProperty where
  toJSON RetentionPeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberOfDays" Prelude.<$> numberOfDays,
               (JSON..=) "Unlimited" Prelude.<$> unlimited]))
instance Property "NumberOfDays" RetentionPeriodProperty where
  type PropertyType "NumberOfDays" RetentionPeriodProperty = Value Prelude.Integer
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty
        {numberOfDays = Prelude.pure newValue, ..}
instance Property "Unlimited" RetentionPeriodProperty where
  type PropertyType "Unlimited" RetentionPeriodProperty = Value Prelude.Bool
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty {unlimited = Prelude.pure newValue, ..}