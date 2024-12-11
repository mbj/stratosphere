module Stratosphere.AppTest.TestCase.BatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BatchProperty :: Prelude.Type
instance ToResourceProperties BatchProperty
instance Prelude.Eq BatchProperty
instance Prelude.Show BatchProperty
instance JSON.ToJSON BatchProperty