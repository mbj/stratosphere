module Stratosphere.Lambda.EventSourceMapping.EndpointsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EndpointsProperty :: Prelude.Type
instance ToResourceProperties EndpointsProperty
instance Prelude.Eq EndpointsProperty
instance Prelude.Show EndpointsProperty
instance JSON.ToJSON EndpointsProperty