module Stratosphere.MediaLive.Channel.RawSettingsProperty (
        RawSettingsProperty(..), mkRawSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RawSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rawsettings.html>
    RawSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRawSettingsProperty :: RawSettingsProperty
mkRawSettingsProperty
  = RawSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties RawSettingsProperty where
  toResourceProperties RawSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RawSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON RawSettingsProperty where
  toJSON RawSettingsProperty {} = JSON.object []