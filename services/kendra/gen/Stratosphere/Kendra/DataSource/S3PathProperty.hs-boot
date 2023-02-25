module Stratosphere.Kendra.DataSource.S3PathProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3PathProperty :: Prelude.Type
instance ToResourceProperties S3PathProperty
instance JSON.ToJSON S3PathProperty