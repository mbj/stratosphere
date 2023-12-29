module Stratosphere.SageMaker.NotebookInstanceLifecycleConfig (
        module Exports, NotebookInstanceLifecycleConfig(..),
        mkNotebookInstanceLifecycleConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.NotebookInstanceLifecycleConfig.NotebookInstanceLifecycleHookProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotebookInstanceLifecycleConfig
  = NotebookInstanceLifecycleConfig {notebookInstanceLifecycleConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                                     onCreate :: (Prelude.Maybe [NotebookInstanceLifecycleHookProperty]),
                                     onStart :: (Prelude.Maybe [NotebookInstanceLifecycleHookProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotebookInstanceLifecycleConfig ::
  NotebookInstanceLifecycleConfig
mkNotebookInstanceLifecycleConfig
  = NotebookInstanceLifecycleConfig
      {notebookInstanceLifecycleConfigName = Prelude.Nothing,
       onCreate = Prelude.Nothing, onStart = Prelude.Nothing}
instance ToResourceProperties NotebookInstanceLifecycleConfig where
  toResourceProperties NotebookInstanceLifecycleConfig {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::NotebookInstanceLifecycleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NotebookInstanceLifecycleConfigName"
                              Prelude.<$> notebookInstanceLifecycleConfigName,
                            (JSON..=) "OnCreate" Prelude.<$> onCreate,
                            (JSON..=) "OnStart" Prelude.<$> onStart])}
instance JSON.ToJSON NotebookInstanceLifecycleConfig where
  toJSON NotebookInstanceLifecycleConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NotebookInstanceLifecycleConfigName"
                 Prelude.<$> notebookInstanceLifecycleConfigName,
               (JSON..=) "OnCreate" Prelude.<$> onCreate,
               (JSON..=) "OnStart" Prelude.<$> onStart]))
instance Property "NotebookInstanceLifecycleConfigName" NotebookInstanceLifecycleConfig where
  type PropertyType "NotebookInstanceLifecycleConfigName" NotebookInstanceLifecycleConfig = Value Prelude.Text
  set newValue NotebookInstanceLifecycleConfig {..}
    = NotebookInstanceLifecycleConfig
        {notebookInstanceLifecycleConfigName = Prelude.pure newValue, ..}
instance Property "OnCreate" NotebookInstanceLifecycleConfig where
  type PropertyType "OnCreate" NotebookInstanceLifecycleConfig = [NotebookInstanceLifecycleHookProperty]
  set newValue NotebookInstanceLifecycleConfig {..}
    = NotebookInstanceLifecycleConfig
        {onCreate = Prelude.pure newValue, ..}
instance Property "OnStart" NotebookInstanceLifecycleConfig where
  type PropertyType "OnStart" NotebookInstanceLifecycleConfig = [NotebookInstanceLifecycleHookProperty]
  set newValue NotebookInstanceLifecycleConfig {..}
    = NotebookInstanceLifecycleConfig
        {onStart = Prelude.pure newValue, ..}