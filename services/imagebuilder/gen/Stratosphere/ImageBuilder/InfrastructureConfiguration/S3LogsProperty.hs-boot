module Stratosphere.ImageBuilder.InfrastructureConfiguration.S3LogsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3LogsProperty :: Prelude.Type
instance ToResourceProperties S3LogsProperty
instance JSON.ToJSON S3LogsProperty