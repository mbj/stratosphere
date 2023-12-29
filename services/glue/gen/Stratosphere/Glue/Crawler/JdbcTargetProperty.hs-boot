module Stratosphere.Glue.Crawler.JdbcTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JdbcTargetProperty :: Prelude.Type
instance ToResourceProperties JdbcTargetProperty
instance Prelude.Eq JdbcTargetProperty
instance Prelude.Show JdbcTargetProperty
instance JSON.ToJSON JdbcTargetProperty