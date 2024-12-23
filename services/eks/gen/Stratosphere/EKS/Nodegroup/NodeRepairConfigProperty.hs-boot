module Stratosphere.EKS.Nodegroup.NodeRepairConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NodeRepairConfigProperty :: Prelude.Type
instance ToResourceProperties NodeRepairConfigProperty
instance Prelude.Eq NodeRepairConfigProperty
instance Prelude.Show NodeRepairConfigProperty
instance JSON.ToJSON NodeRepairConfigProperty