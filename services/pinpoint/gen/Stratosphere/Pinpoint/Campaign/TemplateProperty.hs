module Stratosphere.Pinpoint.Campaign.TemplateProperty (
        TemplateProperty(..), mkTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateProperty
  = TemplateProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                      version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateProperty :: TemplateProperty
mkTemplateProperty
  = TemplateProperty
      {name = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties TemplateProperty where
  toResourceProperties TemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.Template",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON TemplateProperty where
  toJSON TemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Name" TemplateProperty where
  type PropertyType "Name" TemplateProperty = Value Prelude.Text
  set newValue TemplateProperty {..}
    = TemplateProperty {name = Prelude.pure newValue, ..}
instance Property "Version" TemplateProperty where
  type PropertyType "Version" TemplateProperty = Value Prelude.Text
  set newValue TemplateProperty {..}
    = TemplateProperty {version = Prelude.pure newValue, ..}