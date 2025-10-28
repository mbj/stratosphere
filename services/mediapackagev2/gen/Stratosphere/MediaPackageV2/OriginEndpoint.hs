module Stratosphere.MediaPackageV2.OriginEndpoint (
        module Exports, OriginEndpoint(..), mkOriginEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.DashManifestConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.ForceEndpointErrorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.HlsManifestConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.LowLatencyHlsManifestConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.SegmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OriginEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html>
    OriginEndpoint {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-channelgroupname>
                    channelGroupName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-channelname>
                    channelName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-containertype>
                    containerType :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-dashmanifests>
                    dashManifests :: (Prelude.Maybe [DashManifestConfigurationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-forceendpointerrorconfiguration>
                    forceEndpointErrorConfiguration :: (Prelude.Maybe ForceEndpointErrorConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-hlsmanifests>
                    hlsManifests :: (Prelude.Maybe [HlsManifestConfigurationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifests>
                    lowLatencyHlsManifests :: (Prelude.Maybe [LowLatencyHlsManifestConfigurationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-originendpointname>
                    originEndpointName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-segment>
                    segment :: (Prelude.Maybe SegmentProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-startoverwindowseconds>
                    startoverWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpoint.html#cfn-mediapackagev2-originendpoint-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginEndpoint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> OriginEndpoint
mkOriginEndpoint
  channelGroupName
  channelName
  containerType
  originEndpointName
  = OriginEndpoint
      {haddock_workaround_ = (), channelGroupName = channelGroupName,
       channelName = channelName, containerType = containerType,
       originEndpointName = originEndpointName,
       dashManifests = Prelude.Nothing, description = Prelude.Nothing,
       forceEndpointErrorConfiguration = Prelude.Nothing,
       hlsManifests = Prelude.Nothing,
       lowLatencyHlsManifests = Prelude.Nothing,
       segment = Prelude.Nothing,
       startoverWindowSeconds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties OriginEndpoint where
  toResourceProperties OriginEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelGroupName" JSON..= channelGroupName,
                            "ChannelName" JSON..= channelName,
                            "ContainerType" JSON..= containerType,
                            "OriginEndpointName" JSON..= originEndpointName]
                           (Prelude.catMaybes
                              [(JSON..=) "DashManifests" Prelude.<$> dashManifests,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ForceEndpointErrorConfiguration"
                                 Prelude.<$> forceEndpointErrorConfiguration,
                               (JSON..=) "HlsManifests" Prelude.<$> hlsManifests,
                               (JSON..=) "LowLatencyHlsManifests"
                                 Prelude.<$> lowLatencyHlsManifests,
                               (JSON..=) "Segment" Prelude.<$> segment,
                               (JSON..=) "StartoverWindowSeconds"
                                 Prelude.<$> startoverWindowSeconds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON OriginEndpoint where
  toJSON OriginEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelGroupName" JSON..= channelGroupName,
               "ChannelName" JSON..= channelName,
               "ContainerType" JSON..= containerType,
               "OriginEndpointName" JSON..= originEndpointName]
              (Prelude.catMaybes
                 [(JSON..=) "DashManifests" Prelude.<$> dashManifests,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ForceEndpointErrorConfiguration"
                    Prelude.<$> forceEndpointErrorConfiguration,
                  (JSON..=) "HlsManifests" Prelude.<$> hlsManifests,
                  (JSON..=) "LowLatencyHlsManifests"
                    Prelude.<$> lowLatencyHlsManifests,
                  (JSON..=) "Segment" Prelude.<$> segment,
                  (JSON..=) "StartoverWindowSeconds"
                    Prelude.<$> startoverWindowSeconds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChannelGroupName" OriginEndpoint where
  type PropertyType "ChannelGroupName" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {channelGroupName = newValue, ..}
instance Property "ChannelName" OriginEndpoint where
  type PropertyType "ChannelName" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {channelName = newValue, ..}
instance Property "ContainerType" OriginEndpoint where
  type PropertyType "ContainerType" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {containerType = newValue, ..}
instance Property "DashManifests" OriginEndpoint where
  type PropertyType "DashManifests" OriginEndpoint = [DashManifestConfigurationProperty]
  set newValue OriginEndpoint {..}
    = OriginEndpoint {dashManifests = Prelude.pure newValue, ..}
instance Property "Description" OriginEndpoint where
  type PropertyType "Description" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {description = Prelude.pure newValue, ..}
instance Property "ForceEndpointErrorConfiguration" OriginEndpoint where
  type PropertyType "ForceEndpointErrorConfiguration" OriginEndpoint = ForceEndpointErrorConfigurationProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint
        {forceEndpointErrorConfiguration = Prelude.pure newValue, ..}
instance Property "HlsManifests" OriginEndpoint where
  type PropertyType "HlsManifests" OriginEndpoint = [HlsManifestConfigurationProperty]
  set newValue OriginEndpoint {..}
    = OriginEndpoint {hlsManifests = Prelude.pure newValue, ..}
instance Property "LowLatencyHlsManifests" OriginEndpoint where
  type PropertyType "LowLatencyHlsManifests" OriginEndpoint = [LowLatencyHlsManifestConfigurationProperty]
  set newValue OriginEndpoint {..}
    = OriginEndpoint
        {lowLatencyHlsManifests = Prelude.pure newValue, ..}
instance Property "OriginEndpointName" OriginEndpoint where
  type PropertyType "OriginEndpointName" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {originEndpointName = newValue, ..}
instance Property "Segment" OriginEndpoint where
  type PropertyType "Segment" OriginEndpoint = SegmentProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint {segment = Prelude.pure newValue, ..}
instance Property "StartoverWindowSeconds" OriginEndpoint where
  type PropertyType "StartoverWindowSeconds" OriginEndpoint = Value Prelude.Integer
  set newValue OriginEndpoint {..}
    = OriginEndpoint
        {startoverWindowSeconds = Prelude.pure newValue, ..}
instance Property "Tags" OriginEndpoint where
  type PropertyType "Tags" OriginEndpoint = [Tag]
  set newValue OriginEndpoint {..}
    = OriginEndpoint {tags = Prelude.pure newValue, ..}