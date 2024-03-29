module Stratosphere.ResilienceHub.App.ResourceMappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceMappingProperty :: Prelude.Type
instance ToResourceProperties ResourceMappingProperty
instance Prelude.Eq ResourceMappingProperty
instance Prelude.Show ResourceMappingProperty
instance JSON.ToJSON ResourceMappingProperty