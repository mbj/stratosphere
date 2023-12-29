module Stratosphere.Omics.AnnotationStore.ReferenceItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReferenceItemProperty :: Prelude.Type
instance ToResourceProperties ReferenceItemProperty
instance Prelude.Eq ReferenceItemProperty
instance Prelude.Show ReferenceItemProperty
instance JSON.ToJSON ReferenceItemProperty