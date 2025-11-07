module Stratosphere.SageMaker.Space.S3FileSystemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3FileSystemProperty :: Prelude.Type
instance ToResourceProperties S3FileSystemProperty
instance Prelude.Eq S3FileSystemProperty
instance Prelude.Show S3FileSystemProperty
instance JSON.ToJSON S3FileSystemProperty