module Stratosphere.MediaStore.Container.CorsRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CorsRuleProperty :: Prelude.Type
instance ToResourceProperties CorsRuleProperty
instance JSON.ToJSON CorsRuleProperty