module Stratosphere.EMR.Cluster.StepConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StepConfigProperty :: Prelude.Type
instance ToResourceProperties StepConfigProperty
instance Prelude.Eq StepConfigProperty
instance Prelude.Show StepConfigProperty
instance JSON.ToJSON StepConfigProperty