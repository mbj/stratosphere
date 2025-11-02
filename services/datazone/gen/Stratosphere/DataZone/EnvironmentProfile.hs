module Stratosphere.DataZone.EnvironmentProfile (
        module Exports, EnvironmentProfile(..), mkEnvironmentProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.EnvironmentProfile.EnvironmentParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html>
    EnvironmentProfile {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-awsaccountid>
                        awsAccountId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-awsaccountregion>
                        awsAccountRegion :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-domainidentifier>
                        domainIdentifier :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-environmentblueprintidentifier>
                        environmentBlueprintIdentifier :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-projectidentifier>
                        projectIdentifier :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-environmentprofile.html#cfn-datazone-environmentprofile-userparameters>
                        userParameters :: (Prelude.Maybe [EnvironmentParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentProfile ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Text -> EnvironmentProfile
mkEnvironmentProfile
  awsAccountId
  awsAccountRegion
  domainIdentifier
  environmentBlueprintIdentifier
  name
  projectIdentifier
  = EnvironmentProfile
      {haddock_workaround_ = (), awsAccountId = awsAccountId,
       awsAccountRegion = awsAccountRegion,
       domainIdentifier = domainIdentifier,
       environmentBlueprintIdentifier = environmentBlueprintIdentifier,
       name = name, projectIdentifier = projectIdentifier,
       description = Prelude.Nothing, userParameters = Prelude.Nothing}
instance ToResourceProperties EnvironmentProfile where
  toResourceProperties EnvironmentProfile {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsAccountId" JSON..= awsAccountId,
                            "AwsAccountRegion" JSON..= awsAccountRegion,
                            "DomainIdentifier" JSON..= domainIdentifier,
                            "EnvironmentBlueprintIdentifier"
                              JSON..= environmentBlueprintIdentifier,
                            "Name" JSON..= name, "ProjectIdentifier" JSON..= projectIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "UserParameters" Prelude.<$> userParameters]))}
instance JSON.ToJSON EnvironmentProfile where
  toJSON EnvironmentProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsAccountId" JSON..= awsAccountId,
               "AwsAccountRegion" JSON..= awsAccountRegion,
               "DomainIdentifier" JSON..= domainIdentifier,
               "EnvironmentBlueprintIdentifier"
                 JSON..= environmentBlueprintIdentifier,
               "Name" JSON..= name, "ProjectIdentifier" JSON..= projectIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "UserParameters" Prelude.<$> userParameters])))
instance Property "AwsAccountId" EnvironmentProfile where
  type PropertyType "AwsAccountId" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {awsAccountId = newValue, ..}
instance Property "AwsAccountRegion" EnvironmentProfile where
  type PropertyType "AwsAccountRegion" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {awsAccountRegion = newValue, ..}
instance Property "Description" EnvironmentProfile where
  type PropertyType "Description" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" EnvironmentProfile where
  type PropertyType "DomainIdentifier" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {domainIdentifier = newValue, ..}
instance Property "EnvironmentBlueprintIdentifier" EnvironmentProfile where
  type PropertyType "EnvironmentBlueprintIdentifier" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile
        {environmentBlueprintIdentifier = newValue, ..}
instance Property "Name" EnvironmentProfile where
  type PropertyType "Name" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {name = newValue, ..}
instance Property "ProjectIdentifier" EnvironmentProfile where
  type PropertyType "ProjectIdentifier" EnvironmentProfile = Value Prelude.Text
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {projectIdentifier = newValue, ..}
instance Property "UserParameters" EnvironmentProfile where
  type PropertyType "UserParameters" EnvironmentProfile = [EnvironmentParameterProperty]
  set newValue EnvironmentProfile {..}
    = EnvironmentProfile {userParameters = Prelude.pure newValue, ..}