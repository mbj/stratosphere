module Stratosphere.APS.Workspace.LabelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LabelProperty :: Prelude.Type
instance ToResourceProperties LabelProperty
instance Prelude.Eq LabelProperty
instance Prelude.Show LabelProperty
instance JSON.ToJSON LabelProperty