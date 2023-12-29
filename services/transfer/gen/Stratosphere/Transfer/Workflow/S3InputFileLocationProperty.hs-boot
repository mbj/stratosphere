module Stratosphere.Transfer.Workflow.S3InputFileLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3InputFileLocationProperty :: Prelude.Type
instance ToResourceProperties S3InputFileLocationProperty
instance Prelude.Eq S3InputFileLocationProperty
instance Prelude.Show S3InputFileLocationProperty
instance JSON.ToJSON S3InputFileLocationProperty