module Stratosphere.CustomerProfiles.EventTrigger.EventTriggerLimitsProperty (
        module Exports, EventTriggerLimitsProperty(..),
        mkEventTriggerLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.EventTrigger.PeriodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventTriggerLimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggerlimits.html>
    EventTriggerLimitsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggerlimits.html#cfn-customerprofiles-eventtrigger-eventtriggerlimits-eventexpiration>
                                eventExpiration :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggerlimits.html#cfn-customerprofiles-eventtrigger-eventtriggerlimits-periods>
                                periods :: (Prelude.Maybe [PeriodProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventTriggerLimitsProperty :: EventTriggerLimitsProperty
mkEventTriggerLimitsProperty
  = EventTriggerLimitsProperty
      {haddock_workaround_ = (), eventExpiration = Prelude.Nothing,
       periods = Prelude.Nothing}
instance ToResourceProperties EventTriggerLimitsProperty where
  toResourceProperties EventTriggerLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventTrigger.EventTriggerLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EventExpiration" Prelude.<$> eventExpiration,
                            (JSON..=) "Periods" Prelude.<$> periods])}
instance JSON.ToJSON EventTriggerLimitsProperty where
  toJSON EventTriggerLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EventExpiration" Prelude.<$> eventExpiration,
               (JSON..=) "Periods" Prelude.<$> periods]))
instance Property "EventExpiration" EventTriggerLimitsProperty where
  type PropertyType "EventExpiration" EventTriggerLimitsProperty = Value Prelude.Integer
  set newValue EventTriggerLimitsProperty {..}
    = EventTriggerLimitsProperty
        {eventExpiration = Prelude.pure newValue, ..}
instance Property "Periods" EventTriggerLimitsProperty where
  type PropertyType "Periods" EventTriggerLimitsProperty = [PeriodProperty]
  set newValue EventTriggerLimitsProperty {..}
    = EventTriggerLimitsProperty {periods = Prelude.pure newValue, ..}