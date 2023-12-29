module Stratosphere.OpsWorks.Stack.ElasticIpProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ElasticIpProperty :: Prelude.Type
instance ToResourceProperties ElasticIpProperty
instance Prelude.Eq ElasticIpProperty
instance Prelude.Show ElasticIpProperty
instance JSON.ToJSON ElasticIpProperty