module Stratosphere.Transfer.Workflow.S3FileLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3FileLocationProperty :: Prelude.Type
instance ToResourceProperties S3FileLocationProperty
instance JSON.ToJSON S3FileLocationProperty