module Stratosphere.MediaLive.Channel.RtmpCaptionInfoDestinationSettingsProperty (
        RtmpCaptionInfoDestinationSettingsProperty(..),
        mkRtmpCaptionInfoDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RtmpCaptionInfoDestinationSettingsProperty
  = RtmpCaptionInfoDestinationSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRtmpCaptionInfoDestinationSettingsProperty ::
  RtmpCaptionInfoDestinationSettingsProperty
mkRtmpCaptionInfoDestinationSettingsProperty
  = RtmpCaptionInfoDestinationSettingsProperty {}
instance ToResourceProperties RtmpCaptionInfoDestinationSettingsProperty where
  toResourceProperties RtmpCaptionInfoDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RtmpCaptionInfoDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON RtmpCaptionInfoDestinationSettingsProperty where
  toJSON RtmpCaptionInfoDestinationSettingsProperty {}
    = JSON.object []