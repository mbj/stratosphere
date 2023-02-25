module Stratosphere.IoT.TopicRule.TimestreamActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimestreamActionProperty :: Prelude.Type
instance ToResourceProperties TimestreamActionProperty
instance JSON.ToJSON TimestreamActionProperty