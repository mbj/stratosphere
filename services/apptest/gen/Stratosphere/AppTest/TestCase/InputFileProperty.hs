module Stratosphere.AppTest.TestCase.InputFileProperty (
        module Exports, InputFileProperty(..), mkInputFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.FileMetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-inputfile.html>
    InputFileProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-inputfile.html#cfn-apptest-testcase-inputfile-filemetadata>
                       fileMetadata :: FileMetadataProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-inputfile.html#cfn-apptest-testcase-inputfile-sourcelocation>
                       sourceLocation :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-inputfile.html#cfn-apptest-testcase-inputfile-targetlocation>
                       targetLocation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputFileProperty ::
  FileMetadataProperty
  -> Value Prelude.Text -> Value Prelude.Text -> InputFileProperty
mkInputFileProperty fileMetadata sourceLocation targetLocation
  = InputFileProperty
      {haddock_workaround_ = (), fileMetadata = fileMetadata,
       sourceLocation = sourceLocation, targetLocation = targetLocation}
instance ToResourceProperties InputFileProperty where
  toResourceProperties InputFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.InputFile",
         supportsTags = Prelude.False,
         properties = ["FileMetadata" JSON..= fileMetadata,
                       "SourceLocation" JSON..= sourceLocation,
                       "TargetLocation" JSON..= targetLocation]}
instance JSON.ToJSON InputFileProperty where
  toJSON InputFileProperty {..}
    = JSON.object
        ["FileMetadata" JSON..= fileMetadata,
         "SourceLocation" JSON..= sourceLocation,
         "TargetLocation" JSON..= targetLocation]
instance Property "FileMetadata" InputFileProperty where
  type PropertyType "FileMetadata" InputFileProperty = FileMetadataProperty
  set newValue InputFileProperty {..}
    = InputFileProperty {fileMetadata = newValue, ..}
instance Property "SourceLocation" InputFileProperty where
  type PropertyType "SourceLocation" InputFileProperty = Value Prelude.Text
  set newValue InputFileProperty {..}
    = InputFileProperty {sourceLocation = newValue, ..}
instance Property "TargetLocation" InputFileProperty where
  type PropertyType "TargetLocation" InputFileProperty = Value Prelude.Text
  set newValue InputFileProperty {..}
    = InputFileProperty {targetLocation = newValue, ..}