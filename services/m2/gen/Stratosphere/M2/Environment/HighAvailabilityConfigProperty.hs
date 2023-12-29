module Stratosphere.M2.Environment.HighAvailabilityConfigProperty (
        HighAvailabilityConfigProperty(..),
        mkHighAvailabilityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HighAvailabilityConfigProperty
  = HighAvailabilityConfigProperty {desiredCapacity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHighAvailabilityConfigProperty ::
  Value Prelude.Integer -> HighAvailabilityConfigProperty
mkHighAvailabilityConfigProperty desiredCapacity
  = HighAvailabilityConfigProperty
      {desiredCapacity = desiredCapacity}
instance ToResourceProperties HighAvailabilityConfigProperty where
  toResourceProperties HighAvailabilityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Environment.HighAvailabilityConfig",
         supportsTags = Prelude.False,
         properties = ["DesiredCapacity" JSON..= desiredCapacity]}
instance JSON.ToJSON HighAvailabilityConfigProperty where
  toJSON HighAvailabilityConfigProperty {..}
    = JSON.object ["DesiredCapacity" JSON..= desiredCapacity]
instance Property "DesiredCapacity" HighAvailabilityConfigProperty where
  type PropertyType "DesiredCapacity" HighAvailabilityConfigProperty = Value Prelude.Integer
  set newValue HighAvailabilityConfigProperty {}
    = HighAvailabilityConfigProperty {desiredCapacity = newValue, ..}