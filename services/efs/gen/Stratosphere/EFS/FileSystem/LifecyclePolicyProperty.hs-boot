module Stratosphere.EFS.FileSystem.LifecyclePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LifecyclePolicyProperty :: Prelude.Type
instance ToResourceProperties LifecyclePolicyProperty
instance JSON.ToJSON LifecyclePolicyProperty