module Stratosphere.EKS.Nodegroup.ScalingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingConfigProperty :: Prelude.Type
instance ToResourceProperties ScalingConfigProperty
instance JSON.ToJSON ScalingConfigProperty