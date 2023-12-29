module Stratosphere.MediaLive.Channel.SmpteTtDestinationSettingsProperty (
        SmpteTtDestinationSettingsProperty(..),
        mkSmpteTtDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SmpteTtDestinationSettingsProperty
  = SmpteTtDestinationSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmpteTtDestinationSettingsProperty ::
  SmpteTtDestinationSettingsProperty
mkSmpteTtDestinationSettingsProperty
  = SmpteTtDestinationSettingsProperty {}
instance ToResourceProperties SmpteTtDestinationSettingsProperty where
  toResourceProperties SmpteTtDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.SmpteTtDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON SmpteTtDestinationSettingsProperty where
  toJSON SmpteTtDestinationSettingsProperty {} = JSON.object []