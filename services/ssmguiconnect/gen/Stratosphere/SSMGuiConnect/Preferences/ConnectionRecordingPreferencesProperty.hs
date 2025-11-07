module Stratosphere.SSMGuiConnect.Preferences.ConnectionRecordingPreferencesProperty (
        module Exports, ConnectionRecordingPreferencesProperty(..),
        mkConnectionRecordingPreferencesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMGuiConnect.Preferences.RecordingDestinationsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionRecordingPreferencesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-connectionrecordingpreferences.html>
    ConnectionRecordingPreferencesProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-connectionrecordingpreferences.html#cfn-ssmguiconnect-preferences-connectionrecordingpreferences-kmskeyarn>
                                            kMSKeyArn :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-connectionrecordingpreferences.html#cfn-ssmguiconnect-preferences-connectionrecordingpreferences-recordingdestinations>
                                            recordingDestinations :: RecordingDestinationsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionRecordingPreferencesProperty ::
  Value Prelude.Text
  -> RecordingDestinationsProperty
     -> ConnectionRecordingPreferencesProperty
mkConnectionRecordingPreferencesProperty
  kMSKeyArn
  recordingDestinations
  = ConnectionRecordingPreferencesProperty
      {haddock_workaround_ = (), kMSKeyArn = kMSKeyArn,
       recordingDestinations = recordingDestinations}
instance ToResourceProperties ConnectionRecordingPreferencesProperty where
  toResourceProperties ConnectionRecordingPreferencesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMGuiConnect::Preferences.ConnectionRecordingPreferences",
         supportsTags = Prelude.False,
         properties = ["KMSKeyArn" JSON..= kMSKeyArn,
                       "RecordingDestinations" JSON..= recordingDestinations]}
instance JSON.ToJSON ConnectionRecordingPreferencesProperty where
  toJSON ConnectionRecordingPreferencesProperty {..}
    = JSON.object
        ["KMSKeyArn" JSON..= kMSKeyArn,
         "RecordingDestinations" JSON..= recordingDestinations]
instance Property "KMSKeyArn" ConnectionRecordingPreferencesProperty where
  type PropertyType "KMSKeyArn" ConnectionRecordingPreferencesProperty = Value Prelude.Text
  set newValue ConnectionRecordingPreferencesProperty {..}
    = ConnectionRecordingPreferencesProperty {kMSKeyArn = newValue, ..}
instance Property "RecordingDestinations" ConnectionRecordingPreferencesProperty where
  type PropertyType "RecordingDestinations" ConnectionRecordingPreferencesProperty = RecordingDestinationsProperty
  set newValue ConnectionRecordingPreferencesProperty {..}
    = ConnectionRecordingPreferencesProperty
        {recordingDestinations = newValue, ..}