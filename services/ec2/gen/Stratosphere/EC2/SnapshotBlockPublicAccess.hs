module Stratosphere.EC2.SnapshotBlockPublicAccess (
        SnapshotBlockPublicAccess(..), mkSnapshotBlockPublicAccess
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapshotBlockPublicAccess
  = SnapshotBlockPublicAccess {state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshotBlockPublicAccess ::
  Value Prelude.Text -> SnapshotBlockPublicAccess
mkSnapshotBlockPublicAccess state
  = SnapshotBlockPublicAccess {state = state}
instance ToResourceProperties SnapshotBlockPublicAccess where
  toResourceProperties SnapshotBlockPublicAccess {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SnapshotBlockPublicAccess",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON SnapshotBlockPublicAccess where
  toJSON SnapshotBlockPublicAccess {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" SnapshotBlockPublicAccess where
  type PropertyType "State" SnapshotBlockPublicAccess = Value Prelude.Text
  set newValue SnapshotBlockPublicAccess {}
    = SnapshotBlockPublicAccess {state = newValue, ..}