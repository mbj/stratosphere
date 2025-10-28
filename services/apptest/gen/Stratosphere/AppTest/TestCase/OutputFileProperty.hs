module Stratosphere.AppTest.TestCase.OutputFileProperty (
        OutputFileProperty(..), mkOutputFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-outputfile.html>
    OutputFileProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-outputfile.html#cfn-apptest-testcase-outputfile-filelocation>
                        fileLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputFileProperty :: OutputFileProperty
mkOutputFileProperty
  = OutputFileProperty
      {haddock_workaround_ = (), fileLocation = Prelude.Nothing}
instance ToResourceProperties OutputFileProperty where
  toResourceProperties OutputFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.OutputFile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FileLocation" Prelude.<$> fileLocation])}
instance JSON.ToJSON OutputFileProperty where
  toJSON OutputFileProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FileLocation" Prelude.<$> fileLocation]))
instance Property "FileLocation" OutputFileProperty where
  type PropertyType "FileLocation" OutputFileProperty = Value Prelude.Text
  set newValue OutputFileProperty {..}
    = OutputFileProperty {fileLocation = Prelude.pure newValue, ..}