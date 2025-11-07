module Stratosphere.MediaPackageV2.OriginEndpointPolicy (
        module Exports, OriginEndpointPolicy(..), mkOriginEndpointPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpointPolicy.CdnAuthConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginEndpointPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpointpolicy.html>
    OriginEndpointPolicy {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpointpolicy.html#cfn-mediapackagev2-originendpointpolicy-cdnauthconfiguration>
                          cdnAuthConfiguration :: (Prelude.Maybe CdnAuthConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpointpolicy.html#cfn-mediapackagev2-originendpointpolicy-channelgroupname>
                          channelGroupName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpointpolicy.html#cfn-mediapackagev2-originendpointpolicy-channelname>
                          channelName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpointpolicy.html#cfn-mediapackagev2-originendpointpolicy-originendpointname>
                          originEndpointName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-originendpointpolicy.html#cfn-mediapackagev2-originendpointpolicy-policy>
                          policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginEndpointPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> JSON.Object -> OriginEndpointPolicy
mkOriginEndpointPolicy
  channelGroupName
  channelName
  originEndpointName
  policy
  = OriginEndpointPolicy
      {haddock_workaround_ = (), channelGroupName = channelGroupName,
       channelName = channelName, originEndpointName = originEndpointName,
       policy = policy, cdnAuthConfiguration = Prelude.Nothing}
instance ToResourceProperties OriginEndpointPolicy where
  toResourceProperties OriginEndpointPolicy {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpointPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelGroupName" JSON..= channelGroupName,
                            "ChannelName" JSON..= channelName,
                            "OriginEndpointName" JSON..= originEndpointName,
                            "Policy" JSON..= policy]
                           (Prelude.catMaybes
                              [(JSON..=) "CdnAuthConfiguration"
                                 Prelude.<$> cdnAuthConfiguration]))}
instance JSON.ToJSON OriginEndpointPolicy where
  toJSON OriginEndpointPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelGroupName" JSON..= channelGroupName,
               "ChannelName" JSON..= channelName,
               "OriginEndpointName" JSON..= originEndpointName,
               "Policy" JSON..= policy]
              (Prelude.catMaybes
                 [(JSON..=) "CdnAuthConfiguration"
                    Prelude.<$> cdnAuthConfiguration])))
instance Property "CdnAuthConfiguration" OriginEndpointPolicy where
  type PropertyType "CdnAuthConfiguration" OriginEndpointPolicy = CdnAuthConfigurationProperty
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy
        {cdnAuthConfiguration = Prelude.pure newValue, ..}
instance Property "ChannelGroupName" OriginEndpointPolicy where
  type PropertyType "ChannelGroupName" OriginEndpointPolicy = Value Prelude.Text
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {channelGroupName = newValue, ..}
instance Property "ChannelName" OriginEndpointPolicy where
  type PropertyType "ChannelName" OriginEndpointPolicy = Value Prelude.Text
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {channelName = newValue, ..}
instance Property "OriginEndpointName" OriginEndpointPolicy where
  type PropertyType "OriginEndpointName" OriginEndpointPolicy = Value Prelude.Text
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {originEndpointName = newValue, ..}
instance Property "Policy" OriginEndpointPolicy where
  type PropertyType "Policy" OriginEndpointPolicy = JSON.Object
  set newValue OriginEndpointPolicy {..}
    = OriginEndpointPolicy {policy = newValue, ..}