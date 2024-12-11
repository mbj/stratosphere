module Stratosphere.DataZone.EnvironmentActions (
        module Exports, EnvironmentActions(..), mkEnvironmentActions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.EnvironmentActions.AwsConsoleLinkParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentActions
  = EnvironmentActions {description :: (Prelude.Maybe (Value Prelude.Text)),
                        domainIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                        environmentIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                        identifier :: (Prelude.Maybe (Value Prelude.Text)),
                        name :: (Value Prelude.Text),
                        parameters :: (Prelude.Maybe AwsConsoleLinkParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentActions :: Value Prelude.Text -> EnvironmentActions
mkEnvironmentActions name
  = EnvironmentActions
      {name = name, description = Prelude.Nothing,
       domainIdentifier = Prelude.Nothing,
       environmentIdentifier = Prelude.Nothing,
       identifier = Prelude.Nothing, parameters = Prelude.Nothing}
instance ToResourceProperties EnvironmentActions where
  toResourceProperties EnvironmentActions {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentActions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DomainIdentifier" Prelude.<$> domainIdentifier,
                               (JSON..=) "EnvironmentIdentifier"
                                 Prelude.<$> environmentIdentifier,
                               (JSON..=) "Identifier" Prelude.<$> identifier,
                               (JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON EnvironmentActions where
  toJSON EnvironmentActions {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DomainIdentifier" Prelude.<$> domainIdentifier,
                  (JSON..=) "EnvironmentIdentifier"
                    Prelude.<$> environmentIdentifier,
                  (JSON..=) "Identifier" Prelude.<$> identifier,
                  (JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "Description" EnvironmentActions where
  type PropertyType "Description" EnvironmentActions = Value Prelude.Text
  set newValue EnvironmentActions {..}
    = EnvironmentActions {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" EnvironmentActions where
  type PropertyType "DomainIdentifier" EnvironmentActions = Value Prelude.Text
  set newValue EnvironmentActions {..}
    = EnvironmentActions {domainIdentifier = Prelude.pure newValue, ..}
instance Property "EnvironmentIdentifier" EnvironmentActions where
  type PropertyType "EnvironmentIdentifier" EnvironmentActions = Value Prelude.Text
  set newValue EnvironmentActions {..}
    = EnvironmentActions
        {environmentIdentifier = Prelude.pure newValue, ..}
instance Property "Identifier" EnvironmentActions where
  type PropertyType "Identifier" EnvironmentActions = Value Prelude.Text
  set newValue EnvironmentActions {..}
    = EnvironmentActions {identifier = Prelude.pure newValue, ..}
instance Property "Name" EnvironmentActions where
  type PropertyType "Name" EnvironmentActions = Value Prelude.Text
  set newValue EnvironmentActions {..}
    = EnvironmentActions {name = newValue, ..}
instance Property "Parameters" EnvironmentActions where
  type PropertyType "Parameters" EnvironmentActions = AwsConsoleLinkParametersProperty
  set newValue EnvironmentActions {..}
    = EnvironmentActions {parameters = Prelude.pure newValue, ..}