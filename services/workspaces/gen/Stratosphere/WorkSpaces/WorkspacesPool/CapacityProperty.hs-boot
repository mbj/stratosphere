module Stratosphere.WorkSpaces.WorkspacesPool.CapacityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CapacityProperty :: Prelude.Type
instance ToResourceProperties CapacityProperty
instance Prelude.Eq CapacityProperty
instance Prelude.Show CapacityProperty
instance JSON.ToJSON CapacityProperty