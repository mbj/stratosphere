module Stratosphere.EC2.SpotFleet.SpotCapacityRebalanceProperty (
        SpotCapacityRebalanceProperty(..), mkSpotCapacityRebalanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotCapacityRebalanceProperty
  = SpotCapacityRebalanceProperty {replacementStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                   terminationDelay :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotCapacityRebalanceProperty :: SpotCapacityRebalanceProperty
mkSpotCapacityRebalanceProperty
  = SpotCapacityRebalanceProperty
      {replacementStrategy = Prelude.Nothing,
       terminationDelay = Prelude.Nothing}
instance ToResourceProperties SpotCapacityRebalanceProperty where
  toResourceProperties SpotCapacityRebalanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotCapacityRebalance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplacementStrategy" Prelude.<$> replacementStrategy,
                            (JSON..=) "TerminationDelay" Prelude.<$> terminationDelay])}
instance JSON.ToJSON SpotCapacityRebalanceProperty where
  toJSON SpotCapacityRebalanceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplacementStrategy" Prelude.<$> replacementStrategy,
               (JSON..=) "TerminationDelay" Prelude.<$> terminationDelay]))
instance Property "ReplacementStrategy" SpotCapacityRebalanceProperty where
  type PropertyType "ReplacementStrategy" SpotCapacityRebalanceProperty = Value Prelude.Text
  set newValue SpotCapacityRebalanceProperty {..}
    = SpotCapacityRebalanceProperty
        {replacementStrategy = Prelude.pure newValue, ..}
instance Property "TerminationDelay" SpotCapacityRebalanceProperty where
  type PropertyType "TerminationDelay" SpotCapacityRebalanceProperty = Value Prelude.Integer
  set newValue SpotCapacityRebalanceProperty {..}
    = SpotCapacityRebalanceProperty
        {terminationDelay = Prelude.pure newValue, ..}