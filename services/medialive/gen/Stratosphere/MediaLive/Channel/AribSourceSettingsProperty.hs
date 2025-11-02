module Stratosphere.MediaLive.Channel.AribSourceSettingsProperty (
        AribSourceSettingsProperty(..), mkAribSourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AribSourceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aribsourcesettings.html>
    AribSourceSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAribSourceSettingsProperty :: AribSourceSettingsProperty
mkAribSourceSettingsProperty
  = AribSourceSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties AribSourceSettingsProperty where
  toResourceProperties AribSourceSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AribSourceSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON AribSourceSettingsProperty where
  toJSON AribSourceSettingsProperty {} = JSON.object []