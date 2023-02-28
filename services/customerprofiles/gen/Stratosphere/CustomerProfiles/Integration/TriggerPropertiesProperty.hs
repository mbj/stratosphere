module Stratosphere.CustomerProfiles.Integration.TriggerPropertiesProperty (
        module Exports, TriggerPropertiesProperty(..),
        mkTriggerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.ScheduledTriggerPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data TriggerPropertiesProperty
  = TriggerPropertiesProperty {scheduled :: (Prelude.Maybe ScheduledTriggerPropertiesProperty)}
mkTriggerPropertiesProperty :: TriggerPropertiesProperty
mkTriggerPropertiesProperty
  = TriggerPropertiesProperty {scheduled = Prelude.Nothing}
instance ToResourceProperties TriggerPropertiesProperty where
  toResourceProperties TriggerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.TriggerProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Scheduled" Prelude.<$> scheduled])}
instance JSON.ToJSON TriggerPropertiesProperty where
  toJSON TriggerPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Scheduled" Prelude.<$> scheduled]))
instance Property "Scheduled" TriggerPropertiesProperty where
  type PropertyType "Scheduled" TriggerPropertiesProperty = ScheduledTriggerPropertiesProperty
  set newValue TriggerPropertiesProperty {}
    = TriggerPropertiesProperty {scheduled = Prelude.pure newValue, ..}