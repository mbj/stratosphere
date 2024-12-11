module Stratosphere.AppTest.TestCase.ScriptProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScriptProperty :: Prelude.Type
instance ToResourceProperties ScriptProperty
instance Prelude.Eq ScriptProperty
instance Prelude.Show ScriptProperty
instance JSON.ToJSON ScriptProperty