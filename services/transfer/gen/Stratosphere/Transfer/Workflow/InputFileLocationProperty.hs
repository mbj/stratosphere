module Stratosphere.Transfer.Workflow.InputFileLocationProperty (
        module Exports, InputFileLocationProperty(..),
        mkInputFileLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.EfsInputFileLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.S3InputFileLocationProperty as Exports
import Stratosphere.ResourceProperties
data InputFileLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-inputfilelocation.html>
    InputFileLocationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-inputfilelocation.html#cfn-transfer-workflow-inputfilelocation-efsfilelocation>
                               efsFileLocation :: (Prelude.Maybe EfsInputFileLocationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-inputfilelocation.html#cfn-transfer-workflow-inputfilelocation-s3filelocation>
                               s3FileLocation :: (Prelude.Maybe S3InputFileLocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputFileLocationProperty :: InputFileLocationProperty
mkInputFileLocationProperty
  = InputFileLocationProperty
      {haddock_workaround_ = (), efsFileLocation = Prelude.Nothing,
       s3FileLocation = Prelude.Nothing}
instance ToResourceProperties InputFileLocationProperty where
  toResourceProperties InputFileLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.InputFileLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EfsFileLocation" Prelude.<$> efsFileLocation,
                            (JSON..=) "S3FileLocation" Prelude.<$> s3FileLocation])}
instance JSON.ToJSON InputFileLocationProperty where
  toJSON InputFileLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EfsFileLocation" Prelude.<$> efsFileLocation,
               (JSON..=) "S3FileLocation" Prelude.<$> s3FileLocation]))
instance Property "EfsFileLocation" InputFileLocationProperty where
  type PropertyType "EfsFileLocation" InputFileLocationProperty = EfsInputFileLocationProperty
  set newValue InputFileLocationProperty {..}
    = InputFileLocationProperty
        {efsFileLocation = Prelude.pure newValue, ..}
instance Property "S3FileLocation" InputFileLocationProperty where
  type PropertyType "S3FileLocation" InputFileLocationProperty = S3InputFileLocationProperty
  set newValue InputFileLocationProperty {..}
    = InputFileLocationProperty
        {s3FileLocation = Prelude.pure newValue, ..}