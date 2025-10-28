module Stratosphere.MediaLive.Channel.DolbyVision81SettingsProperty (
        DolbyVision81SettingsProperty(..), mkDolbyVision81SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DolbyVision81SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dolbyvision81settings.html>
    DolbyVision81SettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDolbyVision81SettingsProperty :: DolbyVision81SettingsProperty
mkDolbyVision81SettingsProperty
  = DolbyVision81SettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties DolbyVision81SettingsProperty where
  toResourceProperties DolbyVision81SettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DolbyVision81Settings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON DolbyVision81SettingsProperty where
  toJSON DolbyVision81SettingsProperty {} = JSON.object []