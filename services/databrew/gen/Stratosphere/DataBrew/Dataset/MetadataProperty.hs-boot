module Stratosphere.DataBrew.Dataset.MetadataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetadataProperty :: Prelude.Type
instance ToResourceProperties MetadataProperty
instance Prelude.Eq MetadataProperty
instance Prelude.Show MetadataProperty
instance JSON.ToJSON MetadataProperty