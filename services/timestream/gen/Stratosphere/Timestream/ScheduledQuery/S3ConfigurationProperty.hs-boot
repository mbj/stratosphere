module Stratosphere.Timestream.ScheduledQuery.S3ConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3ConfigurationProperty :: Prelude.Type
instance ToResourceProperties S3ConfigurationProperty
instance JSON.ToJSON S3ConfigurationProperty