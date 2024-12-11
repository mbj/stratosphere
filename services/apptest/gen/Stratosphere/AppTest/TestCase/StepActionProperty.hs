module Stratosphere.AppTest.TestCase.StepActionProperty (
        module Exports, StepActionProperty(..), mkStepActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.CompareActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.MainframeActionProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.ResourceActionProperty as Exports
import Stratosphere.ResourceProperties
data StepActionProperty
  = StepActionProperty {compareAction :: (Prelude.Maybe CompareActionProperty),
                        mainframeAction :: (Prelude.Maybe MainframeActionProperty),
                        resourceAction :: (Prelude.Maybe ResourceActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepActionProperty :: StepActionProperty
mkStepActionProperty
  = StepActionProperty
      {compareAction = Prelude.Nothing,
       mainframeAction = Prelude.Nothing,
       resourceAction = Prelude.Nothing}
instance ToResourceProperties StepActionProperty where
  toResourceProperties StepActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.StepAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CompareAction" Prelude.<$> compareAction,
                            (JSON..=) "MainframeAction" Prelude.<$> mainframeAction,
                            (JSON..=) "ResourceAction" Prelude.<$> resourceAction])}
instance JSON.ToJSON StepActionProperty where
  toJSON StepActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CompareAction" Prelude.<$> compareAction,
               (JSON..=) "MainframeAction" Prelude.<$> mainframeAction,
               (JSON..=) "ResourceAction" Prelude.<$> resourceAction]))
instance Property "CompareAction" StepActionProperty where
  type PropertyType "CompareAction" StepActionProperty = CompareActionProperty
  set newValue StepActionProperty {..}
    = StepActionProperty {compareAction = Prelude.pure newValue, ..}
instance Property "MainframeAction" StepActionProperty where
  type PropertyType "MainframeAction" StepActionProperty = MainframeActionProperty
  set newValue StepActionProperty {..}
    = StepActionProperty {mainframeAction = Prelude.pure newValue, ..}
instance Property "ResourceAction" StepActionProperty where
  type PropertyType "ResourceAction" StepActionProperty = ResourceActionProperty
  set newValue StepActionProperty {..}
    = StepActionProperty {resourceAction = Prelude.pure newValue, ..}