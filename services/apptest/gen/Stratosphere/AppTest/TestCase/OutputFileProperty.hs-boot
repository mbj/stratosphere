module Stratosphere.AppTest.TestCase.OutputFileProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputFileProperty :: Prelude.Type
instance ToResourceProperties OutputFileProperty
instance Prelude.Eq OutputFileProperty
instance Prelude.Show OutputFileProperty
instance JSON.ToJSON OutputFileProperty