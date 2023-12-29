module Stratosphere.MediaLive.Channel.TeletextDestinationSettingsProperty (
        TeletextDestinationSettingsProperty(..),
        mkTeletextDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TeletextDestinationSettingsProperty
  = TeletextDestinationSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTeletextDestinationSettingsProperty ::
  TeletextDestinationSettingsProperty
mkTeletextDestinationSettingsProperty
  = TeletextDestinationSettingsProperty {}
instance ToResourceProperties TeletextDestinationSettingsProperty where
  toResourceProperties TeletextDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TeletextDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON TeletextDestinationSettingsProperty where
  toJSON TeletextDestinationSettingsProperty {} = JSON.object []