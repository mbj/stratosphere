module Stratosphere.StepFunctions.StateMachine.S3LocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3LocationProperty :: Prelude.Type
instance ToResourceProperties S3LocationProperty
instance JSON.ToJSON S3LocationProperty