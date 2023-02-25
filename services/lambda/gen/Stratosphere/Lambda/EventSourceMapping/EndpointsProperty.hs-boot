module Stratosphere.Lambda.EventSourceMapping.EndpointsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EndpointsProperty :: Prelude.Type
instance ToResourceProperties EndpointsProperty
instance JSON.ToJSON EndpointsProperty