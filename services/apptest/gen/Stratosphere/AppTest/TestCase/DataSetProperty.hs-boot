module Stratosphere.AppTest.TestCase.DataSetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataSetProperty :: Prelude.Type
instance ToResourceProperties DataSetProperty
instance Prelude.Eq DataSetProperty
instance Prelude.Show DataSetProperty
instance JSON.ToJSON DataSetProperty