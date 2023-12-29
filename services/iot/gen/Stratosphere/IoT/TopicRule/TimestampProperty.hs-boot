module Stratosphere.IoT.TopicRule.TimestampProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimestampProperty :: Prelude.Type
instance ToResourceProperties TimestampProperty
instance Prelude.Eq TimestampProperty
instance Prelude.Show TimestampProperty
instance JSON.ToJSON TimestampProperty