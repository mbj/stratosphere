module Stratosphere.SES.Template.TemplateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TemplateProperty :: Prelude.Type
instance ToResourceProperties TemplateProperty
instance Prelude.Eq TemplateProperty
instance Prelude.Show TemplateProperty
instance JSON.ToJSON TemplateProperty