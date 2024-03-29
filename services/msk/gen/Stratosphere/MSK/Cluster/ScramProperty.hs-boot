module Stratosphere.MSK.Cluster.ScramProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScramProperty :: Prelude.Type
instance ToResourceProperties ScramProperty
instance Prelude.Eq ScramProperty
instance Prelude.Show ScramProperty
instance JSON.ToJSON ScramProperty