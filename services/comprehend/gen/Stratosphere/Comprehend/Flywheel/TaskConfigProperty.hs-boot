module Stratosphere.Comprehend.Flywheel.TaskConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TaskConfigProperty :: Prelude.Type
instance ToResourceProperties TaskConfigProperty
instance JSON.ToJSON TaskConfigProperty