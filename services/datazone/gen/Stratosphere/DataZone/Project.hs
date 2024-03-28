module Stratosphere.DataZone.Project (
        Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Project
  = Project {description :: (Prelude.Maybe (Value Prelude.Text)),
             domainIdentifier :: (Value Prelude.Text),
             glossaryTerms :: (Prelude.Maybe (ValueList Prelude.Text)),
             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: Value Prelude.Text -> Value Prelude.Text -> Project
mkProject domainIdentifier name
  = Project
      {domainIdentifier = domainIdentifier, name = name,
       description = Prelude.Nothing, glossaryTerms = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Project", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GlossaryTerms" Prelude.<$> glossaryTerms]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GlossaryTerms" Prelude.<$> glossaryTerms])))
instance Property "Description" Project where
  type PropertyType "Description" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" Project where
  type PropertyType "DomainIdentifier" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {domainIdentifier = newValue, ..}
instance Property "GlossaryTerms" Project where
  type PropertyType "GlossaryTerms" Project = ValueList Prelude.Text
  set newValue Project {..}
    = Project {glossaryTerms = Prelude.pure newValue, ..}
instance Property "Name" Project where
  type PropertyType "Name" Project = Value Prelude.Text
  set newValue Project {..} = Project {name = newValue, ..}