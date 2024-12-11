module Stratosphere.AppTest.TestCase.CompareActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CompareActionProperty :: Prelude.Type
instance ToResourceProperties CompareActionProperty
instance Prelude.Eq CompareActionProperty
instance Prelude.Show CompareActionProperty
instance JSON.ToJSON CompareActionProperty