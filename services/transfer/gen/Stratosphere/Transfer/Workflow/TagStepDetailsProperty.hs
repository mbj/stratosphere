module Stratosphere.Transfer.Workflow.TagStepDetailsProperty (
        module Exports, TagStepDetailsProperty(..),
        mkTagStepDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.S3TagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagStepDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-tagstepdetails.html>
    TagStepDetailsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-tagstepdetails.html#cfn-transfer-workflow-tagstepdetails-name>
                            name :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-tagstepdetails.html#cfn-transfer-workflow-tagstepdetails-sourcefilelocation>
                            sourceFileLocation :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-tagstepdetails.html#cfn-transfer-workflow-tagstepdetails-tags>
                            tags :: (Prelude.Maybe [S3TagProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagStepDetailsProperty :: TagStepDetailsProperty
mkTagStepDetailsProperty
  = TagStepDetailsProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       sourceFileLocation = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TagStepDetailsProperty where
  toResourceProperties TagStepDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.TagStepDetails",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON TagStepDetailsProperty where
  toJSON TagStepDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Name" TagStepDetailsProperty where
  type PropertyType "Name" TagStepDetailsProperty = Value Prelude.Text
  set newValue TagStepDetailsProperty {..}
    = TagStepDetailsProperty {name = Prelude.pure newValue, ..}
instance Property "SourceFileLocation" TagStepDetailsProperty where
  type PropertyType "SourceFileLocation" TagStepDetailsProperty = Value Prelude.Text
  set newValue TagStepDetailsProperty {..}
    = TagStepDetailsProperty
        {sourceFileLocation = Prelude.pure newValue, ..}
instance Property "Tags" TagStepDetailsProperty where
  type PropertyType "Tags" TagStepDetailsProperty = [S3TagProperty]
  set newValue TagStepDetailsProperty {..}
    = TagStepDetailsProperty {tags = Prelude.pure newValue, ..}