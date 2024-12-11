module Stratosphere.AppTest.TestCase.ResourceActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceActionProperty :: Prelude.Type
instance ToResourceProperties ResourceActionProperty
instance Prelude.Eq ResourceActionProperty
instance Prelude.Show ResourceActionProperty
instance JSON.ToJSON ResourceActionProperty