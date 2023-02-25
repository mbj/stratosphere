module Stratosphere.MediaLive.Channel.RtmpCaptionInfoDestinationSettingsProperty (
        RtmpCaptionInfoDestinationSettingsProperty(..),
        mkRtmpCaptionInfoDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data RtmpCaptionInfoDestinationSettingsProperty
  = RtmpCaptionInfoDestinationSettingsProperty {}
mkRtmpCaptionInfoDestinationSettingsProperty ::
  RtmpCaptionInfoDestinationSettingsProperty
mkRtmpCaptionInfoDestinationSettingsProperty
  = RtmpCaptionInfoDestinationSettingsProperty {}
instance ToResourceProperties RtmpCaptionInfoDestinationSettingsProperty where
  toResourceProperties RtmpCaptionInfoDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RtmpCaptionInfoDestinationSettings",
         properties = []}
instance JSON.ToJSON RtmpCaptionInfoDestinationSettingsProperty where
  toJSON RtmpCaptionInfoDestinationSettingsProperty {}
    = JSON.object []