module Stratosphere.WorkSpaces.WorkspacesPool.CapacityProperty (
        CapacityProperty(..), mkCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityProperty
  = CapacityProperty {desiredUserSessions :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityProperty :: Value Prelude.Integer -> CapacityProperty
mkCapacityProperty desiredUserSessions
  = CapacityProperty {desiredUserSessions = desiredUserSessions}
instance ToResourceProperties CapacityProperty where
  toResourceProperties CapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::WorkspacesPool.Capacity",
         supportsTags = Prelude.False,
         properties = ["DesiredUserSessions" JSON..= desiredUserSessions]}
instance JSON.ToJSON CapacityProperty where
  toJSON CapacityProperty {..}
    = JSON.object ["DesiredUserSessions" JSON..= desiredUserSessions]
instance Property "DesiredUserSessions" CapacityProperty where
  type PropertyType "DesiredUserSessions" CapacityProperty = Value Prelude.Integer
  set newValue CapacityProperty {}
    = CapacityProperty {desiredUserSessions = newValue, ..}