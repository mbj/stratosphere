module Stratosphere.AppTest.TestCase.TN3270Property (
        module Exports, TN3270Property(..), mkTN3270Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.ScriptProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TN3270Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-tn3270.html>
    TN3270Property {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-tn3270.html#cfn-apptest-testcase-tn3270-exportdatasetnames>
                    exportDataSetNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-tn3270.html#cfn-apptest-testcase-tn3270-script>
                    script :: ScriptProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTN3270Property :: ScriptProperty -> TN3270Property
mkTN3270Property script
  = TN3270Property
      {haddock_workaround_ = (), script = script,
       exportDataSetNames = Prelude.Nothing}
instance ToResourceProperties TN3270Property where
  toResourceProperties TN3270Property {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.TN3270",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Script" JSON..= script]
                           (Prelude.catMaybes
                              [(JSON..=) "ExportDataSetNames" Prelude.<$> exportDataSetNames]))}
instance JSON.ToJSON TN3270Property where
  toJSON TN3270Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Script" JSON..= script]
              (Prelude.catMaybes
                 [(JSON..=) "ExportDataSetNames" Prelude.<$> exportDataSetNames])))
instance Property "ExportDataSetNames" TN3270Property where
  type PropertyType "ExportDataSetNames" TN3270Property = ValueList Prelude.Text
  set newValue TN3270Property {..}
    = TN3270Property {exportDataSetNames = Prelude.pure newValue, ..}
instance Property "Script" TN3270Property where
  type PropertyType "Script" TN3270Property = ScriptProperty
  set newValue TN3270Property {..}
    = TN3270Property {script = newValue, ..}