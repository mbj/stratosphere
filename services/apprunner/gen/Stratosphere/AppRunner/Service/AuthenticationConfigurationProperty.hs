module Stratosphere.AppRunner.Service.AuthenticationConfigurationProperty (
        AuthenticationConfigurationProperty(..),
        mkAuthenticationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-authenticationconfiguration.html>
    AuthenticationConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-authenticationconfiguration.html#cfn-apprunner-service-authenticationconfiguration-accessrolearn>
                                         accessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-authenticationconfiguration.html#cfn-apprunner-service-authenticationconfiguration-connectionarn>
                                         connectionArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticationConfigurationProperty ::
  AuthenticationConfigurationProperty
mkAuthenticationConfigurationProperty
  = AuthenticationConfigurationProperty
      {accessRoleArn = Prelude.Nothing, connectionArn = Prelude.Nothing}
instance ToResourceProperties AuthenticationConfigurationProperty where
  toResourceProperties AuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.AuthenticationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessRoleArn" Prelude.<$> accessRoleArn,
                            (JSON..=) "ConnectionArn" Prelude.<$> connectionArn])}
instance JSON.ToJSON AuthenticationConfigurationProperty where
  toJSON AuthenticationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessRoleArn" Prelude.<$> accessRoleArn,
               (JSON..=) "ConnectionArn" Prelude.<$> connectionArn]))
instance Property "AccessRoleArn" AuthenticationConfigurationProperty where
  type PropertyType "AccessRoleArn" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty
        {accessRoleArn = Prelude.pure newValue, ..}
instance Property "ConnectionArn" AuthenticationConfigurationProperty where
  type PropertyType "ConnectionArn" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty
        {connectionArn = Prelude.pure newValue, ..}