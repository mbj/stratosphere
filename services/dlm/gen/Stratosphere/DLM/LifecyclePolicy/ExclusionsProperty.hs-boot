module Stratosphere.DLM.LifecyclePolicy.ExclusionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExclusionsProperty :: Prelude.Type
instance ToResourceProperties ExclusionsProperty
instance Prelude.Eq ExclusionsProperty
instance Prelude.Show ExclusionsProperty
instance JSON.ToJSON ExclusionsProperty