module Stratosphere.SSMGuiConnect.Preferences (
        module Exports, Preferences(..), mkPreferences
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMGuiConnect.Preferences.ConnectionRecordingPreferencesProperty as Exports
import Stratosphere.ResourceProperties
data Preferences
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmguiconnect-preferences.html>
    Preferences {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmguiconnect-preferences.html#cfn-ssmguiconnect-preferences-connectionrecordingpreferences>
                 connectionRecordingPreferences :: (Prelude.Maybe ConnectionRecordingPreferencesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreferences :: Preferences
mkPreferences
  = Preferences
      {haddock_workaround_ = (),
       connectionRecordingPreferences = Prelude.Nothing}
instance ToResourceProperties Preferences where
  toResourceProperties Preferences {..}
    = ResourceProperties
        {awsType = "AWS::SSMGuiConnect::Preferences",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionRecordingPreferences"
                              Prelude.<$> connectionRecordingPreferences])}
instance JSON.ToJSON Preferences where
  toJSON Preferences {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionRecordingPreferences"
                 Prelude.<$> connectionRecordingPreferences]))
instance Property "ConnectionRecordingPreferences" Preferences where
  type PropertyType "ConnectionRecordingPreferences" Preferences = ConnectionRecordingPreferencesProperty
  set newValue Preferences {..}
    = Preferences
        {connectionRecordingPreferences = Prelude.pure newValue, ..}