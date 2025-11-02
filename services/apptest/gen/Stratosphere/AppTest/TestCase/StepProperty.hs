module Stratosphere.AppTest.TestCase.StepProperty (
        module Exports, StepProperty(..), mkStepProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.StepActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-step.html>
    StepProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-step.html#cfn-apptest-testcase-step-action>
                  action :: StepActionProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-step.html#cfn-apptest-testcase-step-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-step.html#cfn-apptest-testcase-step-name>
                  name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepProperty ::
  StepActionProperty -> Value Prelude.Text -> StepProperty
mkStepProperty action name
  = StepProperty
      {haddock_workaround_ = (), action = action, name = name,
       description = Prelude.Nothing}
instance ToResourceProperties StepProperty where
  toResourceProperties StepProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.Step",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON StepProperty where
  toJSON StepProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Action" StepProperty where
  type PropertyType "Action" StepProperty = StepActionProperty
  set newValue StepProperty {..}
    = StepProperty {action = newValue, ..}
instance Property "Description" StepProperty where
  type PropertyType "Description" StepProperty = Value Prelude.Text
  set newValue StepProperty {..}
    = StepProperty {description = Prelude.pure newValue, ..}
instance Property "Name" StepProperty where
  type PropertyType "Name" StepProperty = Value Prelude.Text
  set newValue StepProperty {..} = StepProperty {name = newValue, ..}