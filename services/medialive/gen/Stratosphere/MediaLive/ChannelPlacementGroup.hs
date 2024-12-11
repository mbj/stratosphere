module Stratosphere.MediaLive.ChannelPlacementGroup (
        module Exports, ChannelPlacementGroup(..), mkChannelPlacementGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.ChannelPlacementGroup.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelPlacementGroup
  = ChannelPlacementGroup {clusterId :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           nodes :: (Prelude.Maybe (ValueList Prelude.Text)),
                           tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelPlacementGroup :: ChannelPlacementGroup
mkChannelPlacementGroup
  = ChannelPlacementGroup
      {clusterId = Prelude.Nothing, name = Prelude.Nothing,
       nodes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ChannelPlacementGroup where
  toResourceProperties ChannelPlacementGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::ChannelPlacementGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterId" Prelude.<$> clusterId,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Nodes" Prelude.<$> nodes,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ChannelPlacementGroup where
  toJSON ChannelPlacementGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterId" Prelude.<$> clusterId,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Nodes" Prelude.<$> nodes,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ClusterId" ChannelPlacementGroup where
  type PropertyType "ClusterId" ChannelPlacementGroup = Value Prelude.Text
  set newValue ChannelPlacementGroup {..}
    = ChannelPlacementGroup {clusterId = Prelude.pure newValue, ..}
instance Property "Name" ChannelPlacementGroup where
  type PropertyType "Name" ChannelPlacementGroup = Value Prelude.Text
  set newValue ChannelPlacementGroup {..}
    = ChannelPlacementGroup {name = Prelude.pure newValue, ..}
instance Property "Nodes" ChannelPlacementGroup where
  type PropertyType "Nodes" ChannelPlacementGroup = ValueList Prelude.Text
  set newValue ChannelPlacementGroup {..}
    = ChannelPlacementGroup {nodes = Prelude.pure newValue, ..}
instance Property "Tags" ChannelPlacementGroup where
  type PropertyType "Tags" ChannelPlacementGroup = [TagsProperty]
  set newValue ChannelPlacementGroup {..}
    = ChannelPlacementGroup {tags = Prelude.pure newValue, ..}