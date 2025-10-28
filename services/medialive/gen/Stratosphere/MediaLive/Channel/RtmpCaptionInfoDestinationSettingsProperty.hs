module Stratosphere.MediaLive.Channel.RtmpCaptionInfoDestinationSettingsProperty (
        RtmpCaptionInfoDestinationSettingsProperty(..),
        mkRtmpCaptionInfoDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RtmpCaptionInfoDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpcaptioninfodestinationsettings.html>
    RtmpCaptionInfoDestinationSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRtmpCaptionInfoDestinationSettingsProperty ::
  RtmpCaptionInfoDestinationSettingsProperty
mkRtmpCaptionInfoDestinationSettingsProperty
  = RtmpCaptionInfoDestinationSettingsProperty
      {haddock_workaround_ = ()}
instance ToResourceProperties RtmpCaptionInfoDestinationSettingsProperty where
  toResourceProperties RtmpCaptionInfoDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RtmpCaptionInfoDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON RtmpCaptionInfoDestinationSettingsProperty where
  toJSON RtmpCaptionInfoDestinationSettingsProperty {}
    = JSON.object []