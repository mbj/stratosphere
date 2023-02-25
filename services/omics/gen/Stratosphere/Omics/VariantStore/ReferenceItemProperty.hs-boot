module Stratosphere.Omics.VariantStore.ReferenceItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReferenceItemProperty :: Prelude.Type
instance ToResourceProperties ReferenceItemProperty
instance JSON.ToJSON ReferenceItemProperty