module Stratosphere.IoT.TopicRule.HttpActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpActionProperty :: Prelude.Type
instance ToResourceProperties HttpActionProperty
instance JSON.ToJSON HttpActionProperty