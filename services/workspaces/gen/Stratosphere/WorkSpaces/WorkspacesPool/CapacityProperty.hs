module Stratosphere.WorkSpaces.WorkspacesPool.CapacityProperty (
        CapacityProperty(..), mkCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-capacity.html>
    CapacityProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-capacity.html#cfn-workspaces-workspacespool-capacity-desiredusersessions>
                      desiredUserSessions :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityProperty :: Value Prelude.Integer -> CapacityProperty
mkCapacityProperty desiredUserSessions
  = CapacityProperty
      {haddock_workaround_ = (),
       desiredUserSessions = desiredUserSessions}
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
  set newValue CapacityProperty {..}
    = CapacityProperty {desiredUserSessions = newValue, ..}