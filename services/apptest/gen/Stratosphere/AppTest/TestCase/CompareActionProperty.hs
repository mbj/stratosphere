module Stratosphere.AppTest.TestCase.CompareActionProperty (
        module Exports, CompareActionProperty(..), mkCompareActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.InputProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.OutputProperty as Exports
import Stratosphere.ResourceProperties
data CompareActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-compareaction.html>
    CompareActionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-compareaction.html#cfn-apptest-testcase-compareaction-input>
                           input :: InputProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-compareaction.html#cfn-apptest-testcase-compareaction-output>
                           output :: (Prelude.Maybe OutputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompareActionProperty :: InputProperty -> CompareActionProperty
mkCompareActionProperty input
  = CompareActionProperty
      {haddock_workaround_ = (), input = input, output = Prelude.Nothing}
instance ToResourceProperties CompareActionProperty where
  toResourceProperties CompareActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.CompareAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Input" JSON..= input]
                           (Prelude.catMaybes [(JSON..=) "Output" Prelude.<$> output]))}
instance JSON.ToJSON CompareActionProperty where
  toJSON CompareActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Input" JSON..= input]
              (Prelude.catMaybes [(JSON..=) "Output" Prelude.<$> output])))
instance Property "Input" CompareActionProperty where
  type PropertyType "Input" CompareActionProperty = InputProperty
  set newValue CompareActionProperty {..}
    = CompareActionProperty {input = newValue, ..}
instance Property "Output" CompareActionProperty where
  type PropertyType "Output" CompareActionProperty = OutputProperty
  set newValue CompareActionProperty {..}
    = CompareActionProperty {output = Prelude.pure newValue, ..}