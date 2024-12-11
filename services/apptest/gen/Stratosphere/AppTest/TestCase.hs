module Stratosphere.AppTest.TestCase (
        module Exports, TestCase(..), mkTestCase
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.StepProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TestCase
  = TestCase {description :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Value Prelude.Text),
              steps :: [StepProperty],
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTestCase :: Value Prelude.Text -> [StepProperty] -> TestCase
mkTestCase name steps
  = TestCase
      {name = name, steps = steps, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TestCase where
  toResourceProperties TestCase {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Steps" JSON..= steps]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TestCase where
  toJSON TestCase {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Steps" JSON..= steps]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" TestCase where
  type PropertyType "Description" TestCase = Value Prelude.Text
  set newValue TestCase {..}
    = TestCase {description = Prelude.pure newValue, ..}
instance Property "Name" TestCase where
  type PropertyType "Name" TestCase = Value Prelude.Text
  set newValue TestCase {..} = TestCase {name = newValue, ..}
instance Property "Steps" TestCase where
  type PropertyType "Steps" TestCase = [StepProperty]
  set newValue TestCase {..} = TestCase {steps = newValue, ..}
instance Property "Tags" TestCase where
  type PropertyType "Tags" TestCase = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TestCase {..}
    = TestCase {tags = Prelude.pure newValue, ..}