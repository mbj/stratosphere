module Stratosphere.DataSync.Task.VerifiedProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VerifiedProperty :: Prelude.Type
instance ToResourceProperties VerifiedProperty
instance Prelude.Eq VerifiedProperty
instance Prelude.Show VerifiedProperty
instance JSON.ToJSON VerifiedProperty