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
  = NotebookInstanceLifecycleHookProperty {content :: (Prelude.Maybe (Value Prelude.Text))}
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