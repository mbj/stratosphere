module Stratosphere.CloudFormation.StackSet.StackInstancesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StackInstancesProperty :: Prelude.Type
instance ToResourceProperties StackInstancesProperty
instance JSON.ToJSON StackInstancesProperty