module Stratosphere.DataSync.Task.DeletedProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeletedProperty :: Prelude.Type
instance ToResourceProperties DeletedProperty
instance Prelude.Eq DeletedProperty
instance Prelude.Show DeletedProperty
instance JSON.ToJSON DeletedProperty