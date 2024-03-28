module Stratosphere.DataSync.Task.SkippedProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SkippedProperty :: Prelude.Type
instance ToResourceProperties SkippedProperty
instance Prelude.Eq SkippedProperty
instance Prelude.Show SkippedProperty
instance JSON.ToJSON SkippedProperty