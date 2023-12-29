module Stratosphere.MediaLive.Channel.Scte27DestinationSettingsProperty (
        Scte27DestinationSettingsProperty(..),
        mkScte27DestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Scte27DestinationSettingsProperty
  = Scte27DestinationSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScte27DestinationSettingsProperty ::
  Scte27DestinationSettingsProperty
mkScte27DestinationSettingsProperty
  = Scte27DestinationSettingsProperty {}
instance ToResourceProperties Scte27DestinationSettingsProperty where
  toResourceProperties Scte27DestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte27DestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON Scte27DestinationSettingsProperty where
  toJSON Scte27DestinationSettingsProperty {} = JSON.object []