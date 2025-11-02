module Stratosphere.MediaLive.Channel.PassThroughSettingsProperty (
        PassThroughSettingsProperty(..), mkPassThroughSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PassThroughSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-passthroughsettings.html>
    PassThroughSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPassThroughSettingsProperty :: PassThroughSettingsProperty
mkPassThroughSettingsProperty
  = PassThroughSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties PassThroughSettingsProperty where
  toResourceProperties PassThroughSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.PassThroughSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON PassThroughSettingsProperty where
  toJSON PassThroughSettingsProperty {} = JSON.object []