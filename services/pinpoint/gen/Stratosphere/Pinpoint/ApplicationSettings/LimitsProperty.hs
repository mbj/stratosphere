module Stratosphere.Pinpoint.ApplicationSettings.LimitsProperty (
        LimitsProperty(..), mkLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LimitsProperty
  = LimitsProperty {daily :: (Prelude.Maybe (Value Prelude.Integer)),
                    maximumDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                    messagesPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                    total :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLimitsProperty :: LimitsProperty
mkLimitsProperty
  = LimitsProperty
      {daily = Prelude.Nothing, maximumDuration = Prelude.Nothing,
       messagesPerSecond = Prelude.Nothing, total = Prelude.Nothing}
instance ToResourceProperties LimitsProperty where
  toResourceProperties LimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::ApplicationSettings.Limits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Daily" Prelude.<$> daily,
                            (JSON..=) "MaximumDuration" Prelude.<$> maximumDuration,
                            (JSON..=) "MessagesPerSecond" Prelude.<$> messagesPerSecond,
                            (JSON..=) "Total" Prelude.<$> total])}
instance JSON.ToJSON LimitsProperty where
  toJSON LimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Daily" Prelude.<$> daily,
               (JSON..=) "MaximumDuration" Prelude.<$> maximumDuration,
               (JSON..=) "MessagesPerSecond" Prelude.<$> messagesPerSecond,
               (JSON..=) "Total" Prelude.<$> total]))
instance Property "Daily" LimitsProperty where
  type PropertyType "Daily" LimitsProperty = Value Prelude.Integer
  set newValue LimitsProperty {..}
    = LimitsProperty {daily = Prelude.pure newValue, ..}
instance Property "MaximumDuration" LimitsProperty where
  type PropertyType "MaximumDuration" LimitsProperty = Value Prelude.Integer
  set newValue LimitsProperty {..}
    = LimitsProperty {maximumDuration = Prelude.pure newValue, ..}
instance Property "MessagesPerSecond" LimitsProperty where
  type PropertyType "MessagesPerSecond" LimitsProperty = Value Prelude.Integer
  set newValue LimitsProperty {..}
    = LimitsProperty {messagesPerSecond = Prelude.pure newValue, ..}
instance Property "Total" LimitsProperty where
  type PropertyType "Total" LimitsProperty = Value Prelude.Integer
  set newValue LimitsProperty {..}
    = LimitsProperty {total = Prelude.pure newValue, ..}