module Stratosphere.Cognito.UserPoolDomain.CustomDomainConfigTypeProperty (
        CustomDomainConfigTypeProperty(..),
        mkCustomDomainConfigTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomDomainConfigTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html>
    CustomDomainConfigTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html#cfn-cognito-userpooldomain-customdomainconfigtype-certificatearn>
                                    certificateArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDomainConfigTypeProperty :: CustomDomainConfigTypeProperty
mkCustomDomainConfigTypeProperty
  = CustomDomainConfigTypeProperty
      {haddock_workaround_ = (), certificateArn = Prelude.Nothing}
instance ToResourceProperties CustomDomainConfigTypeProperty where
  toResourceProperties CustomDomainConfigTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolDomain.CustomDomainConfigType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])}
instance JSON.ToJSON CustomDomainConfigTypeProperty where
  toJSON CustomDomainConfigTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))
instance Property "CertificateArn" CustomDomainConfigTypeProperty where
  type PropertyType "CertificateArn" CustomDomainConfigTypeProperty = Value Prelude.Text
  set newValue CustomDomainConfigTypeProperty {..}
    = CustomDomainConfigTypeProperty
        {certificateArn = Prelude.pure newValue, ..}