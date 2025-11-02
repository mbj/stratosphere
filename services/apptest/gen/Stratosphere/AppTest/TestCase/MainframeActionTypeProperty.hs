module Stratosphere.AppTest.TestCase.MainframeActionTypeProperty (
        module Exports, MainframeActionTypeProperty(..),
        mkMainframeActionTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.BatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.TN3270Property as Exports
import Stratosphere.ResourceProperties
data MainframeActionTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeactiontype.html>
    MainframeActionTypeProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeactiontype.html#cfn-apptest-testcase-mainframeactiontype-batch>
                                 batch :: (Prelude.Maybe BatchProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeactiontype.html#cfn-apptest-testcase-mainframeactiontype-tn3270>
                                 tn3270 :: (Prelude.Maybe TN3270Property)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMainframeActionTypeProperty :: MainframeActionTypeProperty
mkMainframeActionTypeProperty
  = MainframeActionTypeProperty
      {haddock_workaround_ = (), batch = Prelude.Nothing,
       tn3270 = Prelude.Nothing}
instance ToResourceProperties MainframeActionTypeProperty where
  toResourceProperties MainframeActionTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.MainframeActionType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Batch" Prelude.<$> batch,
                            (JSON..=) "Tn3270" Prelude.<$> tn3270])}
instance JSON.ToJSON MainframeActionTypeProperty where
  toJSON MainframeActionTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Batch" Prelude.<$> batch,
               (JSON..=) "Tn3270" Prelude.<$> tn3270]))
instance Property "Batch" MainframeActionTypeProperty where
  type PropertyType "Batch" MainframeActionTypeProperty = BatchProperty
  set newValue MainframeActionTypeProperty {..}
    = MainframeActionTypeProperty {batch = Prelude.pure newValue, ..}
instance Property "Tn3270" MainframeActionTypeProperty where
  type PropertyType "Tn3270" MainframeActionTypeProperty = TN3270Property
  set newValue MainframeActionTypeProperty {..}
    = MainframeActionTypeProperty {tn3270 = Prelude.pure newValue, ..}