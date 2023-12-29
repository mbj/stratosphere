module Stratosphere.IoT.TopicRule.KinesisActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KinesisActionProperty :: Prelude.Type
instance ToResourceProperties KinesisActionProperty
instance Prelude.Eq KinesisActionProperty
instance Prelude.Show KinesisActionProperty
instance JSON.ToJSON KinesisActionProperty