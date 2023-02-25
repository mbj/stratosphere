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
  = CustomDomainConfigTypeProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomDomainConfigTypeProperty :: CustomDomainConfigTypeProperty
mkCustomDomainConfigTypeProperty
  = CustomDomainConfigTypeProperty {certificateArn = Prelude.Nothing}
instance ToResourceProperties CustomDomainConfigTypeProperty where
  toResourceProperties CustomDomainConfigTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolDomain.CustomDomainConfigType",
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
  set newValue CustomDomainConfigTypeProperty {}
    = CustomDomainConfigTypeProperty
        {certificateArn = Prelude.pure newValue, ..}