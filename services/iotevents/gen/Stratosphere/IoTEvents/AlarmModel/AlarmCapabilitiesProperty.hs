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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmcapabilities.html>
    AlarmCapabilitiesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmcapabilities.html#cfn-iotevents-alarmmodel-alarmcapabilities-acknowledgeflow>
                               acknowledgeFlow :: (Prelude.Maybe AcknowledgeFlowProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmcapabilities.html#cfn-iotevents-alarmmodel-alarmcapabilities-initializationconfiguration>
                               initializationConfiguration :: (Prelude.Maybe InitializationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmCapabilitiesProperty :: AlarmCapabilitiesProperty
mkAlarmCapabilitiesProperty
  = AlarmCapabilitiesProperty
      {haddock_workaround_ = (), acknowledgeFlow = Prelude.Nothing,
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