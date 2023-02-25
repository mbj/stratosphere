module Stratosphere.QuickSight.DataSet.FieldFolderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldFolderProperty :: Prelude.Type
instance ToResourceProperties FieldFolderProperty
instance JSON.ToJSON FieldFolderProperty