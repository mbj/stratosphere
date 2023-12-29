module Stratosphere.QuickSight.DataSet.S3SourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3SourceProperty :: Prelude.Type
instance ToResourceProperties S3SourceProperty
instance Prelude.Eq S3SourceProperty
instance Prelude.Show S3SourceProperty
instance JSON.ToJSON S3SourceProperty