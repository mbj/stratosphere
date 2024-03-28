module Stratosphere.ImageBuilder.LifecyclePolicy.ActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActionProperty :: Prelude.Type
instance ToResourceProperties ActionProperty
instance Prelude.Eq ActionProperty
instance Prelude.Show ActionProperty
instance JSON.ToJSON ActionProperty