module Stratosphere.MediaPackageV2.Channel.InputSwitchConfigurationProperty (
        InputSwitchConfigurationProperty(..),
        mkInputSwitchConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSwitchConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-channel-inputswitchconfiguration.html>
    InputSwitchConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-channel-inputswitchconfiguration.html#cfn-mediapackagev2-channel-inputswitchconfiguration-mqcsinputswitching>
                                      mQCSInputSwitching :: (Prelude.Maybe (Value Prelude.Bool)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-channel-inputswitchconfiguration.html#cfn-mediapackagev2-channel-inputswitchconfiguration-preferredinput>
                                      preferredInput :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSwitchConfigurationProperty ::
  InputSwitchConfigurationProperty
mkInputSwitchConfigurationProperty
  = InputSwitchConfigurationProperty
      {haddock_workaround_ = (), mQCSInputSwitching = Prelude.Nothing,
       preferredInput = Prelude.Nothing}
instance ToResourceProperties InputSwitchConfigurationProperty where
  toResourceProperties InputSwitchConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::Channel.InputSwitchConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MQCSInputSwitching" Prelude.<$> mQCSInputSwitching,
                            (JSON..=) "PreferredInput" Prelude.<$> preferredInput])}
instance JSON.ToJSON InputSwitchConfigurationProperty where
  toJSON InputSwitchConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MQCSInputSwitching" Prelude.<$> mQCSInputSwitching,
               (JSON..=) "PreferredInput" Prelude.<$> preferredInput]))
instance Property "MQCSInputSwitching" InputSwitchConfigurationProperty where
  type PropertyType "MQCSInputSwitching" InputSwitchConfigurationProperty = Value Prelude.Bool
  set newValue InputSwitchConfigurationProperty {..}
    = InputSwitchConfigurationProperty
        {mQCSInputSwitching = Prelude.pure newValue, ..}
instance Property "PreferredInput" InputSwitchConfigurationProperty where
  type PropertyType "PreferredInput" InputSwitchConfigurationProperty = Value Prelude.Integer
  set newValue InputSwitchConfigurationProperty {..}
    = InputSwitchConfigurationProperty
        {preferredInput = Prelude.pure newValue, ..}