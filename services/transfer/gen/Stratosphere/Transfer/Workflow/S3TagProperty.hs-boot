module Stratosphere.Transfer.Workflow.S3TagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3TagProperty :: Prelude.Type
instance ToResourceProperties S3TagProperty
instance JSON.ToJSON S3TagProperty