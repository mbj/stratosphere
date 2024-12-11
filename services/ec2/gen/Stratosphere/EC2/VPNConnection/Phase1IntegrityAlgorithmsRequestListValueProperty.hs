module Stratosphere.EC2.VPNConnection.Phase1IntegrityAlgorithmsRequestListValueProperty (
        Phase1IntegrityAlgorithmsRequestListValueProperty(..),
        mkPhase1IntegrityAlgorithmsRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase1IntegrityAlgorithmsRequestListValueProperty
  = Phase1IntegrityAlgorithmsRequestListValueProperty {value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase1IntegrityAlgorithmsRequestListValueProperty ::
  Phase1IntegrityAlgorithmsRequestListValueProperty
mkPhase1IntegrityAlgorithmsRequestListValueProperty
  = Phase1IntegrityAlgorithmsRequestListValueProperty
      {value = Prelude.Nothing}
instance ToResourceProperties Phase1IntegrityAlgorithmsRequestListValueProperty where
  toResourceProperties
    Phase1IntegrityAlgorithmsRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase1IntegrityAlgorithmsRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase1IntegrityAlgorithmsRequestListValueProperty where
  toJSON Phase1IntegrityAlgorithmsRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase1IntegrityAlgorithmsRequestListValueProperty where
  type PropertyType "Value" Phase1IntegrityAlgorithmsRequestListValueProperty = Value Prelude.Text
  set newValue Phase1IntegrityAlgorithmsRequestListValueProperty {}
    = Phase1IntegrityAlgorithmsRequestListValueProperty
        {value = Prelude.pure newValue, ..}