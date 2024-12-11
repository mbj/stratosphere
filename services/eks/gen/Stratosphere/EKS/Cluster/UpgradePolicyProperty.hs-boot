module Stratosphere.EKS.Cluster.UpgradePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UpgradePolicyProperty :: Prelude.Type
instance ToResourceProperties UpgradePolicyProperty
instance Prelude.Eq UpgradePolicyProperty
instance Prelude.Show UpgradePolicyProperty
instance JSON.ToJSON UpgradePolicyProperty