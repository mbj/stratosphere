module Stratosphere.CodeDeploy.DeploymentGroup.ECSServiceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ECSServiceProperty :: Prelude.Type
instance ToResourceProperties ECSServiceProperty
instance Prelude.Eq ECSServiceProperty
instance Prelude.Show ECSServiceProperty
instance JSON.ToJSON ECSServiceProperty