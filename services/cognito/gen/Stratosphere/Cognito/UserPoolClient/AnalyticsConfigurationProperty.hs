module Stratosphere.Cognito.UserPoolClient.AnalyticsConfigurationProperty (
        AnalyticsConfigurationProperty(..),
        mkAnalyticsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalyticsConfigurationProperty
  = AnalyticsConfigurationProperty {applicationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    applicationId :: (Prelude.Maybe (Value Prelude.Text)),
                                    externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                    roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    userDataShared :: (Prelude.Maybe (Value Prelude.Bool))}
mkAnalyticsConfigurationProperty :: AnalyticsConfigurationProperty
mkAnalyticsConfigurationProperty
  = AnalyticsConfigurationProperty
      {applicationArn = Prelude.Nothing, applicationId = Prelude.Nothing,
       externalId = Prelude.Nothing, roleArn = Prelude.Nothing,
       userDataShared = Prelude.Nothing}
instance ToResourceProperties AnalyticsConfigurationProperty where
  toResourceProperties AnalyticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolClient.AnalyticsConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
                            (JSON..=) "ApplicationId" Prelude.<$> applicationId,
                            (JSON..=) "ExternalId" Prelude.<$> externalId,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "UserDataShared" Prelude.<$> userDataShared])}
instance JSON.ToJSON AnalyticsConfigurationProperty where
  toJSON AnalyticsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
               (JSON..=) "ApplicationId" Prelude.<$> applicationId,
               (JSON..=) "ExternalId" Prelude.<$> externalId,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "UserDataShared" Prelude.<$> userDataShared]))
instance Property "ApplicationArn" AnalyticsConfigurationProperty where
  type PropertyType "ApplicationArn" AnalyticsConfigurationProperty = Value Prelude.Text
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {applicationArn = Prelude.pure newValue, ..}
instance Property "ApplicationId" AnalyticsConfigurationProperty where
  type PropertyType "ApplicationId" AnalyticsConfigurationProperty = Value Prelude.Text
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {applicationId = Prelude.pure newValue, ..}
instance Property "ExternalId" AnalyticsConfigurationProperty where
  type PropertyType "ExternalId" AnalyticsConfigurationProperty = Value Prelude.Text
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "RoleArn" AnalyticsConfigurationProperty where
  type PropertyType "RoleArn" AnalyticsConfigurationProperty = Value Prelude.Text
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {roleArn = Prelude.pure newValue, ..}
instance Property "UserDataShared" AnalyticsConfigurationProperty where
  type PropertyType "UserDataShared" AnalyticsConfigurationProperty = Value Prelude.Bool
  set newValue AnalyticsConfigurationProperty {..}
    = AnalyticsConfigurationProperty
        {userDataShared = Prelude.pure newValue, ..}