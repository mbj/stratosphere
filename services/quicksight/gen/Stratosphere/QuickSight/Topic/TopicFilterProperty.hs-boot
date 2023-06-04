module Stratosphere.QuickSight.Topic.TopicFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicFilterProperty :: Prelude.Type
instance ToResourceProperties TopicFilterProperty
instance JSON.ToJSON TopicFilterProperty