module Stratosphere.S3.StorageLensGroup.OrProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OrProperty :: Prelude.Type
instance ToResourceProperties OrProperty
instance Prelude.Eq OrProperty
instance Prelude.Show OrProperty
instance JSON.ToJSON OrProperty