module Stratosphere.DataZone.ProjectProfile (
        module Exports, ProjectProfile(..), mkProjectProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.ProjectProfile.EnvironmentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html>
    ProjectProfile {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html#cfn-datazone-projectprofile-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html#cfn-datazone-projectprofile-domainidentifier>
                    domainIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html#cfn-datazone-projectprofile-domainunitidentifier>
                    domainUnitIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html#cfn-datazone-projectprofile-environmentconfigurations>
                    environmentConfigurations :: (Prelude.Maybe [EnvironmentConfigurationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html#cfn-datazone-projectprofile-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectprofile.html#cfn-datazone-projectprofile-status>
                    status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectProfile :: Value Prelude.Text -> ProjectProfile
mkProjectProfile name
  = ProjectProfile
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, domainIdentifier = Prelude.Nothing,
       domainUnitIdentifier = Prelude.Nothing,
       environmentConfigurations = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties ProjectProfile where
  toResourceProperties ProjectProfile {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DomainIdentifier" Prelude.<$> domainIdentifier,
                               (JSON..=) "DomainUnitIdentifier" Prelude.<$> domainUnitIdentifier,
                               (JSON..=) "EnvironmentConfigurations"
                                 Prelude.<$> environmentConfigurations,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON ProjectProfile where
  toJSON ProjectProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DomainIdentifier" Prelude.<$> domainIdentifier,
                  (JSON..=) "DomainUnitIdentifier" Prelude.<$> domainUnitIdentifier,
                  (JSON..=) "EnvironmentConfigurations"
                    Prelude.<$> environmentConfigurations,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Description" ProjectProfile where
  type PropertyType "Description" ProjectProfile = Value Prelude.Text
  set newValue ProjectProfile {..}
    = ProjectProfile {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" ProjectProfile where
  type PropertyType "DomainIdentifier" ProjectProfile = Value Prelude.Text
  set newValue ProjectProfile {..}
    = ProjectProfile {domainIdentifier = Prelude.pure newValue, ..}
instance Property "DomainUnitIdentifier" ProjectProfile where
  type PropertyType "DomainUnitIdentifier" ProjectProfile = Value Prelude.Text
  set newValue ProjectProfile {..}
    = ProjectProfile {domainUnitIdentifier = Prelude.pure newValue, ..}
instance Property "EnvironmentConfigurations" ProjectProfile where
  type PropertyType "EnvironmentConfigurations" ProjectProfile = [EnvironmentConfigurationProperty]
  set newValue ProjectProfile {..}
    = ProjectProfile
        {environmentConfigurations = Prelude.pure newValue, ..}
instance Property "Name" ProjectProfile where
  type PropertyType "Name" ProjectProfile = Value Prelude.Text
  set newValue ProjectProfile {..}
    = ProjectProfile {name = newValue, ..}
instance Property "Status" ProjectProfile where
  type PropertyType "Status" ProjectProfile = Value Prelude.Text
  set newValue ProjectProfile {..}
    = ProjectProfile {status = Prelude.pure newValue, ..}