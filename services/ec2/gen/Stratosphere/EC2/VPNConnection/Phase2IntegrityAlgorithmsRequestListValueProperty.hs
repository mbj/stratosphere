module Stratosphere.EC2.VPNConnection.Phase2IntegrityAlgorithmsRequestListValueProperty (
        Phase2IntegrityAlgorithmsRequestListValueProperty(..),
        mkPhase2IntegrityAlgorithmsRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase2IntegrityAlgorithmsRequestListValueProperty
  = Phase2IntegrityAlgorithmsRequestListValueProperty {value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase2IntegrityAlgorithmsRequestListValueProperty ::
  Phase2IntegrityAlgorithmsRequestListValueProperty
mkPhase2IntegrityAlgorithmsRequestListValueProperty
  = Phase2IntegrityAlgorithmsRequestListValueProperty
      {value = Prelude.Nothing}
instance ToResourceProperties Phase2IntegrityAlgorithmsRequestListValueProperty where
  toResourceProperties
    Phase2IntegrityAlgorithmsRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase2IntegrityAlgorithmsRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase2IntegrityAlgorithmsRequestListValueProperty where
  toJSON Phase2IntegrityAlgorithmsRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase2IntegrityAlgorithmsRequestListValueProperty where
  type PropertyType "Value" Phase2IntegrityAlgorithmsRequestListValueProperty = Value Prelude.Text
  set newValue Phase2IntegrityAlgorithmsRequestListValueProperty {}
    = Phase2IntegrityAlgorithmsRequestListValueProperty
        {value = Prelude.pure newValue, ..}