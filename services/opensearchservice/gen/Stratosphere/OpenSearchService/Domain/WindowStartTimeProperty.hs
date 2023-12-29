module Stratosphere.OpenSearchService.Domain.WindowStartTimeProperty (
        WindowStartTimeProperty(..), mkWindowStartTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WindowStartTimeProperty
  = WindowStartTimeProperty {hours :: (Value Prelude.Integer),
                             minutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWindowStartTimeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> WindowStartTimeProperty
mkWindowStartTimeProperty hours minutes
  = WindowStartTimeProperty {hours = hours, minutes = minutes}
instance ToResourceProperties WindowStartTimeProperty where
  toResourceProperties WindowStartTimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.WindowStartTime",
         supportsTags = Prelude.False,
         properties = ["Hours" JSON..= hours, "Minutes" JSON..= minutes]}
instance JSON.ToJSON WindowStartTimeProperty where
  toJSON WindowStartTimeProperty {..}
    = JSON.object ["Hours" JSON..= hours, "Minutes" JSON..= minutes]
instance Property "Hours" WindowStartTimeProperty where
  type PropertyType "Hours" WindowStartTimeProperty = Value Prelude.Integer
  set newValue WindowStartTimeProperty {..}
    = WindowStartTimeProperty {hours = newValue, ..}
instance Property "Minutes" WindowStartTimeProperty where
  type PropertyType "Minutes" WindowStartTimeProperty = Value Prelude.Integer
  set newValue WindowStartTimeProperty {..}
    = WindowStartTimeProperty {minutes = newValue, ..}