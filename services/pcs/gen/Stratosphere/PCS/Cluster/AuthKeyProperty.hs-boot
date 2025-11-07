module Stratosphere.PCS.Cluster.AuthKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AuthKeyProperty :: Prelude.Type
instance ToResourceProperties AuthKeyProperty
instance Prelude.Eq AuthKeyProperty
instance Prelude.Show AuthKeyProperty
instance JSON.ToJSON AuthKeyProperty