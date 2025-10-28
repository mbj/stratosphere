module Stratosphere.SES.MailManagerIngressPoint.IngressPointConfigurationProperty (
        IngressPointConfigurationProperty(..),
        mkIngressPointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressPointConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-ingresspointconfiguration.html>
    IngressPointConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-ingresspointconfiguration.html#cfn-ses-mailmanageringresspoint-ingresspointconfiguration-secretarn>
                                       secretArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-ingresspointconfiguration.html#cfn-ses-mailmanageringresspoint-ingresspointconfiguration-smtppassword>
                                       smtpPassword :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressPointConfigurationProperty ::
  IngressPointConfigurationProperty
mkIngressPointConfigurationProperty
  = IngressPointConfigurationProperty
      {haddock_workaround_ = (), secretArn = Prelude.Nothing,
       smtpPassword = Prelude.Nothing}
instance ToResourceProperties IngressPointConfigurationProperty where
  toResourceProperties IngressPointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerIngressPoint.IngressPointConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecretArn" Prelude.<$> secretArn,
                            (JSON..=) "SmtpPassword" Prelude.<$> smtpPassword])}
instance JSON.ToJSON IngressPointConfigurationProperty where
  toJSON IngressPointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecretArn" Prelude.<$> secretArn,
               (JSON..=) "SmtpPassword" Prelude.<$> smtpPassword]))
instance Property "SecretArn" IngressPointConfigurationProperty where
  type PropertyType "SecretArn" IngressPointConfigurationProperty = Value Prelude.Text
  set newValue IngressPointConfigurationProperty {..}
    = IngressPointConfigurationProperty
        {secretArn = Prelude.pure newValue, ..}
instance Property "SmtpPassword" IngressPointConfigurationProperty where
  type PropertyType "SmtpPassword" IngressPointConfigurationProperty = Value Prelude.Text
  set newValue IngressPointConfigurationProperty {..}
    = IngressPointConfigurationProperty
        {smtpPassword = Prelude.pure newValue, ..}