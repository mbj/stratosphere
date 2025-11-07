module Stratosphere.MediaLive.Channel.AdditionalDestinationsProperty (
        module Exports, AdditionalDestinationsProperty(..),
        mkAdditionalDestinationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
data AdditionalDestinationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-additionaldestinations.html>
    AdditionalDestinationsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-additionaldestinations.html#cfn-medialive-channel-additionaldestinations-destination>
                                    destination :: (Prelude.Maybe OutputLocationRefProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdditionalDestinationsProperty :: AdditionalDestinationsProperty
mkAdditionalDestinationsProperty
  = AdditionalDestinationsProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing}
instance ToResourceProperties AdditionalDestinationsProperty where
  toResourceProperties AdditionalDestinationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AdditionalDestinations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination])}
instance JSON.ToJSON AdditionalDestinationsProperty where
  toJSON AdditionalDestinationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination]))
instance Property "Destination" AdditionalDestinationsProperty where
  type PropertyType "Destination" AdditionalDestinationsProperty = OutputLocationRefProperty
  set newValue AdditionalDestinationsProperty {..}
    = AdditionalDestinationsProperty
        {destination = Prelude.pure newValue, ..}