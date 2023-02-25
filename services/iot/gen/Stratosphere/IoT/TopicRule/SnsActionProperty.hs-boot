module Stratosphere.IoT.TopicRule.SnsActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SnsActionProperty :: Prelude.Type
instance ToResourceProperties SnsActionProperty
instance JSON.ToJSON SnsActionProperty