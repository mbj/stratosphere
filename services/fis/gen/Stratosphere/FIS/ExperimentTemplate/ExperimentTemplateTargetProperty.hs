module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateTargetProperty (
        module Exports, ExperimentTemplateTargetProperty(..),
        mkExperimentTemplateTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateTargetFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateTargetProperty
  = ExperimentTemplateTargetProperty {filters :: (Prelude.Maybe [ExperimentTemplateTargetFilterProperty]),
                                      parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      resourceArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      resourceTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      resourceType :: (Value Prelude.Text),
                                      selectionMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateTargetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ExperimentTemplateTargetProperty
mkExperimentTemplateTargetProperty resourceType selectionMode
  = ExperimentTemplateTargetProperty
      {resourceType = resourceType, selectionMode = selectionMode,
       filters = Prelude.Nothing, parameters = Prelude.Nothing,
       resourceArns = Prelude.Nothing, resourceTags = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateTargetProperty where
  toResourceProperties ExperimentTemplateTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceType" JSON..= resourceType,
                            "SelectionMode" JSON..= selectionMode]
                           (Prelude.catMaybes
                              [(JSON..=) "Filters" Prelude.<$> filters,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags]))}
instance JSON.ToJSON ExperimentTemplateTargetProperty where
  toJSON ExperimentTemplateTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceType" JSON..= resourceType,
               "SelectionMode" JSON..= selectionMode]
              (Prelude.catMaybes
                 [(JSON..=) "Filters" Prelude.<$> filters,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "ResourceArns" Prelude.<$> resourceArns,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags])))
instance Property "Filters" ExperimentTemplateTargetProperty where
  type PropertyType "Filters" ExperimentTemplateTargetProperty = [ExperimentTemplateTargetFilterProperty]
  set newValue ExperimentTemplateTargetProperty {..}
    = ExperimentTemplateTargetProperty
        {filters = Prelude.pure newValue, ..}
instance Property "Parameters" ExperimentTemplateTargetProperty where
  type PropertyType "Parameters" ExperimentTemplateTargetProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplateTargetProperty {..}
    = ExperimentTemplateTargetProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "ResourceArns" ExperimentTemplateTargetProperty where
  type PropertyType "ResourceArns" ExperimentTemplateTargetProperty = ValueList Prelude.Text
  set newValue ExperimentTemplateTargetProperty {..}
    = ExperimentTemplateTargetProperty
        {resourceArns = Prelude.pure newValue, ..}
instance Property "ResourceTags" ExperimentTemplateTargetProperty where
  type PropertyType "ResourceTags" ExperimentTemplateTargetProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplateTargetProperty {..}
    = ExperimentTemplateTargetProperty
        {resourceTags = Prelude.pure newValue, ..}
instance Property "ResourceType" ExperimentTemplateTargetProperty where
  type PropertyType "ResourceType" ExperimentTemplateTargetProperty = Value Prelude.Text
  set newValue ExperimentTemplateTargetProperty {..}
    = ExperimentTemplateTargetProperty {resourceType = newValue, ..}
instance Property "SelectionMode" ExperimentTemplateTargetProperty where
  type PropertyType "SelectionMode" ExperimentTemplateTargetProperty = Value Prelude.Text
  set newValue ExperimentTemplateTargetProperty {..}
    = ExperimentTemplateTargetProperty {selectionMode = newValue, ..}