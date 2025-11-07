module Stratosphere.Omics.WorkflowVersion.SourceReferenceProperty (
        SourceReferenceProperty(..), mkSourceReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-sourcereference.html>
    SourceReferenceProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-sourcereference.html#cfn-omics-workflowversion-sourcereference-type>
                             type' :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-sourcereference.html#cfn-omics-workflowversion-sourcereference-value>
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceReferenceProperty :: SourceReferenceProperty
mkSourceReferenceProperty
  = SourceReferenceProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties SourceReferenceProperty where
  toResourceProperties SourceReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::WorkflowVersion.SourceReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "type" Prelude.<$> type',
                            (JSON..=) "value" Prelude.<$> value])}
instance JSON.ToJSON SourceReferenceProperty where
  toJSON SourceReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "type" Prelude.<$> type',
               (JSON..=) "value" Prelude.<$> value]))
instance Property "type" SourceReferenceProperty where
  type PropertyType "type" SourceReferenceProperty = Value Prelude.Text
  set newValue SourceReferenceProperty {..}
    = SourceReferenceProperty {type' = Prelude.pure newValue, ..}
instance Property "value" SourceReferenceProperty where
  type PropertyType "value" SourceReferenceProperty = Value Prelude.Text
  set newValue SourceReferenceProperty {..}
    = SourceReferenceProperty {value = Prelude.pure newValue, ..}