module Stratosphere.AppTest.TestCase.InputFileProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputFileProperty :: Prelude.Type
instance ToResourceProperties InputFileProperty
instance Prelude.Eq InputFileProperty
instance Prelude.Show InputFileProperty
instance JSON.ToJSON InputFileProperty