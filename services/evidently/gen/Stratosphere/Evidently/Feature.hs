module Stratosphere.Evidently.Feature (
        module Exports, Feature(..), mkFeature
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Feature.EntityOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Feature.VariationObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Feature
  = Feature {defaultVariation :: (Prelude.Maybe (Value Prelude.Text)),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             entityOverrides :: (Prelude.Maybe [EntityOverrideProperty]),
             evaluationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Value Prelude.Text),
             project :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag]),
             variations :: [VariationObjectProperty]}
mkFeature ::
  Value Prelude.Text
  -> Value Prelude.Text -> [VariationObjectProperty] -> Feature
mkFeature name project variations
  = Feature
      {name = name, project = project, variations = variations,
       defaultVariation = Prelude.Nothing, description = Prelude.Nothing,
       entityOverrides = Prelude.Nothing,
       evaluationStrategy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Feature where
  toResourceProperties Feature {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Feature",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Project" JSON..= project,
                            "Variations" JSON..= variations]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultVariation" Prelude.<$> defaultVariation,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EntityOverrides" Prelude.<$> entityOverrides,
                               (JSON..=) "EvaluationStrategy" Prelude.<$> evaluationStrategy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Feature where
  toJSON Feature {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Project" JSON..= project,
               "Variations" JSON..= variations]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultVariation" Prelude.<$> defaultVariation,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EntityOverrides" Prelude.<$> entityOverrides,
                  (JSON..=) "EvaluationStrategy" Prelude.<$> evaluationStrategy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DefaultVariation" Feature where
  type PropertyType "DefaultVariation" Feature = Value Prelude.Text
  set newValue Feature {..}
    = Feature {defaultVariation = Prelude.pure newValue, ..}
instance Property "Description" Feature where
  type PropertyType "Description" Feature = Value Prelude.Text
  set newValue Feature {..}
    = Feature {description = Prelude.pure newValue, ..}
instance Property "EntityOverrides" Feature where
  type PropertyType "EntityOverrides" Feature = [EntityOverrideProperty]
  set newValue Feature {..}
    = Feature {entityOverrides = Prelude.pure newValue, ..}
instance Property "EvaluationStrategy" Feature where
  type PropertyType "EvaluationStrategy" Feature = Value Prelude.Text
  set newValue Feature {..}
    = Feature {evaluationStrategy = Prelude.pure newValue, ..}
instance Property "Name" Feature where
  type PropertyType "Name" Feature = Value Prelude.Text
  set newValue Feature {..} = Feature {name = newValue, ..}
instance Property "Project" Feature where
  type PropertyType "Project" Feature = Value Prelude.Text
  set newValue Feature {..} = Feature {project = newValue, ..}
instance Property "Tags" Feature where
  type PropertyType "Tags" Feature = [Tag]
  set newValue Feature {..}
    = Feature {tags = Prelude.pure newValue, ..}
instance Property "Variations" Feature where
  type PropertyType "Variations" Feature = [VariationObjectProperty]
  set newValue Feature {..} = Feature {variations = newValue, ..}