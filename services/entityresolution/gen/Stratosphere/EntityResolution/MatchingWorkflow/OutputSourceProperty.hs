module Stratosphere.EntityResolution.MatchingWorkflow.OutputSourceProperty (
        module Exports, OutputSourceProperty(..), mkOutputSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.OutputAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputsource.html>
    OutputSourceProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputsource.html#cfn-entityresolution-matchingworkflow-outputsource-applynormalization>
                          applyNormalization :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputsource.html#cfn-entityresolution-matchingworkflow-outputsource-kmsarn>
                          kMSArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputsource.html#cfn-entityresolution-matchingworkflow-outputsource-output>
                          output :: [OutputAttributeProperty],
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputsource.html#cfn-entityresolution-matchingworkflow-outputsource-outputs3path>
                          outputS3Path :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputSourceProperty ::
  [OutputAttributeProperty]
  -> Value Prelude.Text -> OutputSourceProperty
mkOutputSourceProperty output outputS3Path
  = OutputSourceProperty
      {haddock_workaround_ = (), output = output,
       outputS3Path = outputS3Path, applyNormalization = Prelude.Nothing,
       kMSArn = Prelude.Nothing}
instance ToResourceProperties OutputSourceProperty where
  toResourceProperties OutputSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.OutputSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Output" JSON..= output, "OutputS3Path" JSON..= outputS3Path]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplyNormalization" Prelude.<$> applyNormalization,
                               (JSON..=) "KMSArn" Prelude.<$> kMSArn]))}
instance JSON.ToJSON OutputSourceProperty where
  toJSON OutputSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Output" JSON..= output, "OutputS3Path" JSON..= outputS3Path]
              (Prelude.catMaybes
                 [(JSON..=) "ApplyNormalization" Prelude.<$> applyNormalization,
                  (JSON..=) "KMSArn" Prelude.<$> kMSArn])))
instance Property "ApplyNormalization" OutputSourceProperty where
  type PropertyType "ApplyNormalization" OutputSourceProperty = Value Prelude.Bool
  set newValue OutputSourceProperty {..}
    = OutputSourceProperty
        {applyNormalization = Prelude.pure newValue, ..}
instance Property "KMSArn" OutputSourceProperty where
  type PropertyType "KMSArn" OutputSourceProperty = Value Prelude.Text
  set newValue OutputSourceProperty {..}
    = OutputSourceProperty {kMSArn = Prelude.pure newValue, ..}
instance Property "Output" OutputSourceProperty where
  type PropertyType "Output" OutputSourceProperty = [OutputAttributeProperty]
  set newValue OutputSourceProperty {..}
    = OutputSourceProperty {output = newValue, ..}
instance Property "OutputS3Path" OutputSourceProperty where
  type PropertyType "OutputS3Path" OutputSourceProperty = Value Prelude.Text
  set newValue OutputSourceProperty {..}
    = OutputSourceProperty {outputS3Path = newValue, ..}