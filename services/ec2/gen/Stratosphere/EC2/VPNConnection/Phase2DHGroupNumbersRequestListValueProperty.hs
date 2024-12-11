module Stratosphere.EC2.VPNConnection.Phase2DHGroupNumbersRequestListValueProperty (
        Phase2DHGroupNumbersRequestListValueProperty(..),
        mkPhase2DHGroupNumbersRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase2DHGroupNumbersRequestListValueProperty
  = Phase2DHGroupNumbersRequestListValueProperty {value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase2DHGroupNumbersRequestListValueProperty ::
  Phase2DHGroupNumbersRequestListValueProperty
mkPhase2DHGroupNumbersRequestListValueProperty
  = Phase2DHGroupNumbersRequestListValueProperty
      {value = Prelude.Nothing}
instance ToResourceProperties Phase2DHGroupNumbersRequestListValueProperty where
  toResourceProperties
    Phase2DHGroupNumbersRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase2DHGroupNumbersRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase2DHGroupNumbersRequestListValueProperty where
  toJSON Phase2DHGroupNumbersRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase2DHGroupNumbersRequestListValueProperty where
  type PropertyType "Value" Phase2DHGroupNumbersRequestListValueProperty = Value Prelude.Integer
  set newValue Phase2DHGroupNumbersRequestListValueProperty {}
    = Phase2DHGroupNumbersRequestListValueProperty
        {value = Prelude.pure newValue, ..}