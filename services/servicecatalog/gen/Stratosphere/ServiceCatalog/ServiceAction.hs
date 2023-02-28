module Stratosphere.ServiceCatalog.ServiceAction (
        module Exports, ServiceAction(..), mkServiceAction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceCatalog.ServiceAction.DefinitionParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceAction
  = ServiceAction {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                   definition :: [DefinitionParameterProperty],
                   definitionType :: (Value Prelude.Text),
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Value Prelude.Text)}
mkServiceAction ::
  [DefinitionParameterProperty]
  -> Value Prelude.Text -> Value Prelude.Text -> ServiceAction
mkServiceAction definition definitionType name
  = ServiceAction
      {definition = definition, definitionType = definitionType,
       name = name, acceptLanguage = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties ServiceAction where
  toResourceProperties ServiceAction {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::ServiceAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Definition" JSON..= definition,
                            "DefinitionType" JSON..= definitionType, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ServiceAction where
  toJSON ServiceAction {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Definition" JSON..= definition,
               "DefinitionType" JSON..= definitionType, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AcceptLanguage" ServiceAction where
  type PropertyType "AcceptLanguage" ServiceAction = Value Prelude.Text
  set newValue ServiceAction {..}
    = ServiceAction {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Definition" ServiceAction where
  type PropertyType "Definition" ServiceAction = [DefinitionParameterProperty]
  set newValue ServiceAction {..}
    = ServiceAction {definition = newValue, ..}
instance Property "DefinitionType" ServiceAction where
  type PropertyType "DefinitionType" ServiceAction = Value Prelude.Text
  set newValue ServiceAction {..}
    = ServiceAction {definitionType = newValue, ..}
instance Property "Description" ServiceAction where
  type PropertyType "Description" ServiceAction = Value Prelude.Text
  set newValue ServiceAction {..}
    = ServiceAction {description = Prelude.pure newValue, ..}
instance Property "Name" ServiceAction where
  type PropertyType "Name" ServiceAction = Value Prelude.Text
  set newValue ServiceAction {..}
    = ServiceAction {name = newValue, ..}