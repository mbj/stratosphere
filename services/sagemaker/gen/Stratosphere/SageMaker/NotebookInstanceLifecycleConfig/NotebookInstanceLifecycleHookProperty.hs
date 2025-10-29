module Stratosphere.SageMaker.NotebookInstanceLifecycleConfig.NotebookInstanceLifecycleHookProperty (
        NotebookInstanceLifecycleHookProperty(..),
        mkNotebookInstanceLifecycleHookProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotebookInstanceLifecycleHookProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook.html>
    NotebookInstanceLifecycleHookProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook.html#cfn-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook-content>
                                           content :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotebookInstanceLifecycleHookProperty ::
  NotebookInstanceLifecycleHookProperty
mkNotebookInstanceLifecycleHookProperty
  = NotebookInstanceLifecycleHookProperty {content = Prelude.Nothing}
instance ToResourceProperties NotebookInstanceLifecycleHookProperty where
  toResourceProperties NotebookInstanceLifecycleHookProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::NotebookInstanceLifecycleConfig.NotebookInstanceLifecycleHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content])}
instance JSON.ToJSON NotebookInstanceLifecycleHookProperty where
  toJSON NotebookInstanceLifecycleHookProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content]))
instance Property "Content" NotebookInstanceLifecycleHookProperty where
  type PropertyType "Content" NotebookInstanceLifecycleHookProperty = Value Prelude.Text
  set newValue NotebookInstanceLifecycleHookProperty {}
    = NotebookInstanceLifecycleHookProperty
        {content = Prelude.pure newValue, ..}