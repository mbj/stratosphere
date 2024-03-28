module Stratosphere.S3.StorageLensGroup.AndProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AndProperty :: Prelude.Type
instance ToResourceProperties AndProperty
instance Prelude.Eq AndProperty
instance Prelude.Show AndProperty
instance JSON.ToJSON AndProperty