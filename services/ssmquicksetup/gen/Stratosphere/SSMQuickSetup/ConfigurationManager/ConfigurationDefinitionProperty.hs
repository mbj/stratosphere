module Stratosphere.SSMQuickSetup.ConfigurationManager.ConfigurationDefinitionProperty (
        ConfigurationDefinitionProperty(..),
        mkConfigurationDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationDefinitionProperty
  = ConfigurationDefinitionProperty {localDeploymentAdministrationRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     localDeploymentExecutionRoleName :: (Prelude.Maybe (Value Prelude.Text)),
                                     parameters :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                                     type' :: (Value Prelude.Text),
                                     typeVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                     id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationDefinitionProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> ConfigurationDefinitionProperty
mkConfigurationDefinitionProperty parameters type'
  = ConfigurationDefinitionProperty
      {parameters = parameters, type' = type',
       localDeploymentAdministrationRoleArn = Prelude.Nothing,
       localDeploymentExecutionRoleName = Prelude.Nothing,
       typeVersion = Prelude.Nothing, id = Prelude.Nothing}
instance ToResourceProperties ConfigurationDefinitionProperty where
  toResourceProperties ConfigurationDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMQuickSetup::ConfigurationManager.ConfigurationDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Parameters" JSON..= parameters, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "LocalDeploymentAdministrationRoleArn"
                                 Prelude.<$> localDeploymentAdministrationRoleArn,
                               (JSON..=) "LocalDeploymentExecutionRoleName"
                                 Prelude.<$> localDeploymentExecutionRoleName,
                               (JSON..=) "TypeVersion" Prelude.<$> typeVersion,
                               (JSON..=) "id" Prelude.<$> id]))}
instance JSON.ToJSON ConfigurationDefinitionProperty where
  toJSON ConfigurationDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Parameters" JSON..= parameters, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "LocalDeploymentAdministrationRoleArn"
                    Prelude.<$> localDeploymentAdministrationRoleArn,
                  (JSON..=) "LocalDeploymentExecutionRoleName"
                    Prelude.<$> localDeploymentExecutionRoleName,
                  (JSON..=) "TypeVersion" Prelude.<$> typeVersion,
                  (JSON..=) "id" Prelude.<$> id])))
instance Property "LocalDeploymentAdministrationRoleArn" ConfigurationDefinitionProperty where
  type PropertyType "LocalDeploymentAdministrationRoleArn" ConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ConfigurationDefinitionProperty {..}
    = ConfigurationDefinitionProperty
        {localDeploymentAdministrationRoleArn = Prelude.pure newValue, ..}
instance Property "LocalDeploymentExecutionRoleName" ConfigurationDefinitionProperty where
  type PropertyType "LocalDeploymentExecutionRoleName" ConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ConfigurationDefinitionProperty {..}
    = ConfigurationDefinitionProperty
        {localDeploymentExecutionRoleName = Prelude.pure newValue, ..}
instance Property "Parameters" ConfigurationDefinitionProperty where
  type PropertyType "Parameters" ConfigurationDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ConfigurationDefinitionProperty {..}
    = ConfigurationDefinitionProperty {parameters = newValue, ..}
instance Property "Type" ConfigurationDefinitionProperty where
  type PropertyType "Type" ConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ConfigurationDefinitionProperty {..}
    = ConfigurationDefinitionProperty {type' = newValue, ..}
instance Property "TypeVersion" ConfigurationDefinitionProperty where
  type PropertyType "TypeVersion" ConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ConfigurationDefinitionProperty {..}
    = ConfigurationDefinitionProperty
        {typeVersion = Prelude.pure newValue, ..}
instance Property "id" ConfigurationDefinitionProperty where
  type PropertyType "id" ConfigurationDefinitionProperty = Value Prelude.Text
  set newValue ConfigurationDefinitionProperty {..}
    = ConfigurationDefinitionProperty {id = Prelude.pure newValue, ..}