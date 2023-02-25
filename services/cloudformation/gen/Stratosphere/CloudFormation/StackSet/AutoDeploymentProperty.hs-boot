module Stratosphere.CloudFormation.StackSet.AutoDeploymentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AutoDeploymentProperty :: Prelude.Type
instance ToResourceProperties AutoDeploymentProperty
instance JSON.ToJSON AutoDeploymentProperty