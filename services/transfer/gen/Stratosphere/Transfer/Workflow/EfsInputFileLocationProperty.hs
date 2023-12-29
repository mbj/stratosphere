module Stratosphere.Transfer.Workflow.EfsInputFileLocationProperty (
        EfsInputFileLocationProperty(..), mkEfsInputFileLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EfsInputFileLocationProperty
  = EfsInputFileLocationProperty {fileSystemId :: (Prelude.Maybe (Value Prelude.Text)),
                                  path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEfsInputFileLocationProperty :: EfsInputFileLocationProperty
mkEfsInputFileLocationProperty
  = EfsInputFileLocationProperty
      {fileSystemId = Prelude.Nothing, path = Prelude.Nothing}
instance ToResourceProperties EfsInputFileLocationProperty where
  toResourceProperties EfsInputFileLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.EfsInputFileLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
                            (JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON EfsInputFileLocationProperty where
  toJSON EfsInputFileLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
               (JSON..=) "Path" Prelude.<$> path]))
instance Property "FileSystemId" EfsInputFileLocationProperty where
  type PropertyType "FileSystemId" EfsInputFileLocationProperty = Value Prelude.Text
  set newValue EfsInputFileLocationProperty {..}
    = EfsInputFileLocationProperty
        {fileSystemId = Prelude.pure newValue, ..}
instance Property "Path" EfsInputFileLocationProperty where
  type PropertyType "Path" EfsInputFileLocationProperty = Value Prelude.Text
  set newValue EfsInputFileLocationProperty {..}
    = EfsInputFileLocationProperty {path = Prelude.pure newValue, ..}