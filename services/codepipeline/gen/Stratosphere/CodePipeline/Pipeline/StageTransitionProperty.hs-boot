module Stratosphere.CodePipeline.Pipeline.StageTransitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StageTransitionProperty :: Prelude.Type
instance ToResourceProperties StageTransitionProperty
instance Prelude.Eq StageTransitionProperty
instance Prelude.Show StageTransitionProperty
instance JSON.ToJSON StageTransitionProperty