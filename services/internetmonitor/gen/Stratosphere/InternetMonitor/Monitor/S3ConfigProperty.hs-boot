module Stratosphere.InternetMonitor.Monitor.S3ConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3ConfigProperty :: Prelude.Type
instance ToResourceProperties S3ConfigProperty
instance Prelude.Eq S3ConfigProperty
instance Prelude.Show S3ConfigProperty
instance JSON.ToJSON S3ConfigProperty