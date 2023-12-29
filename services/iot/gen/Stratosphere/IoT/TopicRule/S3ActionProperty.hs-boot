module Stratosphere.IoT.TopicRule.S3ActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3ActionProperty :: Prelude.Type
instance ToResourceProperties S3ActionProperty
instance Prelude.Eq S3ActionProperty
instance Prelude.Show S3ActionProperty
instance JSON.ToJSON S3ActionProperty