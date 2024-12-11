module Stratosphere.MediaLive.SignalMap.MediaResourceNeighborProperty (
        MediaResourceNeighborProperty(..), mkMediaResourceNeighborProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaResourceNeighborProperty
  = MediaResourceNeighborProperty {arn :: (Value Prelude.Text),
                                   name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaResourceNeighborProperty ::
  Value Prelude.Text -> MediaResourceNeighborProperty
mkMediaResourceNeighborProperty arn
  = MediaResourceNeighborProperty {arn = arn, name = Prelude.Nothing}
instance ToResourceProperties MediaResourceNeighborProperty where
  toResourceProperties MediaResourceNeighborProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::SignalMap.MediaResourceNeighbor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON MediaResourceNeighborProperty where
  toJSON MediaResourceNeighborProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Arn" MediaResourceNeighborProperty where
  type PropertyType "Arn" MediaResourceNeighborProperty = Value Prelude.Text
  set newValue MediaResourceNeighborProperty {..}
    = MediaResourceNeighborProperty {arn = newValue, ..}
instance Property "Name" MediaResourceNeighborProperty where
  type PropertyType "Name" MediaResourceNeighborProperty = Value Prelude.Text
  set newValue MediaResourceNeighborProperty {..}
    = MediaResourceNeighborProperty {name = Prelude.pure newValue, ..}