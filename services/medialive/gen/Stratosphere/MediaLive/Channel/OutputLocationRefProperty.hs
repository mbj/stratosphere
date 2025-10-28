module Stratosphere.MediaLive.Channel.OutputLocationRefProperty (
        OutputLocationRefProperty(..), mkOutputLocationRefProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputLocationRefProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlocationref.html>
    OutputLocationRefProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputlocationref.html#cfn-medialive-channel-outputlocationref-destinationrefid>
                               destinationRefId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputLocationRefProperty :: OutputLocationRefProperty
mkOutputLocationRefProperty
  = OutputLocationRefProperty
      {haddock_workaround_ = (), destinationRefId = Prelude.Nothing}
instance ToResourceProperties OutputLocationRefProperty where
  toResourceProperties OutputLocationRefProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputLocationRef",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationRefId" Prelude.<$> destinationRefId])}
instance JSON.ToJSON OutputLocationRefProperty where
  toJSON OutputLocationRefProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationRefId" Prelude.<$> destinationRefId]))
instance Property "DestinationRefId" OutputLocationRefProperty where
  type PropertyType "DestinationRefId" OutputLocationRefProperty = Value Prelude.Text
  set newValue OutputLocationRefProperty {..}
    = OutputLocationRefProperty
        {destinationRefId = Prelude.pure newValue, ..}