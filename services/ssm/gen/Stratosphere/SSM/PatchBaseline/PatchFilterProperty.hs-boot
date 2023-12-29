module Stratosphere.SSM.PatchBaseline.PatchFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PatchFilterProperty :: Prelude.Type
instance ToResourceProperties PatchFilterProperty
instance Prelude.Eq PatchFilterProperty
instance Prelude.Show PatchFilterProperty
instance JSON.ToJSON PatchFilterProperty