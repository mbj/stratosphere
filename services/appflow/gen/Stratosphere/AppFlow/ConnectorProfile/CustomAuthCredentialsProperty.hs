module Stratosphere.AppFlow.ConnectorProfile.CustomAuthCredentialsProperty (
        CustomAuthCredentialsProperty(..), mkCustomAuthCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomAuthCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customauthcredentials.html>
    CustomAuthCredentialsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customauthcredentials.html#cfn-appflow-connectorprofile-customauthcredentials-credentialsmap>
                                   credentialsMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customauthcredentials.html#cfn-appflow-connectorprofile-customauthcredentials-customauthenticationtype>
                                   customAuthenticationType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomAuthCredentialsProperty ::
  Value Prelude.Text -> CustomAuthCredentialsProperty
mkCustomAuthCredentialsProperty customAuthenticationType
  = CustomAuthCredentialsProperty
      {haddock_workaround_ = (),
       customAuthenticationType = customAuthenticationType,
       credentialsMap = Prelude.Nothing}
instance ToResourceProperties CustomAuthCredentialsProperty where
  toResourceProperties CustomAuthCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.CustomAuthCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CustomAuthenticationType" JSON..= customAuthenticationType]
                           (Prelude.catMaybes
                              [(JSON..=) "CredentialsMap" Prelude.<$> credentialsMap]))}
instance JSON.ToJSON CustomAuthCredentialsProperty where
  toJSON CustomAuthCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CustomAuthenticationType" JSON..= customAuthenticationType]
              (Prelude.catMaybes
                 [(JSON..=) "CredentialsMap" Prelude.<$> credentialsMap])))
instance Property "CredentialsMap" CustomAuthCredentialsProperty where
  type PropertyType "CredentialsMap" CustomAuthCredentialsProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomAuthCredentialsProperty {..}
    = CustomAuthCredentialsProperty
        {credentialsMap = Prelude.pure newValue, ..}
instance Property "CustomAuthenticationType" CustomAuthCredentialsProperty where
  type PropertyType "CustomAuthenticationType" CustomAuthCredentialsProperty = Value Prelude.Text
  set newValue CustomAuthCredentialsProperty {..}
    = CustomAuthCredentialsProperty
        {customAuthenticationType = newValue, ..}