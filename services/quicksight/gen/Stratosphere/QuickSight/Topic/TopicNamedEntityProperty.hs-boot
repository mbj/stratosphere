module Stratosphere.QuickSight.Topic.TopicNamedEntityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicNamedEntityProperty :: Prelude.Type
instance ToResourceProperties TopicNamedEntityProperty
instance JSON.ToJSON TopicNamedEntityProperty