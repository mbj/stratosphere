module Stratosphere.CloudFormation.StackSet.ParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParameterProperty :: Prelude.Type
instance ToResourceProperties ParameterProperty
instance JSON.ToJSON ParameterProperty