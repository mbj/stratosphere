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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html>
    AnalyticsConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-applicationarn>
                                    applicationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-applicationid>
                                    applicationId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-externalid>
                                    externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-rolearn>
                                    roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-userdatashared>
                                    userDataShared :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalyticsConfigurationProperty :: AnalyticsConfigurationProperty
mkAnalyticsConfigurationProperty
  = AnalyticsConfigurationProperty
      {haddock_workaround_ = (), applicationArn = Prelude.Nothing,
       applicationId = Prelude.Nothing, externalId = Prelude.Nothing,
       roleArn = Prelude.Nothing, userDataShared = Prelude.Nothing}
instance ToResourceProperties AnalyticsConfigurationProperty where
  toResourceProperties AnalyticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolClient.AnalyticsConfiguration",
         supportsTags = Prelude.False,
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