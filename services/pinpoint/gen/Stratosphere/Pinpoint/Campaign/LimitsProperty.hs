module Stratosphere.Pinpoint.Campaign.LimitsProperty (
        LimitsProperty(..), mkLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html>
    LimitsProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-daily>
                    daily :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-maximumduration>
                    maximumDuration :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-messagespersecond>
                    messagesPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-session>
                    session :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-total>
                    total :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLimitsProperty :: LimitsProperty
mkLimitsProperty
  = LimitsProperty
      {haddock_workaround_ = (), daily = Prelude.Nothing,
       maximumDuration = Prelude.Nothing,
       messagesPerSecond = Prelude.Nothing, session = Prelude.Nothing,
       total = Prelude.Nothing}
instance ToResourceProperties LimitsProperty where
  toResourceProperties LimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.Limits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Daily" Prelude.<$> daily,
                            (JSON..=) "MaximumDuration" Prelude.<$> maximumDuration,
                            (JSON..=) "MessagesPerSecond" Prelude.<$> messagesPerSecond,
                            (JSON..=) "Session" Prelude.<$> session,
                            (JSON..=) "Total" Prelude.<$> total])}
instance JSON.ToJSON LimitsProperty where
  toJSON LimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Daily" Prelude.<$> daily,
               (JSON..=) "MaximumDuration" Prelude.<$> maximumDuration,
               (JSON..=) "MessagesPerSecond" Prelude.<$> messagesPerSecond,
               (JSON..=) "Session" Prelude.<$> session,
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
instance Property "Session" LimitsProperty where
  type PropertyType "Session" LimitsProperty = Value Prelude.Integer
  set newValue LimitsProperty {..}
    = LimitsProperty {session = Prelude.pure newValue, ..}
instance Property "Total" LimitsProperty where
  type PropertyType "Total" LimitsProperty = Value Prelude.Integer
  set newValue LimitsProperty {..}
    = LimitsProperty {total = Prelude.pure newValue, ..}