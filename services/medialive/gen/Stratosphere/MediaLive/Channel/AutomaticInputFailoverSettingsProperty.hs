module Stratosphere.MediaLive.Channel.AutomaticInputFailoverSettingsProperty (
        module Exports, AutomaticInputFailoverSettingsProperty(..),
        mkAutomaticInputFailoverSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FailoverConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomaticInputFailoverSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html>
    AutomaticInputFailoverSettingsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html#cfn-medialive-channel-automaticinputfailoversettings-errorcleartimemsec>
                                            errorClearTimeMsec :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html#cfn-medialive-channel-automaticinputfailoversettings-failoverconditions>
                                            failoverConditions :: (Prelude.Maybe [FailoverConditionProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html#cfn-medialive-channel-automaticinputfailoversettings-inputpreference>
                                            inputPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-automaticinputfailoversettings.html#cfn-medialive-channel-automaticinputfailoversettings-secondaryinputid>
                                            secondaryInputId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomaticInputFailoverSettingsProperty ::
  AutomaticInputFailoverSettingsProperty
mkAutomaticInputFailoverSettingsProperty
  = AutomaticInputFailoverSettingsProperty
      {haddock_workaround_ = (), errorClearTimeMsec = Prelude.Nothing,
       failoverConditions = Prelude.Nothing,
       inputPreference = Prelude.Nothing,
       secondaryInputId = Prelude.Nothing}
instance ToResourceProperties AutomaticInputFailoverSettingsProperty where
  toResourceProperties AutomaticInputFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AutomaticInputFailoverSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ErrorClearTimeMsec" Prelude.<$> errorClearTimeMsec,
                            (JSON..=) "FailoverConditions" Prelude.<$> failoverConditions,
                            (JSON..=) "InputPreference" Prelude.<$> inputPreference,
                            (JSON..=) "SecondaryInputId" Prelude.<$> secondaryInputId])}
instance JSON.ToJSON AutomaticInputFailoverSettingsProperty where
  toJSON AutomaticInputFailoverSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ErrorClearTimeMsec" Prelude.<$> errorClearTimeMsec,
               (JSON..=) "FailoverConditions" Prelude.<$> failoverConditions,
               (JSON..=) "InputPreference" Prelude.<$> inputPreference,
               (JSON..=) "SecondaryInputId" Prelude.<$> secondaryInputId]))
instance Property "ErrorClearTimeMsec" AutomaticInputFailoverSettingsProperty where
  type PropertyType "ErrorClearTimeMsec" AutomaticInputFailoverSettingsProperty = Value Prelude.Integer
  set newValue AutomaticInputFailoverSettingsProperty {..}
    = AutomaticInputFailoverSettingsProperty
        {errorClearTimeMsec = Prelude.pure newValue, ..}
instance Property "FailoverConditions" AutomaticInputFailoverSettingsProperty where
  type PropertyType "FailoverConditions" AutomaticInputFailoverSettingsProperty = [FailoverConditionProperty]
  set newValue AutomaticInputFailoverSettingsProperty {..}
    = AutomaticInputFailoverSettingsProperty
        {failoverConditions = Prelude.pure newValue, ..}
instance Property "InputPreference" AutomaticInputFailoverSettingsProperty where
  type PropertyType "InputPreference" AutomaticInputFailoverSettingsProperty = Value Prelude.Text
  set newValue AutomaticInputFailoverSettingsProperty {..}
    = AutomaticInputFailoverSettingsProperty
        {inputPreference = Prelude.pure newValue, ..}
instance Property "SecondaryInputId" AutomaticInputFailoverSettingsProperty where
  type PropertyType "SecondaryInputId" AutomaticInputFailoverSettingsProperty = Value Prelude.Text
  set newValue AutomaticInputFailoverSettingsProperty {..}
    = AutomaticInputFailoverSettingsProperty
        {secondaryInputId = Prelude.pure newValue, ..}