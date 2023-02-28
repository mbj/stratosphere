module Stratosphere.IoTEvents.AlarmModel.AlarmCapabilitiesProperty (
        module Exports, AlarmCapabilitiesProperty(..),
        mkAlarmCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AcknowledgeFlowProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.InitializationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AlarmCapabilitiesProperty
  = AlarmCapabilitiesProperty {acknowledgeFlow :: (Prelude.Maybe AcknowledgeFlowProperty),
                               initializationConfiguration :: (Prelude.Maybe InitializationConfigurationProperty)}
mkAlarmCapabilitiesProperty :: AlarmCapabilitiesProperty
mkAlarmCapabilitiesProperty
  = AlarmCapabilitiesProperty
      {acknowledgeFlow = Prelude.Nothing,
       initializationConfiguration = Prelude.Nothing}
instance ToResourceProperties AlarmCapabilitiesProperty where
  toResourceProperties AlarmCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AlarmCapabilities",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcknowledgeFlow" Prelude.<$> acknowledgeFlow,
                            (JSON..=) "InitializationConfiguration"
                              Prelude.<$> initializationConfiguration])}
instance JSON.ToJSON AlarmCapabilitiesProperty where
  toJSON AlarmCapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcknowledgeFlow" Prelude.<$> acknowledgeFlow,
               (JSON..=) "InitializationConfiguration"
                 Prelude.<$> initializationConfiguration]))
instance Property "AcknowledgeFlow" AlarmCapabilitiesProperty where
  type PropertyType "AcknowledgeFlow" AlarmCapabilitiesProperty = AcknowledgeFlowProperty
  set newValue AlarmCapabilitiesProperty {..}
    = AlarmCapabilitiesProperty
        {acknowledgeFlow = Prelude.pure newValue, ..}
instance Property "InitializationConfiguration" AlarmCapabilitiesProperty where
  type PropertyType "InitializationConfiguration" AlarmCapabilitiesProperty = InitializationConfigurationProperty
  set newValue AlarmCapabilitiesProperty {..}
    = AlarmCapabilitiesProperty
        {initializationConfiguration = Prelude.pure newValue, ..}