module Stratosphere.CodeDeploy.DeploymentGroup.ELBInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ELBInfoProperty :: Prelude.Type
instance ToResourceProperties ELBInfoProperty
instance JSON.ToJSON ELBInfoProperty