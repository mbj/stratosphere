module Stratosphere.IoT.TopicRule.HttpActionHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HttpActionHeaderProperty :: Prelude.Type
instance ToResourceProperties HttpActionHeaderProperty
instance JSON.ToJSON HttpActionHeaderProperty