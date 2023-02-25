module Stratosphere.Evidently.Feature.EntityOverrideProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntityOverrideProperty :: Prelude.Type
instance ToResourceProperties EntityOverrideProperty
instance JSON.ToJSON EntityOverrideProperty