module Stratosphere.B2BI.Transformer.MappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MappingProperty :: Prelude.Type
instance ToResourceProperties MappingProperty
instance Prelude.Eq MappingProperty
instance Prelude.Show MappingProperty
instance JSON.ToJSON MappingProperty