module Stratosphere.AmplifyUIBuilder.Component.ActionParametersProperty (
        module Exports, ActionParametersProperty(..),
        mkActionParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.MutationActionSetStateParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionParametersProperty
  = ActionParametersProperty {anchor :: (Prelude.Maybe ComponentPropertyProperty),
                              fields :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentPropertyProperty)),
                              global :: (Prelude.Maybe ComponentPropertyProperty),
                              id :: (Prelude.Maybe ComponentPropertyProperty),
                              model :: (Prelude.Maybe (Value Prelude.Text)),
                              state :: (Prelude.Maybe MutationActionSetStateParameterProperty),
                              target :: (Prelude.Maybe ComponentPropertyProperty),
                              type' :: (Prelude.Maybe ComponentPropertyProperty),
                              url :: (Prelude.Maybe ComponentPropertyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionParametersProperty :: ActionParametersProperty
mkActionParametersProperty
  = ActionParametersProperty
      {anchor = Prelude.Nothing, fields = Prelude.Nothing,
       global = Prelude.Nothing, id = Prelude.Nothing,
       model = Prelude.Nothing, state = Prelude.Nothing,
       target = Prelude.Nothing, type' = Prelude.Nothing,
       url = Prelude.Nothing}
instance ToResourceProperties ActionParametersProperty where
  toResourceProperties ActionParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ActionParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Anchor" Prelude.<$> anchor,
                            (JSON..=) "Fields" Prelude.<$> fields,
                            (JSON..=) "Global" Prelude.<$> global,
                            (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Model" Prelude.<$> model,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Target" Prelude.<$> target,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON ActionParametersProperty where
  toJSON ActionParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Anchor" Prelude.<$> anchor,
               (JSON..=) "Fields" Prelude.<$> fields,
               (JSON..=) "Global" Prelude.<$> global,
               (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Model" Prelude.<$> model,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Target" Prelude.<$> target,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "Anchor" ActionParametersProperty where
  type PropertyType "Anchor" ActionParametersProperty = ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {anchor = Prelude.pure newValue, ..}
instance Property "Fields" ActionParametersProperty where
  type PropertyType "Fields" ActionParametersProperty = Prelude.Map Prelude.Text ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {fields = Prelude.pure newValue, ..}
instance Property "Global" ActionParametersProperty where
  type PropertyType "Global" ActionParametersProperty = ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {global = Prelude.pure newValue, ..}
instance Property "Id" ActionParametersProperty where
  type PropertyType "Id" ActionParametersProperty = ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {id = Prelude.pure newValue, ..}
instance Property "Model" ActionParametersProperty where
  type PropertyType "Model" ActionParametersProperty = Value Prelude.Text
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {model = Prelude.pure newValue, ..}
instance Property "State" ActionParametersProperty where
  type PropertyType "State" ActionParametersProperty = MutationActionSetStateParameterProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {state = Prelude.pure newValue, ..}
instance Property "Target" ActionParametersProperty where
  type PropertyType "Target" ActionParametersProperty = ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {target = Prelude.pure newValue, ..}
instance Property "Type" ActionParametersProperty where
  type PropertyType "Type" ActionParametersProperty = ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {type' = Prelude.pure newValue, ..}
instance Property "Url" ActionParametersProperty where
  type PropertyType "Url" ActionParametersProperty = ComponentPropertyProperty
  set newValue ActionParametersProperty {..}
    = ActionParametersProperty {url = Prelude.pure newValue, ..}