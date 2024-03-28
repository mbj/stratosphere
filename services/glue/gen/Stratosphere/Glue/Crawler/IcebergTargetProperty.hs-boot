module Stratosphere.Glue.Crawler.IcebergTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IcebergTargetProperty :: Prelude.Type
instance ToResourceProperties IcebergTargetProperty
instance Prelude.Eq IcebergTargetProperty
instance Prelude.Show IcebergTargetProperty
instance JSON.ToJSON IcebergTargetProperty