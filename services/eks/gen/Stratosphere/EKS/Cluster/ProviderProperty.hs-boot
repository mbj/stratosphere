module Stratosphere.EKS.Cluster.ProviderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProviderProperty :: Prelude.Type
instance ToResourceProperties ProviderProperty
instance Prelude.Eq ProviderProperty
instance Prelude.Show ProviderProperty
instance JSON.ToJSON ProviderProperty