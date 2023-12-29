module Stratosphere.MediaLive.Channel.AribDestinationSettingsProperty (
        AribDestinationSettingsProperty(..),
        mkAribDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AribDestinationSettingsProperty
  = AribDestinationSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAribDestinationSettingsProperty ::
  AribDestinationSettingsProperty
mkAribDestinationSettingsProperty
  = AribDestinationSettingsProperty {}
instance ToResourceProperties AribDestinationSettingsProperty where
  toResourceProperties AribDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AribDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON AribDestinationSettingsProperty where
  toJSON AribDestinationSettingsProperty {} = JSON.object []