module Stratosphere.MediaLive.Channel.AnywhereSettingsProperty (
        AnywhereSettingsProperty(..), mkAnywhereSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnywhereSettingsProperty
  = AnywhereSettingsProperty {channelPlacementGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                              clusterId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnywhereSettingsProperty :: AnywhereSettingsProperty
mkAnywhereSettingsProperty
  = AnywhereSettingsProperty
      {channelPlacementGroupId = Prelude.Nothing,
       clusterId = Prelude.Nothing}
instance ToResourceProperties AnywhereSettingsProperty where
  toResourceProperties AnywhereSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AnywhereSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelPlacementGroupId"
                              Prelude.<$> channelPlacementGroupId,
                            (JSON..=) "ClusterId" Prelude.<$> clusterId])}
instance JSON.ToJSON AnywhereSettingsProperty where
  toJSON AnywhereSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelPlacementGroupId"
                 Prelude.<$> channelPlacementGroupId,
               (JSON..=) "ClusterId" Prelude.<$> clusterId]))
instance Property "ChannelPlacementGroupId" AnywhereSettingsProperty where
  type PropertyType "ChannelPlacementGroupId" AnywhereSettingsProperty = Value Prelude.Text
  set newValue AnywhereSettingsProperty {..}
    = AnywhereSettingsProperty
        {channelPlacementGroupId = Prelude.pure newValue, ..}
instance Property "ClusterId" AnywhereSettingsProperty where
  type PropertyType "ClusterId" AnywhereSettingsProperty = Value Prelude.Text
  set newValue AnywhereSettingsProperty {..}
    = AnywhereSettingsProperty {clusterId = Prelude.pure newValue, ..}