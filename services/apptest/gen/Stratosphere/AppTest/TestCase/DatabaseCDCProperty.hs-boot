module Stratosphere.AppTest.TestCase.DatabaseCDCProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatabaseCDCProperty :: Prelude.Type
instance ToResourceProperties DatabaseCDCProperty
instance Prelude.Eq DatabaseCDCProperty
instance Prelude.Show DatabaseCDCProperty
instance JSON.ToJSON DatabaseCDCProperty