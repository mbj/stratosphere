module Stratosphere.EKS.Nodegroup.ScalingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingConfigProperty :: Prelude.Type
instance ToResourceProperties ScalingConfigProperty
instance Prelude.Eq ScalingConfigProperty
instance Prelude.Show ScalingConfigProperty
instance JSON.ToJSON ScalingConfigProperty