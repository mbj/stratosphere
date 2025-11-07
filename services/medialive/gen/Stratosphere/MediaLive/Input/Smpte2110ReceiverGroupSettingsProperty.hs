module Stratosphere.MediaLive.Input.Smpte2110ReceiverGroupSettingsProperty (
        module Exports, Smpte2110ReceiverGroupSettingsProperty(..),
        mkSmpte2110ReceiverGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.Smpte2110ReceiverGroupProperty as Exports
import Stratosphere.ResourceProperties
data Smpte2110ReceiverGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsettings.html>
    Smpte2110ReceiverGroupSettingsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsettings.html#cfn-medialive-input-smpte2110receivergroupsettings-smpte2110receivergroups>
                                            smpte2110ReceiverGroups :: (Prelude.Maybe [Smpte2110ReceiverGroupProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmpte2110ReceiverGroupSettingsProperty ::
  Smpte2110ReceiverGroupSettingsProperty
mkSmpte2110ReceiverGroupSettingsProperty
  = Smpte2110ReceiverGroupSettingsProperty
      {haddock_workaround_ = (),
       smpte2110ReceiverGroups = Prelude.Nothing}
instance ToResourceProperties Smpte2110ReceiverGroupSettingsProperty where
  toResourceProperties Smpte2110ReceiverGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.Smpte2110ReceiverGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Smpte2110ReceiverGroups"
                              Prelude.<$> smpte2110ReceiverGroups])}
instance JSON.ToJSON Smpte2110ReceiverGroupSettingsProperty where
  toJSON Smpte2110ReceiverGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Smpte2110ReceiverGroups"
                 Prelude.<$> smpte2110ReceiverGroups]))
instance Property "Smpte2110ReceiverGroups" Smpte2110ReceiverGroupSettingsProperty where
  type PropertyType "Smpte2110ReceiverGroups" Smpte2110ReceiverGroupSettingsProperty = [Smpte2110ReceiverGroupProperty]
  set newValue Smpte2110ReceiverGroupSettingsProperty {..}
    = Smpte2110ReceiverGroupSettingsProperty
        {smpte2110ReceiverGroups = Prelude.pure newValue, ..}