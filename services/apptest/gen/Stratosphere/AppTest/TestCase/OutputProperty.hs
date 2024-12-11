module Stratosphere.AppTest.TestCase.OutputProperty (
        module Exports, OutputProperty(..), mkOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.OutputFileProperty as Exports
import Stratosphere.ResourceProperties
data OutputProperty
  = OutputProperty {file :: OutputFileProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputProperty :: OutputFileProperty -> OutputProperty
mkOutputProperty file = OutputProperty {file = file}
instance ToResourceProperties OutputProperty where
  toResourceProperties OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.Output",
         supportsTags = Prelude.False, properties = ["File" JSON..= file]}
instance JSON.ToJSON OutputProperty where
  toJSON OutputProperty {..} = JSON.object ["File" JSON..= file]
instance Property "File" OutputProperty where
  type PropertyType "File" OutputProperty = OutputFileProperty
  set newValue OutputProperty {}
    = OutputProperty {file = newValue, ..}