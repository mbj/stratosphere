module Stratosphere.AppTest.TestCase.StepActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StepActionProperty :: Prelude.Type
instance ToResourceProperties StepActionProperty
instance Prelude.Eq StepActionProperty
instance Prelude.Show StepActionProperty
instance JSON.ToJSON StepActionProperty