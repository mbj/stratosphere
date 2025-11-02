module Stratosphere.MediaLive.Multiplex (
        module Exports, Multiplex(..), mkMultiplex
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplex.MultiplexOutputDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplex.MultiplexSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplex.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Multiplex
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-multiplex.html>
    Multiplex {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-multiplex.html#cfn-medialive-multiplex-availabilityzones>
               availabilityZones :: (ValueList Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-multiplex.html#cfn-medialive-multiplex-destinations>
               destinations :: (Prelude.Maybe [MultiplexOutputDestinationProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-multiplex.html#cfn-medialive-multiplex-multiplexsettings>
               multiplexSettings :: MultiplexSettingsProperty,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-multiplex.html#cfn-medialive-multiplex-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-multiplex.html#cfn-medialive-multiplex-tags>
               tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplex ::
  ValueList Prelude.Text
  -> MultiplexSettingsProperty -> Value Prelude.Text -> Multiplex
mkMultiplex availabilityZones multiplexSettings name
  = Multiplex
      {haddock_workaround_ = (), availabilityZones = availabilityZones,
       multiplexSettings = multiplexSettings, name = name,
       destinations = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Multiplex where
  toResourceProperties Multiplex {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplex",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AvailabilityZones" JSON..= availabilityZones,
                            "MultiplexSettings" JSON..= multiplexSettings, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Destinations" Prelude.<$> destinations,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Multiplex where
  toJSON Multiplex {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AvailabilityZones" JSON..= availabilityZones,
               "MultiplexSettings" JSON..= multiplexSettings, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Destinations" Prelude.<$> destinations,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AvailabilityZones" Multiplex where
  type PropertyType "AvailabilityZones" Multiplex = ValueList Prelude.Text
  set newValue Multiplex {..}
    = Multiplex {availabilityZones = newValue, ..}
instance Property "Destinations" Multiplex where
  type PropertyType "Destinations" Multiplex = [MultiplexOutputDestinationProperty]
  set newValue Multiplex {..}
    = Multiplex {destinations = Prelude.pure newValue, ..}
instance Property "MultiplexSettings" Multiplex where
  type PropertyType "MultiplexSettings" Multiplex = MultiplexSettingsProperty
  set newValue Multiplex {..}
    = Multiplex {multiplexSettings = newValue, ..}
instance Property "Name" Multiplex where
  type PropertyType "Name" Multiplex = Value Prelude.Text
  set newValue Multiplex {..} = Multiplex {name = newValue, ..}
instance Property "Tags" Multiplex where
  type PropertyType "Tags" Multiplex = [TagsProperty]
  set newValue Multiplex {..}
    = Multiplex {tags = Prelude.pure newValue, ..}