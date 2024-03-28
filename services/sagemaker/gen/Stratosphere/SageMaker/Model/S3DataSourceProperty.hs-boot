module Stratosphere.SageMaker.Model.S3DataSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3DataSourceProperty :: Prelude.Type
instance ToResourceProperties S3DataSourceProperty
instance Prelude.Eq S3DataSourceProperty
instance Prelude.Show S3DataSourceProperty
instance JSON.ToJSON S3DataSourceProperty