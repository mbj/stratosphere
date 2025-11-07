module Stratosphere.DataZone.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Project.EnvironmentConfigurationUserParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Project
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html>
    Project {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-domainidentifier>
             domainIdentifier :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-domainunitid>
             domainUnitId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-glossaryterms>
             glossaryTerms :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-projectprofileid>
             projectProfileId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-projectprofileversion>
             projectProfileVersion :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-project.html#cfn-datazone-project-userparameters>
             userParameters :: (Prelude.Maybe [EnvironmentConfigurationUserParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject :: Value Prelude.Text -> Value Prelude.Text -> Project
mkProject domainIdentifier name
  = Project
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       name = name, description = Prelude.Nothing,
       domainUnitId = Prelude.Nothing, glossaryTerms = Prelude.Nothing,
       projectProfileId = Prelude.Nothing,
       projectProfileVersion = Prelude.Nothing,
       userParameters = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Project", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DomainUnitId" Prelude.<$> domainUnitId,
                               (JSON..=) "GlossaryTerms" Prelude.<$> glossaryTerms,
                               (JSON..=) "ProjectProfileId" Prelude.<$> projectProfileId,
                               (JSON..=) "ProjectProfileVersion"
                                 Prelude.<$> projectProfileVersion,
                               (JSON..=) "UserParameters" Prelude.<$> userParameters]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DomainUnitId" Prelude.<$> domainUnitId,
                  (JSON..=) "GlossaryTerms" Prelude.<$> glossaryTerms,
                  (JSON..=) "ProjectProfileId" Prelude.<$> projectProfileId,
                  (JSON..=) "ProjectProfileVersion"
                    Prelude.<$> projectProfileVersion,
                  (JSON..=) "UserParameters" Prelude.<$> userParameters])))
instance Property "Description" Project where
  type PropertyType "Description" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" Project where
  type PropertyType "DomainIdentifier" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {domainIdentifier = newValue, ..}
instance Property "DomainUnitId" Project where
  type PropertyType "DomainUnitId" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {domainUnitId = Prelude.pure newValue, ..}
instance Property "GlossaryTerms" Project where
  type PropertyType "GlossaryTerms" Project = ValueList Prelude.Text
  set newValue Project {..}
    = Project {glossaryTerms = Prelude.pure newValue, ..}
instance Property "Name" Project where
  type PropertyType "Name" Project = Value Prelude.Text
  set newValue Project {..} = Project {name = newValue, ..}
instance Property "ProjectProfileId" Project where
  type PropertyType "ProjectProfileId" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {projectProfileId = Prelude.pure newValue, ..}
instance Property "ProjectProfileVersion" Project where
  type PropertyType "ProjectProfileVersion" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {projectProfileVersion = Prelude.pure newValue, ..}
instance Property "UserParameters" Project where
  type PropertyType "UserParameters" Project = [EnvironmentConfigurationUserParameterProperty]
  set newValue Project {..}
    = Project {userParameters = Prelude.pure newValue, ..}