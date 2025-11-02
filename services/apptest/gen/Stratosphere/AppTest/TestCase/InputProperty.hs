module Stratosphere.AppTest.TestCase.InputProperty (
        module Exports, InputProperty(..), mkInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.InputFileProperty as Exports
import Stratosphere.ResourceProperties
data InputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-input.html>
    InputProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-input.html#cfn-apptest-testcase-input-file>
                   file :: InputFileProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputProperty :: InputFileProperty -> InputProperty
mkInputProperty file
  = InputProperty {haddock_workaround_ = (), file = file}
instance ToResourceProperties InputProperty where
  toResourceProperties InputProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.Input",
         supportsTags = Prelude.False, properties = ["File" JSON..= file]}
instance JSON.ToJSON InputProperty where
  toJSON InputProperty {..} = JSON.object ["File" JSON..= file]
instance Property "File" InputProperty where
  type PropertyType "File" InputProperty = InputFileProperty
  set newValue InputProperty {..}
    = InputProperty {file = newValue, ..}