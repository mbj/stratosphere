module Stratosphere.Evidently.Launch.StepConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StepConfigProperty :: Prelude.Type
instance ToResourceProperties StepConfigProperty
instance JSON.ToJSON StepConfigProperty