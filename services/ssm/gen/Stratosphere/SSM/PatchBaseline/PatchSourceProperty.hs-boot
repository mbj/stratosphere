module Stratosphere.SSM.PatchBaseline.PatchSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PatchSourceProperty :: Prelude.Type
instance ToResourceProperties PatchSourceProperty
instance Prelude.Eq PatchSourceProperty
instance Prelude.Show PatchSourceProperty
instance JSON.ToJSON PatchSourceProperty