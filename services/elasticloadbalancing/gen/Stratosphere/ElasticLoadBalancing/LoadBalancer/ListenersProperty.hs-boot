module Stratosphere.ElasticLoadBalancing.LoadBalancer.ListenersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ListenersProperty :: Prelude.Type
instance ToResourceProperties ListenersProperty
instance Prelude.Eq ListenersProperty
instance Prelude.Show ListenersProperty
instance JSON.ToJSON ListenersProperty