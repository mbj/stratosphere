module Stratosphere.DataZone.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Environment.EnvironmentParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Environment
  = Environment {description :: (Prelude.Maybe (Value Prelude.Text)),
                 domainIdentifier :: (Value Prelude.Text),
                 environmentProfileIdentifier :: (Value Prelude.Text),
                 glossaryTerms :: (Prelude.Maybe (ValueList Prelude.Text)),
                 name :: (Value Prelude.Text),
                 projectIdentifier :: (Value Prelude.Text),
                 userParameters :: (Prelude.Maybe [EnvironmentParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Environment
mkEnvironment
  domainIdentifier
  environmentProfileIdentifier
  name
  projectIdentifier
  = Environment
      {domainIdentifier = domainIdentifier,
       environmentProfileIdentifier = environmentProfileIdentifier,
       name = name, projectIdentifier = projectIdentifier,
       description = Prelude.Nothing, glossaryTerms = Prelude.Nothing,
       userParameters = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Environment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "EnvironmentProfileIdentifier"
                              JSON..= environmentProfileIdentifier,
                            "Name" JSON..= name, "ProjectIdentifier" JSON..= projectIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GlossaryTerms" Prelude.<$> glossaryTerms,
                               (JSON..=) "UserParameters" Prelude.<$> userParameters]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "EnvironmentProfileIdentifier"
                 JSON..= environmentProfileIdentifier,
               "Name" JSON..= name, "ProjectIdentifier" JSON..= projectIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GlossaryTerms" Prelude.<$> glossaryTerms,
                  (JSON..=) "UserParameters" Prelude.<$> userParameters])))
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" Environment where
  type PropertyType "DomainIdentifier" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {domainIdentifier = newValue, ..}
instance Property "EnvironmentProfileIdentifier" Environment where
  type PropertyType "EnvironmentProfileIdentifier" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {environmentProfileIdentifier = newValue, ..}
instance Property "GlossaryTerms" Environment where
  type PropertyType "GlossaryTerms" Environment = ValueList Prelude.Text
  set newValue Environment {..}
    = Environment {glossaryTerms = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "ProjectIdentifier" Environment where
  type PropertyType "ProjectIdentifier" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {projectIdentifier = newValue, ..}
instance Property "UserParameters" Environment where
  type PropertyType "UserParameters" Environment = [EnvironmentParameterProperty]
  set newValue Environment {..}
    = Environment {userParameters = Prelude.pure newValue, ..}