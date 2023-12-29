module Stratosphere.Glue.Connection.ConnectionInputProperty (
        module Exports, ConnectionInputProperty(..),
        mkConnectionInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Connection.PhysicalConnectionRequirementsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionInputProperty
  = ConnectionInputProperty {connectionProperties :: (Prelude.Maybe JSON.Object),
                             connectionType :: (Value Prelude.Text),
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             matchCriteria :: (Prelude.Maybe (ValueList Prelude.Text)),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             physicalConnectionRequirements :: (Prelude.Maybe PhysicalConnectionRequirementsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionInputProperty ::
  Value Prelude.Text -> ConnectionInputProperty
mkConnectionInputProperty connectionType
  = ConnectionInputProperty
      {connectionType = connectionType,
       connectionProperties = Prelude.Nothing,
       description = Prelude.Nothing, matchCriteria = Prelude.Nothing,
       name = Prelude.Nothing,
       physicalConnectionRequirements = Prelude.Nothing}
instance ToResourceProperties ConnectionInputProperty where
  toResourceProperties ConnectionInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.ConnectionInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionType" JSON..= connectionType]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionProperties" Prelude.<$> connectionProperties,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MatchCriteria" Prelude.<$> matchCriteria,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PhysicalConnectionRequirements"
                                 Prelude.<$> physicalConnectionRequirements]))}
instance JSON.ToJSON ConnectionInputProperty where
  toJSON ConnectionInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionType" JSON..= connectionType]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionProperties" Prelude.<$> connectionProperties,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MatchCriteria" Prelude.<$> matchCriteria,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PhysicalConnectionRequirements"
                    Prelude.<$> physicalConnectionRequirements])))
instance Property "ConnectionProperties" ConnectionInputProperty where
  type PropertyType "ConnectionProperties" ConnectionInputProperty = JSON.Object
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {connectionProperties = Prelude.pure newValue, ..}
instance Property "ConnectionType" ConnectionInputProperty where
  type PropertyType "ConnectionType" ConnectionInputProperty = Value Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty {connectionType = newValue, ..}
instance Property "Description" ConnectionInputProperty where
  type PropertyType "Description" ConnectionInputProperty = Value Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty {description = Prelude.pure newValue, ..}
instance Property "MatchCriteria" ConnectionInputProperty where
  type PropertyType "MatchCriteria" ConnectionInputProperty = ValueList Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {matchCriteria = Prelude.pure newValue, ..}
instance Property "Name" ConnectionInputProperty where
  type PropertyType "Name" ConnectionInputProperty = Value Prelude.Text
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty {name = Prelude.pure newValue, ..}
instance Property "PhysicalConnectionRequirements" ConnectionInputProperty where
  type PropertyType "PhysicalConnectionRequirements" ConnectionInputProperty = PhysicalConnectionRequirementsProperty
  set newValue ConnectionInputProperty {..}
    = ConnectionInputProperty
        {physicalConnectionRequirements = Prelude.pure newValue, ..}