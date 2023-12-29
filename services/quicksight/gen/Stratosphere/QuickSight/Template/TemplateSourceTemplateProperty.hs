module Stratosphere.QuickSight.Template.TemplateSourceTemplateProperty (
        TemplateSourceTemplateProperty(..),
        mkTemplateSourceTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateSourceTemplateProperty
  = TemplateSourceTemplateProperty {arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateSourceTemplateProperty ::
  Value Prelude.Text -> TemplateSourceTemplateProperty
mkTemplateSourceTemplateProperty arn
  = TemplateSourceTemplateProperty {arn = arn}
instance ToResourceProperties TemplateSourceTemplateProperty where
  toResourceProperties TemplateSourceTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateSourceTemplate",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON TemplateSourceTemplateProperty where
  toJSON TemplateSourceTemplateProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" TemplateSourceTemplateProperty where
  type PropertyType "Arn" TemplateSourceTemplateProperty = Value Prelude.Text
  set newValue TemplateSourceTemplateProperty {}
    = TemplateSourceTemplateProperty {arn = newValue, ..}