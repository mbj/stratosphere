module Stratosphere.EKS.Nodegroup.UpdateConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UpdateConfigProperty :: Prelude.Type
instance ToResourceProperties UpdateConfigProperty
instance JSON.ToJSON UpdateConfigProperty