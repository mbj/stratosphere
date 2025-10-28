module Stratosphere.EMR.Studio (
        Studio(..), mkStudio
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Studio
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html>
    Studio {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-authmode>
            authMode :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-defaults3location>
            defaultS3Location :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-encryptionkeyarn>
            encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-enginesecuritygroupid>
            engineSecurityGroupId :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-idcinstancearn>
            idcInstanceArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-idcuserassignment>
            idcUserAssignment :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-idpauthurl>
            idpAuthUrl :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-idprelaystateparametername>
            idpRelayStateParameterName :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-name>
            name :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-servicerole>
            serviceRole :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-subnetids>
            subnetIds :: (ValueList Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-trustedidentitypropagationenabled>
            trustedIdentityPropagationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-userrole>
            userRole :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-vpcid>
            vpcId :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-studio.html#cfn-emr-studio-workspacesecuritygroupid>
            workspaceSecurityGroupId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudio ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> ValueList Prelude.Text
                 -> Value Prelude.Text -> Value Prelude.Text -> Studio
mkStudio
  authMode
  defaultS3Location
  engineSecurityGroupId
  name
  serviceRole
  subnetIds
  vpcId
  workspaceSecurityGroupId
  = Studio
      {authMode = authMode, defaultS3Location = defaultS3Location,
       engineSecurityGroupId = engineSecurityGroupId, name = name,
       serviceRole = serviceRole, subnetIds = subnetIds, vpcId = vpcId,
       workspaceSecurityGroupId = workspaceSecurityGroupId,
       description = Prelude.Nothing, encryptionKeyArn = Prelude.Nothing,
       idcInstanceArn = Prelude.Nothing,
       idcUserAssignment = Prelude.Nothing, idpAuthUrl = Prelude.Nothing,
       idpRelayStateParameterName = Prelude.Nothing,
       tags = Prelude.Nothing,
       trustedIdentityPropagationEnabled = Prelude.Nothing,
       userRole = Prelude.Nothing}
instance ToResourceProperties Studio where
  toResourceProperties Studio {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Studio", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthMode" JSON..= authMode,
                            "DefaultS3Location" JSON..= defaultS3Location,
                            "EngineSecurityGroupId" JSON..= engineSecurityGroupId,
                            "Name" JSON..= name, "ServiceRole" JSON..= serviceRole,
                            "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId,
                            "WorkspaceSecurityGroupId" JSON..= workspaceSecurityGroupId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                               (JSON..=) "IdcInstanceArn" Prelude.<$> idcInstanceArn,
                               (JSON..=) "IdcUserAssignment" Prelude.<$> idcUserAssignment,
                               (JSON..=) "IdpAuthUrl" Prelude.<$> idpAuthUrl,
                               (JSON..=) "IdpRelayStateParameterName"
                                 Prelude.<$> idpRelayStateParameterName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrustedIdentityPropagationEnabled"
                                 Prelude.<$> trustedIdentityPropagationEnabled,
                               (JSON..=) "UserRole" Prelude.<$> userRole]))}
instance JSON.ToJSON Studio where
  toJSON Studio {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthMode" JSON..= authMode,
               "DefaultS3Location" JSON..= defaultS3Location,
               "EngineSecurityGroupId" JSON..= engineSecurityGroupId,
               "Name" JSON..= name, "ServiceRole" JSON..= serviceRole,
               "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId,
               "WorkspaceSecurityGroupId" JSON..= workspaceSecurityGroupId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                  (JSON..=) "IdcInstanceArn" Prelude.<$> idcInstanceArn,
                  (JSON..=) "IdcUserAssignment" Prelude.<$> idcUserAssignment,
                  (JSON..=) "IdpAuthUrl" Prelude.<$> idpAuthUrl,
                  (JSON..=) "IdpRelayStateParameterName"
                    Prelude.<$> idpRelayStateParameterName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrustedIdentityPropagationEnabled"
                    Prelude.<$> trustedIdentityPropagationEnabled,
                  (JSON..=) "UserRole" Prelude.<$> userRole])))
instance Property "AuthMode" Studio where
  type PropertyType "AuthMode" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {authMode = newValue, ..}
instance Property "DefaultS3Location" Studio where
  type PropertyType "DefaultS3Location" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {defaultS3Location = newValue, ..}
instance Property "Description" Studio where
  type PropertyType "Description" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {description = Prelude.pure newValue, ..}
instance Property "EncryptionKeyArn" Studio where
  type PropertyType "EncryptionKeyArn" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "EngineSecurityGroupId" Studio where
  type PropertyType "EngineSecurityGroupId" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {engineSecurityGroupId = newValue, ..}
instance Property "IdcInstanceArn" Studio where
  type PropertyType "IdcInstanceArn" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {idcInstanceArn = Prelude.pure newValue, ..}
instance Property "IdcUserAssignment" Studio where
  type PropertyType "IdcUserAssignment" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {idcUserAssignment = Prelude.pure newValue, ..}
instance Property "IdpAuthUrl" Studio where
  type PropertyType "IdpAuthUrl" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {idpAuthUrl = Prelude.pure newValue, ..}
instance Property "IdpRelayStateParameterName" Studio where
  type PropertyType "IdpRelayStateParameterName" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {idpRelayStateParameterName = Prelude.pure newValue, ..}
instance Property "Name" Studio where
  type PropertyType "Name" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {name = newValue, ..}
instance Property "ServiceRole" Studio where
  type PropertyType "ServiceRole" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {serviceRole = newValue, ..}
instance Property "SubnetIds" Studio where
  type PropertyType "SubnetIds" Studio = ValueList Prelude.Text
  set newValue Studio {..} = Studio {subnetIds = newValue, ..}
instance Property "Tags" Studio where
  type PropertyType "Tags" Studio = [Tag]
  set newValue Studio {..}
    = Studio {tags = Prelude.pure newValue, ..}
instance Property "TrustedIdentityPropagationEnabled" Studio where
  type PropertyType "TrustedIdentityPropagationEnabled" Studio = Value Prelude.Bool
  set newValue Studio {..}
    = Studio
        {trustedIdentityPropagationEnabled = Prelude.pure newValue, ..}
instance Property "UserRole" Studio where
  type PropertyType "UserRole" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {userRole = Prelude.pure newValue, ..}
instance Property "VpcId" Studio where
  type PropertyType "VpcId" Studio = Value Prelude.Text
  set newValue Studio {..} = Studio {vpcId = newValue, ..}
instance Property "WorkspaceSecurityGroupId" Studio where
  type PropertyType "WorkspaceSecurityGroupId" Studio = Value Prelude.Text
  set newValue Studio {..}
    = Studio {workspaceSecurityGroupId = newValue, ..}