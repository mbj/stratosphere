module Stratosphere.IoTEvents.AlarmModel.InitializationConfigurationProperty (
        InitializationConfigurationProperty(..),
        mkInitializationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InitializationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-initializationconfiguration.html>
    InitializationConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-initializationconfiguration.html#cfn-iotevents-alarmmodel-initializationconfiguration-disabledoninitialization>
                                         disabledOnInitialization :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInitializationConfigurationProperty ::
  Value Prelude.Bool -> InitializationConfigurationProperty
mkInitializationConfigurationProperty disabledOnInitialization
  = InitializationConfigurationProperty
      {haddock_workaround_ = (),
       disabledOnInitialization = disabledOnInitialization}
instance ToResourceProperties InitializationConfigurationProperty where
  toResourceProperties InitializationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.InitializationConfiguration",
         supportsTags = Prelude.False,
         properties = ["DisabledOnInitialization"
                         JSON..= disabledOnInitialization]}
instance JSON.ToJSON InitializationConfigurationProperty where
  toJSON InitializationConfigurationProperty {..}
    = JSON.object
        ["DisabledOnInitialization" JSON..= disabledOnInitialization]
instance Property "DisabledOnInitialization" InitializationConfigurationProperty where
  type PropertyType "DisabledOnInitialization" InitializationConfigurationProperty = Value Prelude.Bool
  set newValue InitializationConfigurationProperty {..}
    = InitializationConfigurationProperty
        {disabledOnInitialization = newValue, ..}